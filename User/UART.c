/********************************** (C) COPYRIGHT *******************************
* File Name          : UART.C
* Description        : CDC data-path sync logic, WITH the physical UART2
*                       peripheral removed. Two things replace it:
*                         - App_CDC_ByteFromHost() : called once per byte the
*                           host sends down (the "download"/host->device path).
*                         - USB_CDC_Send()         : call this from anywhere in
*                           your own firmware to send bytes up to the host
*                           (the "upload"/device->host path). Blocking: doesn't
*                           return until the data has actually left the device.
*                       The busy flags / endpoint re-arm logic for the download
*                       path is untouched ！ that's what protects it from data
*                       loss/tearing, and none of it was ever UART-specific
*                       despite living in a file with "UART" in the name.
*******************************************************************************/

#include "UART.h"
#include <string.h>
#include <stddef.h>

/*******************************************************************************/
/* Variable Definition */

volatile CDC_CTL CDC;

__attribute__ ((aligned(4))) uint8_t  UART2_Tx_Buf[ UART_REV_BUFFLEN ];  /* host -> device ("download") staging buffer */

/*********************************************************************
 * @fn      UART2_ParaInit
 *
 * @brief   Reset CDC state/flags. Nothing here ever touched hardware ！
 *          unchanged from the original.
 *
 * @return  none
 */
void UART2_ParaInit( uint8_t mode )
{
    CDC.USB_Output_Ptr = 0;
    CDC.UploadPoint_Busy = 0;
    CDC.DownloadPoint_Busy = 1;

    if( mode )
    {
        CDC.Com_Cfg[ 0 ] = (uint8_t)( DEF_UARTx_BAUDRATE );
        CDC.Com_Cfg[ 1 ] = (uint8_t)( DEF_UARTx_BAUDRATE >> 8 );
        CDC.Com_Cfg[ 2 ] = (uint8_t)( DEF_UARTx_BAUDRATE >> 16 );
        CDC.Com_Cfg[ 3 ] = (uint8_t)( DEF_UARTx_BAUDRATE >> 24 );
        CDC.Com_Cfg[ 4 ] = DEF_UARTx_STOPBIT;
        CDC.Com_Cfg[ 5 ] = DEF_UARTx_PARITY;
        CDC.Com_Cfg[ 6 ] = DEF_UARTx_DATABIT;
        CDC.Com_Cfg[ 7 ] = DEF_UARTx_RX_TIMEOUT;
    }
}

/*********************************************************************
 * @fn      UART2_Init
 *
 * @brief   Originally configured UART2's GPIO/baud/FIFO/interrupt hardware.
 *          All of that is removed ！ no physical UART exists anymore.
 *          Kept only as a thin wrapper so callers (e.g. UART2_USB_Init)
 *          don't need to change. baudrate/stopbits/parity are accepted
 *          but intentionally unused now.
 *
 * @return  none
 */
void UART2_Init( uint8_t mode, uint32_t baudrate, uint8_t stopbits, uint8_t parity )
{
    (void)baudrate;
    (void)stopbits;
    (void)parity;

    UART2_ParaInit( mode );
}

/*********************************************************************
 * @fn      UART2_USB_Init
 *
 * @brief   Called from the USB ISR when the host sends a SET_LINE_CODING
 *          request (baud rate/format change). The original applied that
 *          config to real UART hardware; there's nothing to apply it to
 *          now, so that part is gone. What's kept is the part that
 *          actually matters for CDC correctness: re-arming the OUT
 *          endpoint so the host can keep sending data.
 *
 * @return  none
 */
void UART2_USB_Init( void )
{
    UART2_ParaInit( 0 );

    /* restart usb receive */
    R32_U2EP2_RX_DMA = (uint32_t)(uint8_t *)&UART2_Tx_Buf[ 0 ];
    R8_U2EP2_RX_CTRL &= ~USBHS_UEP_R_RES_MASK;
    R8_U2EP2_RX_CTRL |= USBHS_UEP_R_RES_ACK;
}

