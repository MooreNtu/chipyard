OUTPUT_ARCH("riscv")
ENTRY(_start)

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
  
  .data : {
    *(.data*)
  } >bootrom_mem

  .sdata : {
    __global_pointer$ = . + 0x800;
    *(.srodata.cst16) *(.srodata.cst8) *(.srodata.cst4) *(.srodata.cst2) *(.srodata*)
    *(.sdata .sdata.* .gnu.linkonce.s.*)
  } >bootrom_mem

  .sbss : {
    *(.sbss .sbss.* .gnu.linkonce.sb.*)
    *(.scommon)
  } >bootrom_mem

  .bss : {
    *(.bss*)
  } >memory_mem

  /* thread-local data segment */

  .tdata : {
    _tdata_begin = .;
    *(.tdata)
    _tdata_end = .;
  } >memory_mem

  .tbss :{
    *(.tbss)
    _tbss_end = .;
  } >memory_mem
  PROVIDE(_sp = ORIGIN(memory_mem) + LENGTH(memory_mem) - 8);
  _end = .;
}
