OUTPUT_ARCH( "riscv" )

ENTRY( _start )

MEMORY
{
    itcm  : ORIGIN = 0x80000000, LENGTH = 128K
    dtcm  : ORIGIN = 0x20020000, LENGTH = 128K
    macro_reg_size : ORIGIN = 0x400000000, LENGTH = 64
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
    .regsize            : { *(.regsize) } >macro_reg_size
}

