MEMORY
{
  bootrom_mem (rx) : ORIGIN = 0x20000, LENGTH = 0x20000
  memory_mem (rwx) : ORIGIN = 0x80000000, LENGTH = 0x40000000
}
