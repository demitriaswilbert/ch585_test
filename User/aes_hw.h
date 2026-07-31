#ifndef AES_HW_H
#define AES_HW_H

#include <stdint.h>

/* Reverse-engineered raw register interface (from ch32fun project), independent of
 * WCH's BLE library �� no CH58x_BLEInit()/RF_RoleInit()/TMOS required.
 * Some registers are of unknown purpose (marked below); this is the minimal
 * set needed for single-block AES-128 encrypt/decrypt. Confirmed working on
 * CH585/584/582/592/591 �� reportedly broken on CH570 specifically.
 */

#define AES_HW_BASE ((uint32_t)0x4000c300)

typedef struct {
    volatile uint32_t CFG;        /* bit0: start/busy, bit1: 0=encrypt 1=decrypt */
    volatile uint32_t STA;        /* not used by this driver */
    volatile uint32_t _reserved[4]; /* unknown purpose */
    volatile uint32_t data[4];    /* 128-bit input block; overwritten with output in place */
    volatile uint32_t key[4];     /* 128-bit key */
} AES_HW_Type;

#define AES_HW ((AES_HW_Type *) AES_HW_BASE)

/**
 * @param key  16 bytes, must be 4-byte aligned
 * @param in   16 bytes, must be 4-byte aligned
 * @param out  16 bytes, must be 4-byte aligned (may overlap `in`)
 * @param enc  1 = encrypt, 0 = decrypt
 */
static inline void AES_HW_Run( const uint32_t *key, const uint32_t *in, uint32_t *out, uint8_t enc )
{
    AES_HW->CFG = 0x100;              /* enable �� exact meaning undocumented, empirically required */
    __nop(); __nop(); __nop(); __nop(); // dont know, but wch's disassembled binary says so (libCH58xBLE.a(aes.o))
    AES_HW->CFG = enc ? 0 : 2;

    AES_HW->key[0] = key[0];
    AES_HW->key[1] = key[1];
    AES_HW->key[2] = key[2];
    AES_HW->key[3] = key[3];

    AES_HW->data[0] = in[0];
    AES_HW->data[1] = in[1];
    AES_HW->data[2] = in[2];
    AES_HW->data[3] = in[3];

    AES_HW->CFG |= 1;                 /* start */
    // while( AES_HW->CFG & 1 ) { }      /* wait for done (bit clears itself) */
    while( AES_HW->STA & 1 ) { }      /* wait for done (bit 0 of STA clears itself) (wch's disassembled) */

    out[0] = AES_HW->data[0];
    out[1] = AES_HW->data[1];
    out[2] = AES_HW->data[2];
    out[3] = AES_HW->data[3];
}

#endif /* AES_HW_H */