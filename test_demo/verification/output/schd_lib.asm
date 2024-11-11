
output/schd_lib.elf:	file format elf32-littleriscv
architecture: riscv32
start address: 0x80000000

Program Header:
    LOAD off    0x00001000 vaddr 0x80000000 paddr 0x80000000 align 2**12
         filesz 0x00000214 memsz 0x00000214 flags r-x
   STACK off    0x00000000 vaddr 0x00000000 paddr 0x00000000 align 2**64
         filesz 0x00000000 memsz 0x00000000 flags rw-
 UNKNOWN off    0x00001214 vaddr 0x00000000 paddr 0x00000000 align 2**0
         filesz 0x00000045 memsz 0x00000045 flags r--

Dynamic Section:

Sections:
Idx Name              Size     VMA      Type
  0                   00000000 00000000 
  1 .text.init        0000003c 80000000 TEXT
  2 .text             000001d8 8000003c TEXT
  3 .riscv.attributes 00000045 00000000 
  4 .comment          00000087 00000000 
  5 .symtab           000000e0 00000000 
  6 .shstrtab         00000047 00000000 
  7 .strtab           0000009c 00000000 

SYMBOL TABLE:
000007f0 l       *ABS*	00000000 STACK_BASE_ADDR
000007c0 l       *ABS*	00000000 CSR_TASK_NUM_X
000007c1 l       *ABS*	00000000 CSR_TASK_NUM_Y
000007c2 l       *ABS*	00000000 CSR_TASK_NUM_Z
00000000 l    df *ABS*	00000000 conv3s1_verify.c
800001f4 l       .text	00000000 .LBB0_7
80000138 l       .text	00000000 .LBB0_3
80000124 l       .text	00000000 .LBB0_2
80000144 l       .text	00000000 .LBB0_5
80000000 g       .text.init	00000000 _start
00000000  w      *UND*	00000000 schd_conv2d_k1
00000000  w      *UND*	00000000 schd_conv2d_k3
8000003c g     F .text	000001d8 conv3s1

Disassembly of section .text.init:

80000000 <_start>:
80000000: 6f 00 c0 03  	j	0x8000003c <conv3s1>
80000004: 6f f0 df ff  	j	0x80000000 <_start>
80000008: 6f f0 9f ff  	j	0x80000000 <_start>
8000000c: 6f f0 5f ff  	j	0x80000000 <_start>
80000010: 6f f0 1f ff  	j	0x80000000 <_start>
80000014: 6f f0 df fe  	j	0x80000000 <_start>
80000018: 6f f0 9f fe  	j	0x80000000 <_start>
8000001c: 6f f0 5f fe  	j	0x80000000 <_start>
80000020: 6f f0 1f fe  	j	0x80000000 <_start>
80000024: 6f f0 df fd  	j	0x80000000 <_start>
80000028: 6f f0 9f fd  	j	0x80000000 <_start>
8000002c: 6f f0 5f fd  	j	0x80000000 <_start>
80000030: 6f f0 1f fd  	j	0x80000000 <_start>
80000034: 6f f0 df fc  	j	0x80000000 <_start>
80000038: 6f f0 9f fc  	j	0x80000000 <_start>

Disassembly of section .text:

