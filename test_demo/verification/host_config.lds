OUTPUT_ARCH( "riscv" )

ENTRY( _INIT0 )

MEMORY
{
    itcm  : ORIGIN = 0x80000000, LENGTH = 128K
    dtcm  : ORIGIN = 0x80020000, LENGTH = 128K
}

SECTIONS
{
    .text.init          : { *(.text.init) } >itcm
    .text               : { *(.text) } >itcm

    .rodata             : { *(.rodata) } >dtcm
    .bss                : { *(.bss) } >dtcm
    .common             : { *(.common) *(.comm) } >dtcm
    .data               : { *(.data) } >dtcm
    .stack              : { *(.stack) } >dtcm
}