/*********************************************************************
 * @fn      App_CDC_ByteFromHost
 *
 * @brief   YOUR HOOK for the host->device ("download") path.
 *          Called once per byte, in order, exactly where UART2_SendString()
 *          used to physically transmit it. Put your command parser /
 *          state machine / whatever here instead.
 *
 * @return  none
 */
__attribute__((weak)) void App_CDC_ByteFromHost( uint8_t* b, const size_t len )
{
    (void)b; (void)len;
    /* default: does nothing. Override this in your own app code. */
}

/*********************************************************************
 * @fn      UART2_DataTx_Deal
 *
 * @brief   Host->device data path. Same flow-control skeleton as the
 *          original (busy flag, pointer wrap, re-arm timing) ！ only the
 *          one line that used to hit real UART hardware was swapped for
 *          the App_CDC_ByteFromHost() callback.
 *
 * @return  none
 */
__HIGH_CODE
void UART2_DataTx_Deal( void )
{
    if( CDC.USB_RecLen )
    {
        App_CDC_ByteFromHost(UART2_Tx_Buf, CDC.USB_RecLen);
        CDC.USB_RecLen = 0;
        // CDC.DownloadPoint_Busy = 1;
        R32_U2EP2_RX_DMA = (uint32_t)(uint8_t *)&UART2_Tx_Buf[ 0 ];
        R8_U2EP2_RX_CTRL = ( R8_U2EP2_RX_CTRL &~ USBHS_UEP_R_RES_MASK ) | USBHS_UEP_R_RES_ACK;
    }

    // if( CDC.DownloadPoint_Busy == 0 )
    // {
    //     if( CDC.USB_RecLen == 0 )
    //     {
    //         CDC.USB_Output_Ptr = 0;
    //         CDC.DownloadPoint_Busy = 1;
    //         R32_U2EP2_RX_DMA = (uint32_t)(uint8_t *)&UART2_Tx_Buf[ 0 ];
    //         R8_U2EP2_RX_CTRL = ( R8_U2EP2_RX_CTRL &~ USBHS_UEP_R_RES_MASK ) | USBHS_UEP_R_RES_ACK;
    //     }
    // }
}

/*********************************************************************
 * @fn      USB_CDC_Send
 *
 * @brief   Blocking bulk send, device -> host. Replaces the old
 *          UART2_DataRx_Deal()/UART2_Rx_Buf/timeout-flush mechanism
 *          entirely ！ no staging buffer, no partial-data timer. Splits
 *          into <= (USBHS_DevMaxPackLen - 1)-byte chunks (kept one byte
 *          under the max packet size on purpose: a full-size packet
 *          tells the host's CDC driver "more data may follow," so it
 *          waits for either a following short packet or a zero-length
 *          packet before it considers the transfer done. Capping every
 *          chunk below max size makes each one inherently "short," so
 *          the host recognizes each chunk as complete immediately ！
 *          same trick the original polled version used).
 *
 *          Blocks (busy-waits) until each chunk is queued, and again
 *          after the last chunk until the host has actually received it,
 *          so by the time this returns, `data` has fully left the device.
 *
 * @param   data - bytes to send
 * @param   len  - how many
 *
 * @return  number of bytes sent (== len, always, in this blocking version)
 */
 __HIGH_CODE
size_t USB_CDC_Send( const uint8_t *data, size_t len )
{
    size_t sent = 0;

    while( sent < len )
    {
        size_t chunk = len - sent;
        if( chunk > (size_t)(USBHS_DevMaxPackLen - 1) )
        {
            chunk = (size_t)(USBHS_DevMaxPackLen - 1);
        }

        while( CDC.UploadPoint_Busy ) { }   /* wait for the previous chunk to actually leave */

        memcpy( USBHS_EP2_Tx_Buf, data + sent, chunk );
        CDC.UploadPoint_Busy = 1;
        R16_U2EP2_T_LEN = (uint16_t)chunk;
        R8_U2EP2_TX_CTRL = (R8_U2EP2_TX_CTRL & ~USBHS_UEP_T_RES_MASK) | USBHS_UEP_T_RES_ACK;

        sent += chunk;
    }

    // while( CDC.UploadPoint_Busy ) { }   /* wait for the final chunk before returning */

    return sent;
}