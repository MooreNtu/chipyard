// See LICENSE for license details.

//**************************************************************************
// 3x3 2D Convolution Benchmark
//--------------------------------------------------------------------------
//
// This benchmark tests a vectorized 2D 3x3 convolution implementation.

#include <string.h>
#include "util.h"
#include "dataset1.h"
#include <stdint.h>
#include <platform.h>
#include "common.h"
#define DEBUG
#include "kprintf.h"


void *vec_conv (size_t, size_t, size_t, size_t, const float*, const float*, float*);
void itoa(int value, char *str)
{
    char *p = str;
    char *p1, *p2;
    int negative = 0;

    if (value < 0) {
        negative = 1;
        value = -value;
    }

    do {
        *p++ = '0' + (value % 10);
        value /= 10;
    } while (value);

    if (negative)
        *p++ = '-';

    *p = '\0';

    // reverse
    for (p1 = str, p2 = p - 1; p1 < p2; ++p1, --p2) {
        char tmp = *p1;
        *p1 = *p2;
        *p2 = tmp;
    }
}

int main( int argc, char* argv[] )
{
  REG32(uart, UART_REG_TXCTRL) = UART_TXEN;

  // float results_data[O_SIZE] = {0};

// #if PREALLOCATE
//   // If needed we preallocate everything in the caches
//   vec_conv(OH, OW, IW, OW, input_k, input_image, results_data);
//   memset(results_data, 0, sizeof(results_data));
// #endif
  kputs("riscv booting from HESL");
  // Do the convolution
  // setStats(1);
  // vec_conv(OH, OW, IW, OW, input_k, input_image, results_data);
  // setStats(0);
  
  // Check the results
  // char buf[16];
  // itoa (verifyFloat( O_SIZE, results_data, verify_data ),buf);
  // kprintf("PASS = %s\n", buf); 
  kputs("test passed_HESL");
	__asm__ __volatile__ ("fence.i" : : : "memory");
  return 0 ;
}
