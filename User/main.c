/********************************** (C) COPYRIGHT *******************************
 * File Name          : main.c
 * Author             : WCH
 * Version            : V1.0.0
 * Date               : 2024/07/31
 * Description        : Main program body.
 *********************************************************************************
 * Copyright (c) 2024 Nanjing Qinheng Microelectronics Co., Ltd.
 * Attention: This software (modified or not) and binary are used for
 * microcontroller manufactured by Nanjing Qinheng Microelectronics.
 *******************************************************************************/

/*
 *@Note
 *Example routine to emulate a simulate USB-CDC Device, USE USART2(PA6/PA7);
 *Please note: This code uses the default serial port 1 for debugging,
 *if you need to modify the debugging serial port, please do not use USART2
 *
 * If the USB is set to high-speed, an external crystal oscillator is recommended for the clock source.
*/

#include "UART.h"
#include "CH58x_common.h"
#include "stdbool.h"
#include "CH58xBLE_LIB.h"
#include "HAL.h"

bool use_adc = true;
static char uart_rx_buf[1024];
static size_t uart_rx_length = 0;

static char local_tx_buf[512];
static inline bool process_command(const char* cmd_buf, const size_t length)
{
    if (strncmp("ch test", cmd_buf, 7) == 0 && length == 7)
    {
        const size_t len = sprintf(local_tx_buf, "Hello, World!\n");
        USB_CDC_Send((uint8_t*)local_tx_buf, len);
        return true;
    } 
    if (strncmp("ch pre ", cmd_buf, 7) == 0 && length > 7 && length < 17)
    {
        uint8_t val = 0;
        size_t params = sscanf(cmd_buf + 7, "%hhu", &val);
        if (params != 1)
        {
            USB_CDC_Send((uint8_t*)"ERROR\n", 6);
            return false;
        }
        PWMX_CLKCfg(val == 0? 1 : val);

        const uint32_t pwm_freq = GetSysClock() / ((uint32_t)(R32_PWM_REG_CYCLE & 0xffffU) * R8_PWM_CLOCK_DIV);
        size_t len = sprintf(local_tx_buf, "prescaler value is set to %u, pwm freq: %u\n", val, pwm_freq);
        USB_CDC_Send((uint8_t*)local_tx_buf, len);
        return true;
    }
    else if (strncmp("ch max ", cmd_buf, 7) == 0 && length > 7 && length < 17)
    {
        uint16_t val = 0;
        size_t params = sscanf(cmd_buf + 7, "%hu", &val);
        if (params != 1)
        {
            USB_CDC_Send((uint8_t*)"ERROR\n", 6);
            return false;
        }

        PWMX_16bit_CycleCfg(val);

        const uint32_t pwm_freq = GetSysClock() / ((uint32_t)(R32_PWM_REG_CYCLE & 0xffffU) * R8_PWM_CLOCK_DIV);
        const size_t len = sprintf(local_tx_buf, "Max cycle value is set to %u, pwm freq: %u\n", val, pwm_freq);
        USB_CDC_Send((uint8_t*)local_tx_buf, len);
        return true;
    }
    else if (strncmp("ch val ", cmd_buf, 7) == 0 && length > 7 && length < 17)
    {
        uint16_t val = 0; size_t len = 0;
        size_t params = sscanf(cmd_buf + 7, "%hu", &val);
        if (params != 1)
        {
            USB_CDC_Send((uint8_t*)"ERROR\n", 6);
            return false;
        }

        const uint16_t max = R32_PWM_REG_CYCLE & 0xffffU;
        if (val > max)
        {
            len += sprintf(local_tx_buf + len, "Input value is greater than max cycle\n");
            val = max;
        }
        PWMX_16bit_ACTOUT(CH_PWM4, val, High_Level, ENABLE);

        const uint32_t pwm_freq = GetSysClock() / ((uint32_t)(R32_PWM_REG_CYCLE & 0xffffU) * R8_PWM_CLOCK_DIV);
        len += sprintf(local_tx_buf + len, "Cycle value is set to %u, pwm freq: %lu\n", val, pwm_freq);
        USB_CDC_Send((uint8_t*)local_tx_buf, len);
        return true;
    }
    else if (strncmp("ch encr", cmd_buf, 7) == 0 && length == 7)
    {
        uint8_t key[17] = "Never Gonna Give";
        uint8_t test_data[16];
        uint8_t encr_data[16];
        for (int i = 0; i < 16; i++)
            test_data[i] = i;
        
        LL_Encrypt(key, test_data, encr_data);

        size_t len = sprintf(local_tx_buf, "Encrypt Test\n");
        len += sprintf(local_tx_buf + len, " - Plaintext: ");
        for (int i = 0; i < 16; i++)
            len += sprintf(local_tx_buf + len, "%02x ", test_data[i]);
        len += sprintf(local_tx_buf + len, "\n");
        USB_CDC_Send((uint8_t*)local_tx_buf, len);

        len = sprintf(local_tx_buf, " - Encrypted: ");
        for (int i = 0; i < 16; i++)
            len += sprintf(local_tx_buf + len, "%02x ", encr_data[i]);
        len += sprintf(local_tx_buf + len, "\n");
        USB_CDC_Send((uint8_t*)local_tx_buf, len);
        
        memset(test_data, 0, sizeof(test_data));
        LL_Decrypt(key, encr_data, test_data);

        len = sprintf(local_tx_buf, " - Decrypted: ");
        for (int i = 0; i < 16; i++)
            len += sprintf(local_tx_buf + len, "%02x ", test_data[i]);
        len += sprintf(local_tx_buf + len, "\n");
        USB_CDC_Send((uint8_t*)local_tx_buf, len);
    }
    return false;
}

