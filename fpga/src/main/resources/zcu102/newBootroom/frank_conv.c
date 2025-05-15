// See LICENSE.Sifive for license details.
#include <stdint.h>

#include <platform.h>

#include "common.h"

#define DEBUG
#include "kprintf.h"


#ifndef TL_CLK
#error Must define TL_CLK
#endif

#define F_CLK 		(TL_CLK)

extern void vector_add(int *a, int *b, int *c, int n);

#define LEN 64

int a[LEN];
int b[LEN];
int c[LEN];



int main(void)
{
	REG32(uart, UART_REG_TXCTRL) = UART_TXEN;

	kputs("INIT");

	kputs("riscv booting from HESL"); //////////////frank add

     for (int i = 0; i < LEN; i++) {
        a[i] = i;
        b[i] = LEN - i;
    }

    kprintf("start running");

    vector_add(a, b, c, LEN);

    kprintf("Vector add result:\n");
    for (int i = 0; i < LEN; i++) {
        kprintf("c[%d] = %x\n", i, c[i]);
    }
  kputs("riscv end from HESL");
	__asm__ __volatile__ ("fence.i" : : : "memory");

	return 0;
}