8000003c <conv3s1>:
8000003c: 13 01 01 ff  	addi	sp, sp, -16
80000040: 23 26 b1 00  	sw	a1, 12(sp)
80000044: 23 24 c1 00  	sw	a2, 8(sp)
80000048: 23 22 d1 00  	sw	a3, 4(sp)
8000004c: 23 20 f1 00  	sw	a5, 0(sp)
80000050: 83 25 c5 01  	lw	a1, 28(a0)
80000054: 13 86 f5 ff  	addi	a2, a1, -1
80000058: b7 05 02 20  	lui	a1, 131104
8000005c: 23 a2 c5 00  	sw	a2, 4(a1)
80000060: fb 60 00 00  	mco.movem0	 m0r1, m0r0
80000064: 03 26 c5 01  	lw	a2, 28(a0)
80000068: 13 06 f6 ff  	addi	a2, a2, -1
8000006c: 23 a4 c5 00  	sw	a2, 8(a1)
80000070: 7b 61 00 00  	mco.movem0	 m0r2, m0r0
80000074: 03 26 c5 01  	lw	a2, 28(a0)
80000078: 13 06 f6 ff  	addi	a2, a2, -1
8000007c: 23 a6 c5 00  	sw	a2, 12(a1)
80000080: fb 61 00 00  	mco.movem0	 m0r3, m0r0
80000084: 03 26 c5 01  	lw	a2, 28(a0)
80000088: 13 06 f6 ff  	addi	a2, a2, -1
8000008c: 23 a8 c5 00  	sw	a2, 16(a1)
80000090: 7b 62 00 00  	mco.movem0	 m0r4, m0r0
80000094: 03 26 05 02  	lw	a2, 32(a0)
80000098: 13 06 f6 ff  	addi	a2, a2, -1
8000009c: 23 aa c5 00  	sw	a2, 20(a1)
800000a0: fb 62 00 00  	mco.movem0	 m0r5, m0r0
800000a4: 03 26 45 01  	lw	a2, 20(a0)
800000a8: 13 06 f6 ff  	addi	a2, a2, -1
800000ac: 23 a0 c5 08  	sw	a2, 128(a1)
800000b0: 7b 60 00 02  	mco.movem0mr0	 m0ro0
800000b4: 03 26 85 01  	lw	a2, 24(a0)
800000b8: 13 06 f6 ff  	addi	a2, a2, -1
800000bc: 23 a0 c5 0a  	sw	a2, 160(a1)
800000c0: 7b 64 00 02  	mco.movem0mr0	 m0rp0
800000c4: 03 a6 05 08  	lw	a2, 128(a1)
800000c8: 93 06 c1 00  	addi	a3, sp, 12
800000cc: 7b c0 c6 02  	mco.loadm0	 a2, m0ro0, a3
800000d0: 03 a6 05 0a  	lw	a2, 160(a1)
800000d4: 93 06 81 00  	addi	a3, sp, 8
800000d8: 7b c4 c6 02  	mco.loadm0	 a2, m0rp0, a3
800000dc: 03 a6 c5 00  	lw	a2, 12(a1)
800000e0: 93 06 41 00  	addi	a3, sp, 4
800000e4: fb c1 c6 00  	mco.loadm0	 a2, m0r3, a3
800000e8: 03 26 c5 01  	lw	a2, 28(a0)
800000ec: 03 a7 05 01  	lw	a4, 16(a1)
800000f0: 13 16 26 00  	slli	a2, a2, 2
800000f4: b3 86 c6 00  	add	a3, a3, a2
800000f8: 7b c2 e6 00  	mco.loadm0	 a4, m0r4, a3
800000fc: 83 28 45 00  	lw	a7, 4(a0)
80000100: 63 8a 08 0e  	beqz	a7, 0x800001f4 <.LBB0_7>
80000104: 03 27 c5 01  	lw	a4, 28(a0)
80000108: 13 06 00 00  	li	a2, 0
8000010c: 13 17 27 00  	slli	a4, a4, 2
80000110: b3 86 e6 00  	add	a3, a3, a4
80000114: 13 07 45 03  	addi	a4, a0, 52
80000118: 93 07 01 00  	mv	a5, sp
8000011c: 13 08 00 00  	li	a6, 0
80000120: 6f 00 80 01  	j	0x80000138 <.LBB0_3>

80000124 <.LBB0_2>:
80000124: 03 23 85 00  	lw	t1, 8(a0)
80000128: 93 92 22 00  	slli	t0, t0, 2
8000012c: 33 06 c3 00  	add	a2, t1, a2
80000130: b3 87 57 00  	add	a5, a5, t0
80000134: 63 70 16 0d  	bgeu	a2, a7, 0x800001f4 <.LBB0_7>