static inline bool char_is_valid(const char ch)
{
    return (ch >= 32 && ch < 127) || (ch == '\t');
}


static inline void process_char(const char ch)
{
    switch (ch)
    {
        case '\b':
        {
            const size_t len = sprintf(local_tx_buf, "Cleared %u\n", uart_rx_length);
            USB_CDC_Send((uint8_t*)local_tx_buf, len);
            if (uart_rx_length == 0)
                break;
            uart_rx_length = 0;
            break;
        }
        case '\n':
        {
            if (uart_rx_length == 0)
                break;

            USB_CDC_Send((uint8_t*)"\n", 1);

            uart_rx_buf[uart_rx_length] = 0;
            process_command(uart_rx_buf, uart_rx_length);
            uart_rx_length = 0;
            break;
        }
        case '+':
        {
            const uint16_t max = R32_PWM_REG_CYCLE & 0xffffU;
            R16_PWM4_DATA = (R16_PWM4_DATA < max)? R16_PWM4_DATA + 1 : max;
            break;
        }
        case '-':
        {
            R16_PWM4_DATA = (R16_PWM4_DATA > 0)? R16_PWM4_DATA - 1 : 0;
            break;
        }
        default:
        {
            if (uart_rx_length < 1024 && char_is_valid(ch))
                uart_rx_buf[uart_rx_length++] = ch;
            USB_CDC_Send((uint8_t*)&ch, 1);
        }
    }
}

__HIGH_CODE
void App_CDC_ByteFromHost( uint8_t* b, const size_t len )
{
    for (int i = 0; i < len; i++)
        process_char(b[i]);
}

volatile int64_t ms_cnt = 0;

__INTERRUPT
__HIGH_CODE
void SysTick_Handler(void)
{
    SysTick->SR = 0;
    ms_cnt++;
}

static inline int64_t get_ms_cnt(void)
{
    uint32_t hi1, hi2, lo;
    do {
        hi1 = ((uint32_t*)&ms_cnt)[1];
        lo  = ((uint32_t*)&ms_cnt)[0];
        hi2 = ((uint32_t*)&ms_cnt)[1];
    } while (hi1 != hi2);
    return ((int64_t)hi1 << 32) | lo;
}

__attribute__((aligned(4))) uint32_t MEM_BUF[BLE_MEMHEAP_SIZE / 4];
/*********************************************************************
 * @fn      main
 *
 * @brief   Main program.
 *
 * @return  none
 */
int main(void)
{
    PWR_DCDCCfg(ENABLE);
    HSECFG_Capacitance(HSECap_18p);
    SetSysClock(SYSCLK_FREQ);
    GPIOA_ModeCfg(GPIO_Pin_All, GPIO_ModeIN_PU);
    GPIOB_ModeCfg(GPIO_Pin_All, GPIO_ModeIN_PU);

    GPIOA_ModeCfg(GPIO_Pin_12, GPIO_ModeOut_PP_20mA);
    PWMX_CLKCfg(250);
    PWMX_16bit_CycleCfg(63999);
    PWMX_16bit_ACTOUT(CH_PWM4, 63, High_Level, ENABLE);

    /* Usart2 init */
    UART2_Init( 1, DEF_UARTx_BAUDRATE, DEF_UARTx_STOPBIT, DEF_UARTx_PARITY );

    USBHS_Device_Init(ENABLE);
    PFIC_EnableIRQ( USB2_DEVICE_IRQn );

    SysTick_Config(32000);

    // somewhere before your first LL_Encrypt call:
    bleConfig_t cfg;
    tmos_memset(&cfg, 0, sizeof(bleConfig_t));
    cfg.MEMAddr = (uint32_t)MEM_BUF;
    cfg.MEMLen = (uint32_t)BLE_MEMHEAP_SIZE;
    cfg.BufMaxLen = (uint32_t)BLE_BUFF_MAX_LEN;   // check HAL/MCU.c or CONFIG.h for the real example's values
    cfg.BufNumber = (uint32_t)BLE_BUFF_NUM;
    cfg.TxNumEvent = (uint32_t)BLE_TX_NUM_EVENT;
    cfg.TxPower = (uint32_t)BLE_TX_POWER;
    cfg.ConnectNumber = 0;   // no connections needed just for AES
    cfg.srandCB = SYS_GetSysTickCnt;

    uint8_t err = BLE_LibInit(&cfg);
    if (err) { PRINT("LIB init error: %x\n", err); /* don't proceed to LL_Encrypt if this fails */ }

    while(1)
    {
        UART2_DataTx_Deal( );
        if (err)
        USB_CDC_Send("ERROR BLE\n", 10);
    }
}