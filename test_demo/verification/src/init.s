.section .text.init
.align 2

.equ STACK_BASE_ADDR, 0x07f0
.equ CSR_TASK_NUM_X, 0x7c0
.equ CSR_TASK_NUM_Y, 0x7c1
.equ CSR_TASK_NUM_Z, 0x7c2

.globl _start
.weak schd_conv2d_k1
.weak schd_conv2d_k3
.weak conv3s1

# initialization of schdule code
_start:
    j conv3s1                   # jump to schd_conv2d_k3
    j _start                            # Reserved
    j _start                            # Reserved
    j _start                            # Reserved
    j _start                            # Reserved
    j _start                            # Reserved
    j _start                            # Reserved
    j _start                            # Reserved
    j _start                            # Reserved
    j _start                            # Reserved
    j _start                            # Reserved
    j _start                            # Reserved
    j _start                            # Reserved
    j _start                            # Reserved
    j _start                            # Reserved

# initial schd function
# get_csr:
#     csrr a0, CSR_TASK_NUM_X