80000138 <.LBB0_3>:
80000138: 93 88 f8 ff  	addi	a7, a7, -1
8000013c: 63 14 16 01  	bne	a2, a7, 0x80000144 <.LBB0_5>
80000140: 7b e2 00 00  	mco.movem0	 m0r4, m0r1

80000144 <.LBB0_5>:
80000144: 83 28 07 00  	lw	a7, 0(a4)
80000148: 83 22 17 00  	lw	t0, 1(a4)
8000014c: 7b 80 58 80  	mco.arg	 t0, 0, a7
80000150: 83 28 27 00  	lw	a7, 2(a4)
80000154: 83 22 37 00  	lw	t0, 3(a4)
80000158: fb 80 58 80  	mco.arg	 t0, 1, a7
8000015c: 83 28 47 00  	lw	a7, 4(a4)
80000160: 83 22 57 00  	lw	t0, 5(a4)
80000164: 7b 81 58 80  	mco.arg	 t0, 2, a7
80000168: 83 28 67 00  	lw	a7, 6(a4)
8000016c: 83 22 77 00  	lw	t0, 7(a4)
80000170: fb 81 58 80  	mco.arg	 t0, 3, a7
80000174: 83 28 87 00  	lw	a7, 8(a4)
80000178: 83 22 97 00  	lw	t0, 9(a4)
8000017c: 7b 82 58 80  	mco.arg	 t0, 4, a7
80000180: 83 28 a7 00  	lw	a7, 10(a4)
80000184: 83 22 b7 00  	lw	t0, 11(a4)
80000188: fb 82 58 80  	mco.arg	 t0, 5, a7
8000018c: 83 28 c7 00  	lw	a7, 12(a4)
80000190: 83 22 d7 00  	lw	t0, 13(a4)
80000194: 7b 83 58 80  	mco.arg	 t0, 6, a7
80000198: 83 28 e7 00  	lw	a7, 14(a4)
8000019c: 83 22 f7 00  	lw	t0, 15(a4)
800001a0: fb 83 58 80  	mco.arg	 t0, 7, a7
800001a4: 7b 10 80 8c  	mco.regm0	 m0rp0, 0, m0ro0
800001a8: fb 10 31 80  	mco.regm0	 m0r3, 1, m0r2
800001ac: 7b 11 02 80  	mco.regm0	 m0r0, 2, m0r4
800001b0: 83 a8 45 01  	lw	a7, 20(a1)
800001b4: fb 02 18 01  	mco.corem0	 a7, m0r5, a6
800001b8: 83 a8 45 01  	lw	a7, 20(a1)
800001bc: fb d2 17 01  	mco.storem0	 a7, m0r5, a5
800001c0: 83 22 05 02  	lw	t0, 32(a0)
800001c4: 7b e1 01 00  	mco.movem0	 m0r2, m0r3
800001c8: fb 61 02 00  	mco.movem0	 m0r3, m0r4
800001cc: 83 28 45 00  	lw	a7, 4(a0)
800001d0: 13 83 f8 ff  	addi	t1, a7, -1
800001d4: e3 78 66 f4  	bgeu	a2, t1, 0x80000124 <.LBB0_2>
800001d8: 83 a8 05 01  	lw	a7, 16(a1)
800001dc: 7b c2 16 01  	mco.loadm0	 a7, m0r4, a3
800001e0: 03 23 c5 01  	lw	t1, 28(a0)
800001e4: 83 28 45 00  	lw	a7, 4(a0)
800001e8: 13 13 23 00  	slli	t1, t1, 2
800001ec: b3 86 66 00  	add	a3, a3, t1
800001f0: 6f f0 5f f3  	j	0x80000124 <.LBB0_2>

