OUTPUT_ARCH("riscv")
ENTRY(_prog_start)

INCLUDE memory.lds

SECTIONS {
  .text.init : {
    KEEP(*(.text.init))
  } >bootrom_mem
  . = ALIGN(0x1000);
  .text : {
    *(.text*)
  } >bootrom_mem
  . = ALIGN(0x1000);
  .rodata : {
    *(.rodata*)
  } >bootrom_mem

  .data : {
    *(.data*)
  } >bootrom_mem

  .bss : {
    *(.bss*)
  } >memory_mem

  PROVIDE(_sp = ORIGIN(memory_mem) + LENGTH(memory_mem) - 8);
}
