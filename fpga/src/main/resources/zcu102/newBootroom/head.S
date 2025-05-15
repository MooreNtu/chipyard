// See LICENSE.Sifive for license details.
#include <platform.h>
#include <smp.h>
#include "common.h"
#include "encoding.h"
////////////////////////////
#if __riscv_xlen == 64
# define LREG ld
# define SREG sd
# define REGBYTES 8
#else
# define LREG lw
# define SREG sw
# define REGBYTES 4
#endif
  .section .text.init
  .option norvc
  .globl _prog_start
_prog_start:
  li sp, 0x800ffff0     # 初始化栈指针（根据 linker 定）
  call main             # 调用 main()，你写的 RVV demo
  j .                   # 不跳转，程序执行完后停住