800001f4 <.LBB0_7>:
800001f4: 13 05 00 00  	li	a0, 0
800001f8: fb 60 00 00  	mco.movem0	 m0r1, m0r0
800001fc: 7b 61 00 00  	mco.movem0	 m0r2, m0r0
80000200: fb 61 00 00  	mco.movem0	 m0r3, m0r0
80000204: 7b 62 00 00  	mco.movem0	 m0r4, m0r0
80000208: fb 62 00 00  	mco.movem0	 m0r5, m0r0
8000020c: 13 01 01 01  	addi	sp, sp, 16
80000210: 67 80 00 00  	ret

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
       0: 41 44        	<unknown>
       2: 00 00        	<unknown>
       4: 00 72        	<unknown>
       6: 69 73        	<unknown>
       8: 63 76 00 01  	bgeu	zero, a6, 0x14 <.riscv.attributes+0x14>
       c: 3a 00        	<unknown>
       e: 00 00        	<unknown>
      10: 04 10        	<unknown>
      12: 05 72        	<unknown>
      14: 76 33        	<unknown>
      16: 32 69        	<unknown>
      18: 32 70        	<unknown>
      1a: 31 5f        	<unknown>
      1c: 6d 32        	<unknown>
      1e: 70 30        	<unknown>
      20: 5f 61 32 70  	<unknown>
      24: 31 5f        	<unknown>
      26: 66 32        	<unknown>
      28: 70 32        	<unknown>
      2a: 5f 64 32 70  	<unknown>
      2e: 32 5f        	<unknown>
      30: 7a 69        	<unknown>
      32: 63 73 72 32  	bgeu	tp, t2, 0x358 <.riscv.attributes+0x358>
      36: 70 30        	<unknown>
      38: 5f 7a 69 66  	<unknown>
      3c: 65 6e        	<unknown>
      3e: 63 65 69 32  	bltu	s2, t1, 0x368 <.riscv.attributes+0x368>
      42: 70 30        	<unknown>
      44: 00           	<unknown>

Disassembly of section .comment:

00000000 <.comment>:
       0: 00 4c        	<unknown>
       2: 69 6e        	<unknown>
       4: 6b 65 72 3a  	<unknown>
       8: 20 4c        	<unknown>
       a: 4c 44        	<unknown>
       c: 20 31        	<unknown>
       e: 37 2e 30 2e  	lui	t3, 189186
      12: 30 00        	<unknown>
      14: 63 6c 61 6e  	bltu	sp, t1, 0x70c <.comment+0x70c>
      18: 67 20 76 65  	<unknown>
      1c: 72 73        	<unknown>
      1e: 69 6f        	<unknown>
      20: 6e 20        	<unknown>
      22: 31 37        	<unknown>
      24: 2e 30        	<unknown>
      26: 2e 30        	<unknown>
      28: 20 28        	<unknown>
      2a: 68 74        	<unknown>
      2c: 74 70        	<unknown>
      2e: 3a 2f        	<unknown>
      30: 2f 32 30 32  	<unknown>
      34: 2e 31        	<unknown>
      36: 31 37        	<unknown>
      38: 2e 35        	<unknown>
      3a: 36 2e        	<unknown>
      3c: 32 35        	<unknown>
      3e: 30 2f        	<unknown>
      40: 63 61 67 2d  	bltu	a4, s6, 0x302 <.comment+0x302>
      44: 74 6f        	<unknown>
      46: 6f 6c 2d 63  	jal	s8, 0xd6678 <.comment+0xd6678>
      4a: 68 61        	<unknown>
      4c: 69 6e        	<unknown>
      4e: 73 2f 68 70  	csrrs	t5, 1798, a6
      52: 75 5f        	<unknown>
      54: 6c 6c        	<unknown>
      56: 76 6d        	<unknown>
      58: 2e 67        	<unknown>
      5a: 69 74        	<unknown>
      5c: 20 32        	<unknown>
      5e: 34 30        	<unknown>
      60: 31 63        	<unknown>
      62: 35 64        	<unknown>
      64: 62 38        	<unknown>
      66: 30 61        	<unknown>
      68: 62 66        	<unknown>
      6a: 66 61        	<unknown>
      6c: 66 66        	<unknown>
      6e: 62 33        	<unknown>
      70: 66 64        	<unknown>
      72: 35 37        	<unknown>
      74: 65 63        	<unknown>
      76: 38 39        	<unknown>
      78: 66 64        	<unknown>
      7a: 66 31        	<unknown>
      7c: 32 64        	<unknown>
      7e: 37 64 65 32  	lui	s0, 206422
      82: 37 30 35 29  	lui	zero, 168787
      86: 00           	<unknown>

Disassembly of section .symtab:

00000000 <.symtab>:
		...
      10: 01 00        	<unknown>
      12: 00 00        	<unknown>
      14: f0 07        	<unknown>
		...
      1e: f1 ff        	<unknown>
      20: 11 00        	<unknown>
      22: 00 00        	<unknown>
      24: c0 07        	<unknown>
		...
      2e: f1 ff        	<unknown>
      30: 20 00        	<unknown>
      32: 00 00        	<unknown>
      34: c1 07        	<unknown>
		...
      3e: f1 ff        	<unknown>
      40: 2f 00 00 00  	<unknown>
      44: c2 07        	<unknown>
		...
      4e: f1 ff        	<unknown>
      50: 3e 00        	<unknown>
		...
      5a: 00 00        	<unknown>
      5c: 04 00        	<unknown>
      5e: f1 ff        	<unknown>
      60: 4f 00 00 00  	fnmadd.s	ft0, ft0, ft0, ft0, rne
      64: f4 01        	<unknown>
      66: 00 80        	<unknown>
      68: 00 00        	<unknown>
      6a: 00 00        	<unknown>
      6c: 00 00        	<unknown>
      6e: 02 00        	<unknown>
      70: 57 00 00 00  	<unknown>
      74: 38 01        	<unknown>
      76: 00 80        	<unknown>
      78: 00 00        	<unknown>
      7a: 00 00        	<unknown>
      7c: 00 00        	<unknown>
      7e: 02 00        	<unknown>
      80: 5f 00 00 00  	<unknown>
      84: 24 01        	<unknown>
      86: 00 80        	<unknown>
      88: 00 00        	<unknown>
      8a: 00 00        	<unknown>
      8c: 00 00        	<unknown>
      8e: 02 00        	<unknown>
      90: 67 00 00 00  	jr	zero
      94: 44 01        	<unknown>
      96: 00 80        	<unknown>
      98: 00 00        	<unknown>
      9a: 00 00        	<unknown>
      9c: 00 00        	<unknown>
      9e: 02 00        	<unknown>
      a0: 6f 00 00 00  	j	0xa0 <.symtab+0xa0>
      a4: 00 00        	<unknown>
      a6: 00 80        	<unknown>
      a8: 00 00        	<unknown>
      aa: 00 00        	<unknown>
      ac: 10 00        	<unknown>
      ae: 01 00        	<unknown>
      b0: 76 00        	<unknown>
		...
      ba: 00 00        	<unknown>
      bc: 20 00        	<unknown>
      be: 00 00        	<unknown>
      c0: 85 00        	<unknown>
		...
      ca: 00 00        	<unknown>
      cc: 20 00        	<unknown>
      ce: 00 00        	<unknown>
      d0: 94 00        	<unknown>
      d2: 00 00        	<unknown>
      d4: 3c 00        	<unknown>
      d6: 00 80        	<unknown>
      d8: d8 01        	<unknown>
      da: 00 00        	<unknown>
      dc: 12 00        	<unknown>
      de: 02 00        	<unknown>

Disassembly of section .shstrtab:

00000000 <.shstrtab>:
       0: 00 2e        	<unknown>
       2: 74 65        	<unknown>
       4: 78 74        	<unknown>
       6: 2e 69        	<unknown>
       8: 6e 69        	<unknown>
       a: 74 00        	<unknown>
       c: 2e 74        	<unknown>
       e: 65 78        	<unknown>
      10: 74 00        	<unknown>
      12: 2e 72        	<unknown>
      14: 69 73        	<unknown>
      16: 63 76 2e 61  	bgeu	t3, s2, 0x622 <.symtab+0x622>
      1a: 74 74        	<unknown>
      1c: 72 69        	<unknown>
      1e: 62 75        	<unknown>
      20: 74 65        	<unknown>
      22: 73 00 2e 63  	<unknown>
      26: 6f 6d 6d 65  	jal	s10, 0xd667c <.symtab+0xd667c>
      2a: 6e 74        	<unknown>
      2c: 00 2e        	<unknown>
      2e: 73 79 6d 74  	csrrci	s2, 1862, 26
      32: 61 62        	<unknown>
      34: 00 2e        	<unknown>
      36: 73 68 73 74  	csrrsi	a6, mseccfg, 6
      3a: 72 74        	<unknown>
      3c: 61 62        	<unknown>
      3e: 00 2e        	<unknown>
      40: 73 74 72 74  	csrrci	s0, mseccfg, 4
      44: 61 62        	<unknown>
      46: 00           	<unknown>

Disassembly of section .strtab:

00000000 <.strtab>:
       0: 00 53        	<unknown>
       2: 54 41        	<unknown>
       4: 43 4b 5f 42  	fmadd.d	fs6, ft10, ft5, fs0, rmm
       8: 41 53        	<unknown>
       a: 45 5f        	<unknown>
       c: 41 44        	<unknown>
       e: 44 52        	<unknown>
      10: 00 43        	<unknown>
      12: 53 52 5f 54  	<unknown>
      16: 41 53        	<unknown>
      18: 4b 5f 4e 55  	<unknown>
      1c: 4d 5f        	<unknown>
      1e: 58 00        	<unknown>
      20: 43 53 52 5f  	<unknown>
      24: 54 41        	<unknown>
      26: 53 4b 5f 4e  	<unknown>
      2a: 55 4d        	<unknown>
      2c: 5f 59 00 43  	<unknown>
      30: 53 52 5f 54  	<unknown>
      34: 41 53        	<unknown>
      36: 4b 5f 4e 55  	<unknown>
      3a: 4d 5f        	<unknown>
      3c: 5a 00        	<unknown>
      3e: 63 6f 6e 76  	bltu	t3, t1, 0x7bc <.symtab+0x7bc>
      42: 33 73 31 5f  	<unknown>
      46: 76 65        	<unknown>
      48: 72 69        	<unknown>
      4a: 66 79        	<unknown>
      4c: 2e 63        	<unknown>
      4e: 00 2e        	<unknown>
      50: 4c 42        	<unknown>
      52: 42 30        	<unknown>
      54: 5f 37 00 2e  	<unknown>
      58: 4c 42        	<unknown>
      5a: 42 30        	<unknown>
      5c: 5f 33 00 2e  	<unknown>
      60: 4c 42        	<unknown>
      62: 42 30        	<unknown>
      64: 5f 32 00 2e  	<unknown>
      68: 4c 42        	<unknown>
      6a: 42 30        	<unknown>
      6c: 5f 35 00 5f  	<unknown>
      70: 73 74 61 72  	csrrci	s0, mhpmevent6h, 2
      74: 74 00        	<unknown>
      76: 73 63 68 64  	csrrsi	t1, hviprio1, 16
      7a: 5f 63 6f 6e  	<unknown>
      7e: 76 32        	<unknown>
      80: 64 5f        	<unknown>
      82: 6b 31 00 73  	<unknown>
      86: 63 68 64 5f  	bltu	s0, s6, 0x676 <.symtab+0x676>
      8a: 63 6f 6e 76  	bltu	t3, t1, 0x808 <.symtab+0x808>
      8e: 32 64        	<unknown>
      90: 5f 6b 33 00  	<unknown>
      94: 63 6f 6e 76  	bltu	t3, t1, 0x812 <.symtab+0x812>
      98: 33 73 31 00  	and	t1, sp, gp
