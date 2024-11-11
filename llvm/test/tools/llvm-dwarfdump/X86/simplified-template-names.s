# RUN: llvm-mc < %s -filetype obj -triple x86_64 -o - \
# RUN:   | llvm-dwarfdump --verify - | FileCheck %s

# Checking the LLVM side of cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp
# Compile that file with `-g -Xclang -gsimple-template-names=mangled -Xclang -debug-forward-template-params -S -std=c++20`
# to (re)generate this assembly file - while it might be slightly overkill in
# some ways, it seems small/simple enough to keep this as an exact match for
# that end to end test.

# CHECK: No errors.
	.text
	.file	"simplified_template_names.cpp"
	.file	0 "/usr/local/google/home/blaikie/dev/llvm/src" "cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp" md5 0x32ddf5ad86a2fc516a43ad9a2b034228
	.file	1 "/usr" "include/x86_64-linux-gnu/bits/types.h" md5 0x58b79843d97f4309eefa4aa722dac91e
	.file	2 "/usr" "include/x86_64-linux-gnu/bits/stdint-intn.h" md5 0xb26974ec56196748bbc399ee826d2a0e
	.file	3 "/usr" "lib/gcc/x86_64-linux-gnu/11/../../../../include/c++/11/cstdint"
	.file	4 "/usr" "include/stdint.h" md5 0x8e56ab3ccd56760d8ae9848ebf326071
	.file	5 "/usr" "include/x86_64-linux-gnu/bits/stdint-uintn.h" md5 0x3d2fbc5d847dd222c2fbd70457568436
	.globl	_Zli5_suffy                     # -- Begin function _Zli5_suffy
	.p2align	4, 0x90
	.type	_Zli5_suffy,@function
_Zli5_suffy:                            # @_Zli5_suffy
.Lfunc_begin0:
	.loc	0 142 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:142:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp0:
	.loc	0 142 44 prologue_end           # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:142:44
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	_Zli5_suffy, .Lfunc_end0-_Zli5_suffy
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin1:
	.loc	0 182 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:182:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
.Ltmp2:
	.loc	0 184 8 prologue_end            # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:184:8
	movb	.L__const.main.L(%rip), %al
	movb	%al, -16(%rbp)
	.loc	0 185 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:185:3
	callq	_Z2f1IJiEEvv
	.loc	0 186 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:186:3
	callq	_Z2f1IJfEEvv
	.loc	0 187 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:187:3
	callq	_Z2f1IJbEEvv
	.loc	0 188 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:188:3
	callq	_Z2f1IJdEEvv
	.loc	0 189 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:189:3
	callq	_Z2f1IJlEEvv
	.loc	0 190 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:190:3
	callq	_Z2f1IJsEEvv
	.loc	0 191 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:191:3
	callq	_Z2f1IJjEEvv
	.loc	0 192 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:192:3
	callq	_Z2f1IJyEEvv
	.loc	0 193 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:193:3
	callq	_Z2f1IJxEEvv
	.loc	0 194 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:194:3
	callq	_Z2f1IJ3udtEEvv
	.loc	0 195 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:195:3
	callq	_Z2f1IJN2ns3udtEEEvv
	.loc	0 196 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:196:3
	callq	_Z2f1IJPN2ns3udtEEEvv
	.loc	0 197 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:197:3
	callq	_Z2f1IJN2ns5inner3udtEEEvv
	.loc	0 198 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:198:3
	callq	_Z2f1IJ2t1IJiEEEEvv
	.loc	0 199 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:199:3
	callq	_Z2f1IJifEEvv
	.loc	0 200 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:200:3
	callq	_Z2f1IJPiEEvv
	.loc	0 201 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:201:3
	callq	_Z2f1IJRiEEvv
	.loc	0 202 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:202:3
	callq	_Z2f1IJOiEEvv
	.loc	0 203 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:203:3
	callq	_Z2f1IJKiEEvv
	.loc	0 204 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:204:3
	callq	_Z2f1IJA3_iEEvv
	.loc	0 205 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:205:3
	callq	_Z2f1IJvEEvv
	.loc	0 206 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:206:3
	callq	_Z2f1IJN11outer_class11inner_classEEEvv
	.loc	0 207 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:207:3
	callq	_Z2f1IJmEEvv
	.loc	0 208 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:208:3
	callq	_Z2f2ILb1ELi3EEvv
	.loc	0 209 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:209:3
	callq	_Z2f3IN2ns11EnumerationEJLS1_1ELS1_2EEEvv
	.loc	0 210 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:210:3
	callq	_Z2f3IN2ns16EnumerationClassEJLS1_1ELS1_2EEEvv
	.loc	0 211 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:211:3
	callq	_Z2f3IN2ns16EnumerationSmallEJLS1_255EEEvv
	.loc	0 212 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:212:3
	callq	_Z2f3IN2ns3$_0EJLS1_1ELS1_2EEEvv
	.loc	0 213 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:213:3
	callq	_Z2f3IN12_GLOBAL__N_19LocalEnumEJLS1_0EEEvv
	.loc	0 214 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:214:3
	callq	_Z2f3IPiJXadL_Z1iEEEEvv
	.loc	0 215 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:215:3
	callq	_Z2f3IPiJLS0_0EEEvv
	.loc	0 217 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:217:3
	callq	_Z2f3ImJLm1EEEvv
	.loc	0 218 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:218:3
	callq	_Z2f3IyJLy1EEEvv
	.loc	0 219 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:219:3
	callq	_Z2f3IlJLl1EEEvv
	.loc	0 220 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:220:3
	callq	_Z2f3IjJLj1EEEvv
	.loc	0 221 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:221:3
	callq	_Z2f3IsJLs1EEEvv
	.loc	0 222 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:222:3
	callq	_Z2f3IhJLh0EEEvv
	.loc	0 223 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:223:3
	callq	_Z2f3IaJLa0EEEvv
	.loc	0 224 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:224:3
	callq	_Z2f3ItJLt1ELt2EEEvv
	.loc	0 225 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:225:3
	callq	_Z2f3IcJLc0ELc1ELc6ELc7ELc13ELc14ELc31ELc32ELc33ELc127ELcn128EEEvv
	.loc	0 226 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:226:3
	callq	_Z2f3InJLn18446744073709551614EEEvv
	.loc	0 227 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:227:3
	callq	_Z2f4IjLj3EEvv
	.loc	0 228 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:228:3
	callq	_Z2f1IJ2t3IiLb0EEEEvv
	.loc	0 229 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:229:3
	callq	_Z2f1IJ2t3IS0_IiLb0EELb0EEEEvv
	.loc	0 230 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:230:3
	callq	_Z2f1IJZ4mainE3$_1EEvv
	.loc	0 232 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:232:3
	callq	_Z2f1IJ2t3IS0_IZ4mainE3$_1Lb0EELb0EEEEvv
	.loc	0 233 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:233:3
	callq	_Z2f1IJFifEEEvv
	.loc	0 234 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:234:3
	callq	_Z2f1IJFvzEEEvv
	.loc	0 235 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:235:3
	callq	_Z2f1IJFvizEEEvv
	.loc	0 236 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:236:3
	callq	_Z2f1IJRKiEEvv
	.loc	0 237 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:237:3
	callq	_Z2f1IJRPKiEEvv
	.loc	0 238 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:238:3
	callq	_Z2f1IJN12_GLOBAL__N_12t5EEEvv
	.loc	0 239 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:239:3
	callq	_Z2f1IJDnEEvv
	.loc	0 240 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:240:3
	callq	_Z2f1IJPlS0_EEvv
	.loc	0 241 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:241:3
	callq	_Z2f1IJPlP3udtEEvv
	.loc	0 242 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:242:3
	callq	_Z2f1IJKPvEEvv
	.loc	0 243 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:243:3
	callq	_Z2f1IJPKPKvEEvv
	.loc	0 244 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:244:3
	callq	_Z2f1IJFvvEEEvv
	.loc	0 245 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:245:3
	callq	_Z2f1IJPFvvEEEvv
	.loc	0 246 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:246:3
	callq	_Z2f1IJPZ4mainE3$_1EEvv
	.loc	0 247 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:247:3
	callq	_Z2f1IJZ4mainE3$_2EEvv
	.loc	0 248 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:248:3
	callq	_Z2f1IJPZ4mainE3$_2EEvv
	.loc	0 249 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:249:3
	callq	_Z2f5IJ2t1IJiEEEiEvv
	.loc	0 250 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:250:3
	callq	_Z2f5IJEiEvv
	.loc	0 251 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:251:3
	callq	_Z2f6I2t1IJiEEJEEvv
	.loc	0 252 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:252:3
	callq	_Z2f1IJEEvv
	.loc	0 253 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:253:3
	callq	_Z2f1IJPKvS1_EEvv
	.loc	0 254 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:254:3
	callq	_Z2f1IJP2t1IJPiEEEEvv
	.loc	0 255 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:255:3
	callq	_Z2f1IJA_PiEEvv
	.loc	0 257 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:257:6
	leaq	-40(%rbp), %rdi
	movl	$1, %esi
	callq	_ZN2t6lsIiEEvi
	.loc	0 258 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:258:6
	leaq	-40(%rbp), %rdi
	movl	$1, %esi
	callq	_ZN2t6ltIiEEvi
	.loc	0 259 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:259:6
	leaq	-40(%rbp), %rdi
	movl	$1, %esi
	callq	_ZN2t6leIiEEvi
	.loc	0 260 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:260:6
	leaq	-40(%rbp), %rdi
	callq	_ZN2t6cvP2t1IJfEEIiEEv
	.loc	0 261 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:261:6
	leaq	-40(%rbp), %rdi
	movl	$3, %esi
	callq	_ZN2t6miIiEEvi
	.loc	0 262 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:262:6
	leaq	-40(%rbp), %rdi
	movl	$3, %esi
	callq	_ZN2t6mlIiEEvi
	.loc	0 263 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:263:6
	leaq	-40(%rbp), %rdi
	movl	$3, %esi
	callq	_ZN2t6dvIiEEvi
	.loc	0 264 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:264:6
	leaq	-40(%rbp), %rdi
	movl	$3, %esi
	callq	_ZN2t6rmIiEEvi
	.loc	0 265 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:265:6
	leaq	-40(%rbp), %rdi
	movl	$3, %esi
	callq	_ZN2t6eoIiEEvi
	.loc	0 266 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:266:6
	leaq	-40(%rbp), %rdi
	movl	$3, %esi
	callq	_ZN2t6anIiEEvi
	.loc	0 267 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:267:6
	leaq	-40(%rbp), %rdi
	movl	$3, %esi
	callq	_ZN2t6orIiEEvi
	.loc	0 268 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:268:6
	leaq	-40(%rbp), %rdi
	callq	_ZN2t6coIiEEvv
	.loc	0 269 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:269:6
	leaq	-40(%rbp), %rdi
	callq	_ZN2t6ntIiEEvv
	.loc	0 270 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:270:6
	leaq	-40(%rbp), %rdi
	movl	$3, %esi
	callq	_ZN2t6aSIiEEvi
	.loc	0 271 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:271:6
	leaq	-40(%rbp), %rdi
	movl	$3, %esi
	callq	_ZN2t6gtIiEEvi
	.loc	0 272 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:272:6
	leaq	-40(%rbp), %rdi
	movl	$3, %esi
	callq	_ZN2t6cmIiEEvi
	.loc	0 273 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:273:6
	leaq	-40(%rbp), %rdi
	callq	_ZN2t6clIiEEvv
	.loc	0 274 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:274:6
	leaq	-40(%rbp), %rdi
	movl	$3, %esi
	callq	_ZN2t6ixIiEEvi
	.loc	0 275 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:275:6
	leaq	-40(%rbp), %rdi
	movl	$3, %esi
	callq	_ZN2t6ssIiEEvi
	.loc	0 276 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:276:3
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	_ZN2t6nwIiEEPvmT_
	.loc	0 277 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:277:3
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	_ZN2t6naIiEEPvmT_
	.loc	0 278 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:278:3
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	_ZN2t6dlIiEEvPvT_
	.loc	0 279 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:279:3
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%esi, %esi
	callq	_ZN2t6daIiEEvPvT_
	.loc	0 280 6                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:280:6
	leaq	-40(%rbp), %rdi
	callq	_ZN2t6awIiEEiv
	.loc	0 281 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:281:3
	movl	$42, %edi
	callq	_Zli5_suffy
	.loc	0 283 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:283:3
	callq	_Z2f1IJZ4mainE2t7EEvv
	.loc	0 284 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:284:3
	callq	_Z2f1IJRA3_iEEvv
	.loc	0 285 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:285:3
	callq	_Z2f1IJPA3_iEEvv
	.loc	0 286 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:286:3
	callq	_Z2f7I2t1Evv
	.loc	0 287 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:287:3
	callq	_Z2f8I2t1iEvv
	.loc	0 289 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:289:3
	callq	_ZN2ns8ttp_userINS_5inner3ttpEEEvv
	.loc	0 290 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:290:3
	callq	_Z2f1IJPiPDnEEvv
	.loc	0 292 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:292:3
	callq	_Z2f1IJ2t7IiEEEvv
	.loc	0 293 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:293:3
	callq	_Z2f7IN2ns3inl2t9EEvv
	.loc	0 294 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:294:3
	callq	_Z2f1IJU7_AtomiciEEvv
	.loc	0 295 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:295:3
	callq	_Z2f1IJilVcEEvv
	.loc	0 296 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:296:3
	callq	_Z2f1IJDv2_iEEvv
	.loc	0 297 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:297:3
	callq	_Z2f1IJVKPiEEvv
	.loc	0 298 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:298:3
	callq	_Z2f1IJVKvEEvv
	.loc	0 299 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:299:3
	callq	_Z2f1IJ2t1IJZ4mainE3$_1EEEEvv
	.loc	0 300 7                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:300:7
	leaq	-56(%rbp), %rdi
	callq	_ZN3t10C2IvEEv
	.loc	0 301 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:301:3
	callq	_Z2f1IJM3udtKFvvEEEvv
	.loc	0 302 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:302:3
	callq	_Z2f1IJM3udtVFvvREEEvv
	.loc	0 303 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:303:3
	callq	_Z2f1IJM3udtVKFvvOEEEvv
	.loc	0 304 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:304:3
	callq	_Z2f9IiEPFvvEv
	.loc	0 305 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:305:3
	callq	_Z2f1IJKPFvvEEEvv
	.loc	0 306 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:306:3
	callq	_Z2f1IJRA1_KcEEvv
	.loc	0 307 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:307:3
	callq	_Z2f1IJKFvvREEEvv
	.loc	0 308 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:308:3
	callq	_Z2f1IJVFvvOEEEvv
	.loc	0 309 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:309:3
	callq	_Z2f1IJVKFvvEEEvv
	.loc	0 310 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:310:3
	callq	_Z2f1IJA1_KPiEEvv
	.loc	0 311 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:311:3
	callq	_Z2f1IJRA1_KPiEEvv
	.loc	0 312 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:312:3
	callq	_Z2f1IJRKM3udtFvvEEEvv
	.loc	0 313 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:313:3
	callq	_Z2f1IJFPFvfEiEEEvv
	.loc	0 314 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:314:3
	callq	_Z2f1IJA1_2t1IJiEEEEvv
	.loc	0 315 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:315:3
	callq	_Z2f1IJPDoFvvEEEvv
	.loc	0 316 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:316:3
	callq	_Z2f1IJFvZ4mainE3$_2EEEvv
	.loc	0 318 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:318:3
	callq	_Z2f1IJFvZ4mainE2t8Z4mainE3$_2EEEvv
	.loc	0 319 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:319:3
	callq	_Z2f1IJFvZ4mainE2t8EEEvv
	.loc	0 320 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:320:3
	callq	_Z19operator_not_reallyIiEvv
	.loc	0 322 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:322:3
	callq	_Z2f1IJDB3_EEvv
	.loc	0 323 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:323:3
	callq	_Z2f1IJKDU5_EEvv
	.loc	0 324 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:324:3
	callq	_Z2f1IJFv2t1IJEES1_EEEvv
	.loc	0 325 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:325:3
	callq	_Z2f1IJM2t1IJEEiEEvv
	.loc	0 327 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:327:3
	callq	_Z2f1IJU9swiftcallFvvEEEvv
	.loc	0 328 1                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:328:1
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp3:
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJiEEvv,"axG",@progbits,_Z2f1IJiEEvv,comdat
	.weak	_Z2f1IJiEEvv                    # -- Begin function _Z2f1IJiEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJiEEvv,@function
_Z2f1IJiEEvv:                           # @_Z2f1IJiEEvv
.Lfunc_begin2:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp4:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp5:
.Lfunc_end2:
	.size	_Z2f1IJiEEvv, .Lfunc_end2-_Z2f1IJiEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJfEEvv,"axG",@progbits,_Z2f1IJfEEvv,comdat
	.weak	_Z2f1IJfEEvv                    # -- Begin function _Z2f1IJfEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJfEEvv,@function
_Z2f1IJfEEvv:                           # @_Z2f1IJfEEvv
.Lfunc_begin3:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp6:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp7:
.Lfunc_end3:
	.size	_Z2f1IJfEEvv, .Lfunc_end3-_Z2f1IJfEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJbEEvv,"axG",@progbits,_Z2f1IJbEEvv,comdat
	.weak	_Z2f1IJbEEvv                    # -- Begin function _Z2f1IJbEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJbEEvv,@function
_Z2f1IJbEEvv:                           # @_Z2f1IJbEEvv
.Lfunc_begin4:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp8:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end4:
	.size	_Z2f1IJbEEvv, .Lfunc_end4-_Z2f1IJbEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJdEEvv,"axG",@progbits,_Z2f1IJdEEvv,comdat
	.weak	_Z2f1IJdEEvv                    # -- Begin function _Z2f1IJdEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJdEEvv,@function
_Z2f1IJdEEvv:                           # @_Z2f1IJdEEvv
.Lfunc_begin5:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp10:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end5:
	.size	_Z2f1IJdEEvv, .Lfunc_end5-_Z2f1IJdEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJlEEvv,"axG",@progbits,_Z2f1IJlEEvv,comdat
	.weak	_Z2f1IJlEEvv                    # -- Begin function _Z2f1IJlEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJlEEvv,@function
_Z2f1IJlEEvv:                           # @_Z2f1IJlEEvv
.Lfunc_begin6:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp12:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp13:
.Lfunc_end6:
	.size	_Z2f1IJlEEvv, .Lfunc_end6-_Z2f1IJlEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJsEEvv,"axG",@progbits,_Z2f1IJsEEvv,comdat
	.weak	_Z2f1IJsEEvv                    # -- Begin function _Z2f1IJsEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJsEEvv,@function
_Z2f1IJsEEvv:                           # @_Z2f1IJsEEvv
.Lfunc_begin7:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp14:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp15:
.Lfunc_end7:
	.size	_Z2f1IJsEEvv, .Lfunc_end7-_Z2f1IJsEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJjEEvv,"axG",@progbits,_Z2f1IJjEEvv,comdat
	.weak	_Z2f1IJjEEvv                    # -- Begin function _Z2f1IJjEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJjEEvv,@function
_Z2f1IJjEEvv:                           # @_Z2f1IJjEEvv
.Lfunc_begin8:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp16:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp17:
.Lfunc_end8:
	.size	_Z2f1IJjEEvv, .Lfunc_end8-_Z2f1IJjEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJyEEvv,"axG",@progbits,_Z2f1IJyEEvv,comdat
	.weak	_Z2f1IJyEEvv                    # -- Begin function _Z2f1IJyEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJyEEvv,@function
_Z2f1IJyEEvv:                           # @_Z2f1IJyEEvv
.Lfunc_begin9:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp18:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp19:
.Lfunc_end9:
	.size	_Z2f1IJyEEvv, .Lfunc_end9-_Z2f1IJyEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJxEEvv,"axG",@progbits,_Z2f1IJxEEvv,comdat
	.weak	_Z2f1IJxEEvv                    # -- Begin function _Z2f1IJxEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJxEEvv,@function
_Z2f1IJxEEvv:                           # @_Z2f1IJxEEvv
.Lfunc_begin10:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp20:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp21:
.Lfunc_end10:
	.size	_Z2f1IJxEEvv, .Lfunc_end10-_Z2f1IJxEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJ3udtEEvv,"axG",@progbits,_Z2f1IJ3udtEEvv,comdat
	.weak	_Z2f1IJ3udtEEvv                 # -- Begin function _Z2f1IJ3udtEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJ3udtEEvv,@function
_Z2f1IJ3udtEEvv:                        # @_Z2f1IJ3udtEEvv
.Lfunc_begin11:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp22:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp23:
.Lfunc_end11:
	.size	_Z2f1IJ3udtEEvv, .Lfunc_end11-_Z2f1IJ3udtEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJN2ns3udtEEEvv,"axG",@progbits,_Z2f1IJN2ns3udtEEEvv,comdat
	.weak	_Z2f1IJN2ns3udtEEEvv            # -- Begin function _Z2f1IJN2ns3udtEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJN2ns3udtEEEvv,@function
_Z2f1IJN2ns3udtEEEvv:                   # @_Z2f1IJN2ns3udtEEEvv
.Lfunc_begin12:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp24:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp25:
.Lfunc_end12:
	.size	_Z2f1IJN2ns3udtEEEvv, .Lfunc_end12-_Z2f1IJN2ns3udtEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJPN2ns3udtEEEvv,"axG",@progbits,_Z2f1IJPN2ns3udtEEEvv,comdat
	.weak	_Z2f1IJPN2ns3udtEEEvv           # -- Begin function _Z2f1IJPN2ns3udtEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJPN2ns3udtEEEvv,@function
_Z2f1IJPN2ns3udtEEEvv:                  # @_Z2f1IJPN2ns3udtEEEvv
.Lfunc_begin13:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp26:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp27:
.Lfunc_end13:
	.size	_Z2f1IJPN2ns3udtEEEvv, .Lfunc_end13-_Z2f1IJPN2ns3udtEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJN2ns5inner3udtEEEvv,"axG",@progbits,_Z2f1IJN2ns5inner3udtEEEvv,comdat
	.weak	_Z2f1IJN2ns5inner3udtEEEvv      # -- Begin function _Z2f1IJN2ns5inner3udtEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJN2ns5inner3udtEEEvv,@function
_Z2f1IJN2ns5inner3udtEEEvv:             # @_Z2f1IJN2ns5inner3udtEEEvv
.Lfunc_begin14:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp28:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp29:
.Lfunc_end14:
	.size	_Z2f1IJN2ns5inner3udtEEEvv, .Lfunc_end14-_Z2f1IJN2ns5inner3udtEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJ2t1IJiEEEEvv,"axG",@progbits,_Z2f1IJ2t1IJiEEEEvv,comdat
	.weak	_Z2f1IJ2t1IJiEEEEvv             # -- Begin function _Z2f1IJ2t1IJiEEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJ2t1IJiEEEEvv,@function
_Z2f1IJ2t1IJiEEEEvv:                    # @_Z2f1IJ2t1IJiEEEEvv
.Lfunc_begin15:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp30:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp31:
.Lfunc_end15:
	.size	_Z2f1IJ2t1IJiEEEEvv, .Lfunc_end15-_Z2f1IJ2t1IJiEEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJifEEvv,"axG",@progbits,_Z2f1IJifEEvv,comdat
	.weak	_Z2f1IJifEEvv                   # -- Begin function _Z2f1IJifEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJifEEvv,@function
_Z2f1IJifEEvv:                          # @_Z2f1IJifEEvv
.Lfunc_begin16:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp32:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp33:
.Lfunc_end16:
	.size	_Z2f1IJifEEvv, .Lfunc_end16-_Z2f1IJifEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJPiEEvv,"axG",@progbits,_Z2f1IJPiEEvv,comdat
	.weak	_Z2f1IJPiEEvv                   # -- Begin function _Z2f1IJPiEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJPiEEvv,@function
_Z2f1IJPiEEvv:                          # @_Z2f1IJPiEEvv
.Lfunc_begin17:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp34:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp35:
.Lfunc_end17:
	.size	_Z2f1IJPiEEvv, .Lfunc_end17-_Z2f1IJPiEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJRiEEvv,"axG",@progbits,_Z2f1IJRiEEvv,comdat
	.weak	_Z2f1IJRiEEvv                   # -- Begin function _Z2f1IJRiEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJRiEEvv,@function
_Z2f1IJRiEEvv:                          # @_Z2f1IJRiEEvv
.Lfunc_begin18:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp36:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp37:
.Lfunc_end18:
	.size	_Z2f1IJRiEEvv, .Lfunc_end18-_Z2f1IJRiEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJOiEEvv,"axG",@progbits,_Z2f1IJOiEEvv,comdat
	.weak	_Z2f1IJOiEEvv                   # -- Begin function _Z2f1IJOiEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJOiEEvv,@function
_Z2f1IJOiEEvv:                          # @_Z2f1IJOiEEvv
.Lfunc_begin19:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp38:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp39:
.Lfunc_end19:
	.size	_Z2f1IJOiEEvv, .Lfunc_end19-_Z2f1IJOiEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJKiEEvv,"axG",@progbits,_Z2f1IJKiEEvv,comdat
	.weak	_Z2f1IJKiEEvv                   # -- Begin function _Z2f1IJKiEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJKiEEvv,@function
_Z2f1IJKiEEvv:                          # @_Z2f1IJKiEEvv
.Lfunc_begin20:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp40:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp41:
.Lfunc_end20:
	.size	_Z2f1IJKiEEvv, .Lfunc_end20-_Z2f1IJKiEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJA3_iEEvv,"axG",@progbits,_Z2f1IJA3_iEEvv,comdat
	.weak	_Z2f1IJA3_iEEvv                 # -- Begin function _Z2f1IJA3_iEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJA3_iEEvv,@function
_Z2f1IJA3_iEEvv:                        # @_Z2f1IJA3_iEEvv
.Lfunc_begin21:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp42:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp43:
.Lfunc_end21:
	.size	_Z2f1IJA3_iEEvv, .Lfunc_end21-_Z2f1IJA3_iEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJvEEvv,"axG",@progbits,_Z2f1IJvEEvv,comdat
	.weak	_Z2f1IJvEEvv                    # -- Begin function _Z2f1IJvEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJvEEvv,@function
_Z2f1IJvEEvv:                           # @_Z2f1IJvEEvv
.Lfunc_begin22:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp44:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp45:
.Lfunc_end22:
	.size	_Z2f1IJvEEvv, .Lfunc_end22-_Z2f1IJvEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJN11outer_class11inner_classEEEvv,"axG",@progbits,_Z2f1IJN11outer_class11inner_classEEEvv,comdat
	.weak	_Z2f1IJN11outer_class11inner_classEEEvv # -- Begin function _Z2f1IJN11outer_class11inner_classEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJN11outer_class11inner_classEEEvv,@function
_Z2f1IJN11outer_class11inner_classEEEvv: # @_Z2f1IJN11outer_class11inner_classEEEvv
.Lfunc_begin23:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp46:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp47:
.Lfunc_end23:
	.size	_Z2f1IJN11outer_class11inner_classEEEvv, .Lfunc_end23-_Z2f1IJN11outer_class11inner_classEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJmEEvv,"axG",@progbits,_Z2f1IJmEEvv,comdat
	.weak	_Z2f1IJmEEvv                    # -- Begin function _Z2f1IJmEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJmEEvv,@function
_Z2f1IJmEEvv:                           # @_Z2f1IJmEEvv
.Lfunc_begin24:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp48:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp49:
.Lfunc_end24:
	.size	_Z2f1IJmEEvv, .Lfunc_end24-_Z2f1IJmEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f2ILb1ELi3EEvv,"axG",@progbits,_Z2f2ILb1ELi3EEvv,comdat
	.weak	_Z2f2ILb1ELi3EEvv               # -- Begin function _Z2f2ILb1ELi3EEvv
	.p2align	4, 0x90
	.type	_Z2f2ILb1ELi3EEvv,@function
_Z2f2ILb1ELi3EEvv:                      # @_Z2f2ILb1ELi3EEvv
.Lfunc_begin25:
	.loc	0 38 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:38:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp50:
	.loc	0 39 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:39:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp51:
.Lfunc_end25:
	.size	_Z2f2ILb1ELi3EEvv, .Lfunc_end25-_Z2f2ILb1ELi3EEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f3IN2ns11EnumerationEJLS1_1ELS1_2EEEvv,"axG",@progbits,_Z2f3IN2ns11EnumerationEJLS1_1ELS1_2EEEvv,comdat
	.weak	_Z2f3IN2ns11EnumerationEJLS1_1ELS1_2EEEvv # -- Begin function _Z2f3IN2ns11EnumerationEJLS1_1ELS1_2EEEvv
	.p2align	4, 0x90
	.type	_Z2f3IN2ns11EnumerationEJLS1_1ELS1_2EEEvv,@function
_Z2f3IN2ns11EnumerationEJLS1_1ELS1_2EEEvv: # @_Z2f3IN2ns11EnumerationEJLS1_1ELS1_2EEEvv
.Lfunc_begin26:
	.loc	0 41 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:41:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp52:
	.loc	0 42 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:42:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp53:
.Lfunc_end26:
	.size	_Z2f3IN2ns11EnumerationEJLS1_1ELS1_2EEEvv, .Lfunc_end26-_Z2f3IN2ns11EnumerationEJLS1_1ELS1_2EEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f3IN2ns16EnumerationClassEJLS1_1ELS1_2EEEvv,"axG",@progbits,_Z2f3IN2ns16EnumerationClassEJLS1_1ELS1_2EEEvv,comdat
	.weak	_Z2f3IN2ns16EnumerationClassEJLS1_1ELS1_2EEEvv # -- Begin function _Z2f3IN2ns16EnumerationClassEJLS1_1ELS1_2EEEvv
	.p2align	4, 0x90
	.type	_Z2f3IN2ns16EnumerationClassEJLS1_1ELS1_2EEEvv,@function
_Z2f3IN2ns16EnumerationClassEJLS1_1ELS1_2EEEvv: # @_Z2f3IN2ns16EnumerationClassEJLS1_1ELS1_2EEEvv
.Lfunc_begin27:
	.loc	0 41 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:41:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp54:
	.loc	0 42 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:42:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp55:
.Lfunc_end27:
	.size	_Z2f3IN2ns16EnumerationClassEJLS1_1ELS1_2EEEvv, .Lfunc_end27-_Z2f3IN2ns16EnumerationClassEJLS1_1ELS1_2EEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f3IN2ns16EnumerationSmallEJLS1_255EEEvv,"axG",@progbits,_Z2f3IN2ns16EnumerationSmallEJLS1_255EEEvv,comdat
	.weak	_Z2f3IN2ns16EnumerationSmallEJLS1_255EEEvv # -- Begin function _Z2f3IN2ns16EnumerationSmallEJLS1_255EEEvv
	.p2align	4, 0x90
	.type	_Z2f3IN2ns16EnumerationSmallEJLS1_255EEEvv,@function
_Z2f3IN2ns16EnumerationSmallEJLS1_255EEEvv: # @_Z2f3IN2ns16EnumerationSmallEJLS1_255EEEvv
.Lfunc_begin28:
	.loc	0 41 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:41:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp56:
	.loc	0 42 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:42:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp57:
.Lfunc_end28:
	.size	_Z2f3IN2ns16EnumerationSmallEJLS1_255EEEvv, .Lfunc_end28-_Z2f3IN2ns16EnumerationSmallEJLS1_255EEEvv
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _Z2f3IN2ns3$_0EJLS1_1ELS1_2EEEvv
	.type	_Z2f3IN2ns3$_0EJLS1_1ELS1_2EEEvv,@function
_Z2f3IN2ns3$_0EJLS1_1ELS1_2EEEvv:       # @"_Z2f3IN2ns3$_0EJLS1_1ELS1_2EEEvv"
.Lfunc_begin29:
	.loc	0 41 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:41:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp58:
	.loc	0 42 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:42:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp59:
.Lfunc_end29:
	.size	_Z2f3IN2ns3$_0EJLS1_1ELS1_2EEEvv, .Lfunc_end29-_Z2f3IN2ns3$_0EJLS1_1ELS1_2EEEvv
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _Z2f3IN12_GLOBAL__N_19LocalEnumEJLS1_0EEEvv
	.type	_Z2f3IN12_GLOBAL__N_19LocalEnumEJLS1_0EEEvv,@function
_Z2f3IN12_GLOBAL__N_19LocalEnumEJLS1_0EEEvv: # @_Z2f3IN12_GLOBAL__N_19LocalEnumEJLS1_0EEEvv
.Lfunc_begin30:
	.loc	0 41 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:41:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp60:
	.loc	0 42 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:42:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp61:
.Lfunc_end30:
	.size	_Z2f3IN12_GLOBAL__N_19LocalEnumEJLS1_0EEEvv, .Lfunc_end30-_Z2f3IN12_GLOBAL__N_19LocalEnumEJLS1_0EEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f3IPiJXadL_Z1iEEEEvv,"axG",@progbits,_Z2f3IPiJXadL_Z1iEEEEvv,comdat
	.weak	_Z2f3IPiJXadL_Z1iEEEEvv         # -- Begin function _Z2f3IPiJXadL_Z1iEEEEvv
	.p2align	4, 0x90
	.type	_Z2f3IPiJXadL_Z1iEEEEvv,@function
_Z2f3IPiJXadL_Z1iEEEEvv:                # @_Z2f3IPiJXadL_Z1iEEEEvv
.Lfunc_begin31:
	.loc	0 41 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:41:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp62:
	.loc	0 42 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:42:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp63:
.Lfunc_end31:
	.size	_Z2f3IPiJXadL_Z1iEEEEvv, .Lfunc_end31-_Z2f3IPiJXadL_Z1iEEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f3IPiJLS0_0EEEvv,"axG",@progbits,_Z2f3IPiJLS0_0EEEvv,comdat
	.weak	_Z2f3IPiJLS0_0EEEvv             # -- Begin function _Z2f3IPiJLS0_0EEEvv
	.p2align	4, 0x90
	.type	_Z2f3IPiJLS0_0EEEvv,@function
_Z2f3IPiJLS0_0EEEvv:                    # @_Z2f3IPiJLS0_0EEEvv
.Lfunc_begin32:
	.loc	0 41 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:41:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp64:
	.loc	0 42 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:42:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp65:
.Lfunc_end32:
	.size	_Z2f3IPiJLS0_0EEEvv, .Lfunc_end32-_Z2f3IPiJLS0_0EEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f3ImJLm1EEEvv,"axG",@progbits,_Z2f3ImJLm1EEEvv,comdat
	.weak	_Z2f3ImJLm1EEEvv                # -- Begin function _Z2f3ImJLm1EEEvv
	.p2align	4, 0x90
	.type	_Z2f3ImJLm1EEEvv,@function
_Z2f3ImJLm1EEEvv:                       # @_Z2f3ImJLm1EEEvv
.Lfunc_begin33:
	.loc	0 41 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:41:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp66:
	.loc	0 42 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:42:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp67:
.Lfunc_end33:
	.size	_Z2f3ImJLm1EEEvv, .Lfunc_end33-_Z2f3ImJLm1EEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f3IyJLy1EEEvv,"axG",@progbits,_Z2f3IyJLy1EEEvv,comdat
	.weak	_Z2f3IyJLy1EEEvv                # -- Begin function _Z2f3IyJLy1EEEvv
	.p2align	4, 0x90
	.type	_Z2f3IyJLy1EEEvv,@function
_Z2f3IyJLy1EEEvv:                       # @_Z2f3IyJLy1EEEvv
.Lfunc_begin34:
	.loc	0 41 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:41:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp68:
	.loc	0 42 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:42:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp69:
.Lfunc_end34:
	.size	_Z2f3IyJLy1EEEvv, .Lfunc_end34-_Z2f3IyJLy1EEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f3IlJLl1EEEvv,"axG",@progbits,_Z2f3IlJLl1EEEvv,comdat
	.weak	_Z2f3IlJLl1EEEvv                # -- Begin function _Z2f3IlJLl1EEEvv
	.p2align	4, 0x90
	.type	_Z2f3IlJLl1EEEvv,@function
_Z2f3IlJLl1EEEvv:                       # @_Z2f3IlJLl1EEEvv
.Lfunc_begin35:
	.loc	0 41 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:41:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp70:
	.loc	0 42 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:42:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp71:
.Lfunc_end35:
	.size	_Z2f3IlJLl1EEEvv, .Lfunc_end35-_Z2f3IlJLl1EEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f3IjJLj1EEEvv,"axG",@progbits,_Z2f3IjJLj1EEEvv,comdat
	.weak	_Z2f3IjJLj1EEEvv                # -- Begin function _Z2f3IjJLj1EEEvv
	.p2align	4, 0x90
	.type	_Z2f3IjJLj1EEEvv,@function
_Z2f3IjJLj1EEEvv:                       # @_Z2f3IjJLj1EEEvv
.Lfunc_begin36:
	.loc	0 41 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:41:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp72:
	.loc	0 42 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:42:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp73:
.Lfunc_end36:
	.size	_Z2f3IjJLj1EEEvv, .Lfunc_end36-_Z2f3IjJLj1EEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f3IsJLs1EEEvv,"axG",@progbits,_Z2f3IsJLs1EEEvv,comdat
	.weak	_Z2f3IsJLs1EEEvv                # -- Begin function _Z2f3IsJLs1EEEvv
	.p2align	4, 0x90
	.type	_Z2f3IsJLs1EEEvv,@function
_Z2f3IsJLs1EEEvv:                       # @_Z2f3IsJLs1EEEvv
.Lfunc_begin37:
	.loc	0 41 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:41:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp74:
	.loc	0 42 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:42:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp75:
.Lfunc_end37:
	.size	_Z2f3IsJLs1EEEvv, .Lfunc_end37-_Z2f3IsJLs1EEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f3IhJLh0EEEvv,"axG",@progbits,_Z2f3IhJLh0EEEvv,comdat
	.weak	_Z2f3IhJLh0EEEvv                # -- Begin function _Z2f3IhJLh0EEEvv
	.p2align	4, 0x90
	.type	_Z2f3IhJLh0EEEvv,@function
_Z2f3IhJLh0EEEvv:                       # @_Z2f3IhJLh0EEEvv
.Lfunc_begin38:
	.loc	0 41 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:41:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp76:
	.loc	0 42 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:42:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp77:
.Lfunc_end38:
	.size	_Z2f3IhJLh0EEEvv, .Lfunc_end38-_Z2f3IhJLh0EEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f3IaJLa0EEEvv,"axG",@progbits,_Z2f3IaJLa0EEEvv,comdat
	.weak	_Z2f3IaJLa0EEEvv                # -- Begin function _Z2f3IaJLa0EEEvv
	.p2align	4, 0x90
	.type	_Z2f3IaJLa0EEEvv,@function
_Z2f3IaJLa0EEEvv:                       # @_Z2f3IaJLa0EEEvv
.Lfunc_begin39:
	.loc	0 41 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:41:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp78:
	.loc	0 42 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:42:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp79:
.Lfunc_end39:
	.size	_Z2f3IaJLa0EEEvv, .Lfunc_end39-_Z2f3IaJLa0EEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f3ItJLt1ELt2EEEvv,"axG",@progbits,_Z2f3ItJLt1ELt2EEEvv,comdat
	.weak	_Z2f3ItJLt1ELt2EEEvv            # -- Begin function _Z2f3ItJLt1ELt2EEEvv
	.p2align	4, 0x90
	.type	_Z2f3ItJLt1ELt2EEEvv,@function
_Z2f3ItJLt1ELt2EEEvv:                   # @_Z2f3ItJLt1ELt2EEEvv
.Lfunc_begin40:
	.loc	0 41 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:41:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp80:
	.loc	0 42 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:42:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp81:
.Lfunc_end40:
	.size	_Z2f3ItJLt1ELt2EEEvv, .Lfunc_end40-_Z2f3ItJLt1ELt2EEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f3IcJLc0ELc1ELc6ELc7ELc13ELc14ELc31ELc32ELc33ELc127ELcn128EEEvv,"axG",@progbits,_Z2f3IcJLc0ELc1ELc6ELc7ELc13ELc14ELc31ELc32ELc33ELc127ELcn128EEEvv,comdat
	.weak	_Z2f3IcJLc0ELc1ELc6ELc7ELc13ELc14ELc31ELc32ELc33ELc127ELcn128EEEvv # -- Begin function _Z2f3IcJLc0ELc1ELc6ELc7ELc13ELc14ELc31ELc32ELc33ELc127ELcn128EEEvv
	.p2align	4, 0x90
	.type	_Z2f3IcJLc0ELc1ELc6ELc7ELc13ELc14ELc31ELc32ELc33ELc127ELcn128EEEvv,@function
_Z2f3IcJLc0ELc1ELc6ELc7ELc13ELc14ELc31ELc32ELc33ELc127ELcn128EEEvv: # @_Z2f3IcJLc0ELc1ELc6ELc7ELc13ELc14ELc31ELc32ELc33ELc127ELcn128EEEvv
.Lfunc_begin41:
	.loc	0 41 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:41:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp82:
	.loc	0 42 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:42:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp83:
.Lfunc_end41:
	.size	_Z2f3IcJLc0ELc1ELc6ELc7ELc13ELc14ELc31ELc32ELc33ELc127ELcn128EEEvv, .Lfunc_end41-_Z2f3IcJLc0ELc1ELc6ELc7ELc13ELc14ELc31ELc32ELc33ELc127ELcn128EEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f3InJLn18446744073709551614EEEvv,"axG",@progbits,_Z2f3InJLn18446744073709551614EEEvv,comdat
	.weak	_Z2f3InJLn18446744073709551614EEEvv # -- Begin function _Z2f3InJLn18446744073709551614EEEvv
	.p2align	4, 0x90
	.type	_Z2f3InJLn18446744073709551614EEEvv,@function
_Z2f3InJLn18446744073709551614EEEvv:    # @_Z2f3InJLn18446744073709551614EEEvv
.Lfunc_begin42:
	.loc	0 41 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:41:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp84:
	.loc	0 42 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:42:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp85:
.Lfunc_end42:
	.size	_Z2f3InJLn18446744073709551614EEEvv, .Lfunc_end42-_Z2f3InJLn18446744073709551614EEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f4IjLj3EEvv,"axG",@progbits,_Z2f4IjLj3EEvv,comdat
	.weak	_Z2f4IjLj3EEvv                  # -- Begin function _Z2f4IjLj3EEvv
	.p2align	4, 0x90
	.type	_Z2f4IjLj3EEvv,@function
_Z2f4IjLj3EEvv:                         # @_Z2f4IjLj3EEvv
.Lfunc_begin43:
	.loc	0 44 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:44:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp86:
	.loc	0 45 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:45:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp87:
.Lfunc_end43:
	.size	_Z2f4IjLj3EEvv, .Lfunc_end43-_Z2f4IjLj3EEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJ2t3IiLb0EEEEvv,"axG",@progbits,_Z2f1IJ2t3IiLb0EEEEvv,comdat
	.weak	_Z2f1IJ2t3IiLb0EEEEvv           # -- Begin function _Z2f1IJ2t3IiLb0EEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJ2t3IiLb0EEEEvv,@function
_Z2f1IJ2t3IiLb0EEEEvv:                  # @_Z2f1IJ2t3IiLb0EEEEvv
.Lfunc_begin44:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp88:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp89:
.Lfunc_end44:
	.size	_Z2f1IJ2t3IiLb0EEEEvv, .Lfunc_end44-_Z2f1IJ2t3IiLb0EEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJ2t3IS0_IiLb0EELb0EEEEvv,"axG",@progbits,_Z2f1IJ2t3IS0_IiLb0EELb0EEEEvv,comdat
	.weak	_Z2f1IJ2t3IS0_IiLb0EELb0EEEEvv  # -- Begin function _Z2f1IJ2t3IS0_IiLb0EELb0EEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJ2t3IS0_IiLb0EELb0EEEEvv,@function
_Z2f1IJ2t3IS0_IiLb0EELb0EEEEvv:         # @_Z2f1IJ2t3IS0_IiLb0EELb0EEEEvv
.Lfunc_begin45:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp90:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp91:
.Lfunc_end45:
	.size	_Z2f1IJ2t3IS0_IiLb0EELb0EEEEvv, .Lfunc_end45-_Z2f1IJ2t3IS0_IiLb0EELb0EEEEvv
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _Z2f1IJZ4mainE3$_1EEvv
	.type	_Z2f1IJZ4mainE3$_1EEvv,@function
_Z2f1IJZ4mainE3$_1EEvv:                 # @"_Z2f1IJZ4mainE3$_1EEvv"
.Lfunc_begin46:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp92:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp93:
.Lfunc_end46:
	.size	_Z2f1IJZ4mainE3$_1EEvv, .Lfunc_end46-_Z2f1IJZ4mainE3$_1EEvv
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _Z2f1IJ2t3IS0_IZ4mainE3$_1Lb0EELb0EEEEvv
	.type	_Z2f1IJ2t3IS0_IZ4mainE3$_1Lb0EELb0EEEEvv,@function
_Z2f1IJ2t3IS0_IZ4mainE3$_1Lb0EELb0EEEEvv: # @"_Z2f1IJ2t3IS0_IZ4mainE3$_1Lb0EELb0EEEEvv"
.Lfunc_begin47:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp94:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp95:
.Lfunc_end47:
	.size	_Z2f1IJ2t3IS0_IZ4mainE3$_1Lb0EELb0EEEEvv, .Lfunc_end47-_Z2f1IJ2t3IS0_IZ4mainE3$_1Lb0EELb0EEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJFifEEEvv,"axG",@progbits,_Z2f1IJFifEEEvv,comdat
	.weak	_Z2f1IJFifEEEvv                 # -- Begin function _Z2f1IJFifEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJFifEEEvv,@function
_Z2f1IJFifEEEvv:                        # @_Z2f1IJFifEEEvv
.Lfunc_begin48:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp96:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp97:
.Lfunc_end48:
	.size	_Z2f1IJFifEEEvv, .Lfunc_end48-_Z2f1IJFifEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJFvzEEEvv,"axG",@progbits,_Z2f1IJFvzEEEvv,comdat
	.weak	_Z2f1IJFvzEEEvv                 # -- Begin function _Z2f1IJFvzEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJFvzEEEvv,@function
_Z2f1IJFvzEEEvv:                        # @_Z2f1IJFvzEEEvv
.Lfunc_begin49:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp98:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp99:
.Lfunc_end49:
	.size	_Z2f1IJFvzEEEvv, .Lfunc_end49-_Z2f1IJFvzEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJFvizEEEvv,"axG",@progbits,_Z2f1IJFvizEEEvv,comdat
	.weak	_Z2f1IJFvizEEEvv                # -- Begin function _Z2f1IJFvizEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJFvizEEEvv,@function
_Z2f1IJFvizEEEvv:                       # @_Z2f1IJFvizEEEvv
.Lfunc_begin50:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp100:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp101:
.Lfunc_end50:
	.size	_Z2f1IJFvizEEEvv, .Lfunc_end50-_Z2f1IJFvizEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJRKiEEvv,"axG",@progbits,_Z2f1IJRKiEEvv,comdat
	.weak	_Z2f1IJRKiEEvv                  # -- Begin function _Z2f1IJRKiEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJRKiEEvv,@function
_Z2f1IJRKiEEvv:                         # @_Z2f1IJRKiEEvv
.Lfunc_begin51:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp102:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp103:
.Lfunc_end51:
	.size	_Z2f1IJRKiEEvv, .Lfunc_end51-_Z2f1IJRKiEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJRPKiEEvv,"axG",@progbits,_Z2f1IJRPKiEEvv,comdat
	.weak	_Z2f1IJRPKiEEvv                 # -- Begin function _Z2f1IJRPKiEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJRPKiEEvv,@function
_Z2f1IJRPKiEEvv:                        # @_Z2f1IJRPKiEEvv
.Lfunc_begin52:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp104:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp105:
.Lfunc_end52:
	.size	_Z2f1IJRPKiEEvv, .Lfunc_end52-_Z2f1IJRPKiEEvv
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _Z2f1IJN12_GLOBAL__N_12t5EEEvv
	.type	_Z2f1IJN12_GLOBAL__N_12t5EEEvv,@function
_Z2f1IJN12_GLOBAL__N_12t5EEEvv:         # @_Z2f1IJN12_GLOBAL__N_12t5EEEvv
.Lfunc_begin53:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp106:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp107:
.Lfunc_end53:
	.size	_Z2f1IJN12_GLOBAL__N_12t5EEEvv, .Lfunc_end53-_Z2f1IJN12_GLOBAL__N_12t5EEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJDnEEvv,"axG",@progbits,_Z2f1IJDnEEvv,comdat
	.weak	_Z2f1IJDnEEvv                   # -- Begin function _Z2f1IJDnEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJDnEEvv,@function
_Z2f1IJDnEEvv:                          # @_Z2f1IJDnEEvv
.Lfunc_begin54:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp108:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp109:
.Lfunc_end54:
	.size	_Z2f1IJDnEEvv, .Lfunc_end54-_Z2f1IJDnEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJPlS0_EEvv,"axG",@progbits,_Z2f1IJPlS0_EEvv,comdat
	.weak	_Z2f1IJPlS0_EEvv                # -- Begin function _Z2f1IJPlS0_EEvv
	.p2align	4, 0x90
	.type	_Z2f1IJPlS0_EEvv,@function
_Z2f1IJPlS0_EEvv:                       # @_Z2f1IJPlS0_EEvv
.Lfunc_begin55:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp110:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp111:
.Lfunc_end55:
	.size	_Z2f1IJPlS0_EEvv, .Lfunc_end55-_Z2f1IJPlS0_EEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJPlP3udtEEvv,"axG",@progbits,_Z2f1IJPlP3udtEEvv,comdat
	.weak	_Z2f1IJPlP3udtEEvv              # -- Begin function _Z2f1IJPlP3udtEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJPlP3udtEEvv,@function
_Z2f1IJPlP3udtEEvv:                     # @_Z2f1IJPlP3udtEEvv
.Lfunc_begin56:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp112:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp113:
.Lfunc_end56:
	.size	_Z2f1IJPlP3udtEEvv, .Lfunc_end56-_Z2f1IJPlP3udtEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJKPvEEvv,"axG",@progbits,_Z2f1IJKPvEEvv,comdat
	.weak	_Z2f1IJKPvEEvv                  # -- Begin function _Z2f1IJKPvEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJKPvEEvv,@function
_Z2f1IJKPvEEvv:                         # @_Z2f1IJKPvEEvv
.Lfunc_begin57:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp114:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp115:
.Lfunc_end57:
	.size	_Z2f1IJKPvEEvv, .Lfunc_end57-_Z2f1IJKPvEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJPKPKvEEvv,"axG",@progbits,_Z2f1IJPKPKvEEvv,comdat
	.weak	_Z2f1IJPKPKvEEvv                # -- Begin function _Z2f1IJPKPKvEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJPKPKvEEvv,@function
_Z2f1IJPKPKvEEvv:                       # @_Z2f1IJPKPKvEEvv
.Lfunc_begin58:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp116:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp117:
.Lfunc_end58:
	.size	_Z2f1IJPKPKvEEvv, .Lfunc_end58-_Z2f1IJPKPKvEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJFvvEEEvv,"axG",@progbits,_Z2f1IJFvvEEEvv,comdat
	.weak	_Z2f1IJFvvEEEvv                 # -- Begin function _Z2f1IJFvvEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJFvvEEEvv,@function
_Z2f1IJFvvEEEvv:                        # @_Z2f1IJFvvEEEvv
.Lfunc_begin59:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp118:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp119:
.Lfunc_end59:
	.size	_Z2f1IJFvvEEEvv, .Lfunc_end59-_Z2f1IJFvvEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJPFvvEEEvv,"axG",@progbits,_Z2f1IJPFvvEEEvv,comdat
	.weak	_Z2f1IJPFvvEEEvv                # -- Begin function _Z2f1IJPFvvEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJPFvvEEEvv,@function
_Z2f1IJPFvvEEEvv:                       # @_Z2f1IJPFvvEEEvv
.Lfunc_begin60:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp120:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp121:
.Lfunc_end60:
	.size	_Z2f1IJPFvvEEEvv, .Lfunc_end60-_Z2f1IJPFvvEEEvv
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _Z2f1IJPZ4mainE3$_1EEvv
	.type	_Z2f1IJPZ4mainE3$_1EEvv,@function
_Z2f1IJPZ4mainE3$_1EEvv:                # @"_Z2f1IJPZ4mainE3$_1EEvv"
.Lfunc_begin61:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp122:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp123:
.Lfunc_end61:
	.size	_Z2f1IJPZ4mainE3$_1EEvv, .Lfunc_end61-_Z2f1IJPZ4mainE3$_1EEvv
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _Z2f1IJZ4mainE3$_2EEvv
	.type	_Z2f1IJZ4mainE3$_2EEvv,@function
_Z2f1IJZ4mainE3$_2EEvv:                 # @"_Z2f1IJZ4mainE3$_2EEvv"
.Lfunc_begin62:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp124:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp125:
.Lfunc_end62:
	.size	_Z2f1IJZ4mainE3$_2EEvv, .Lfunc_end62-_Z2f1IJZ4mainE3$_2EEvv
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _Z2f1IJPZ4mainE3$_2EEvv
	.type	_Z2f1IJPZ4mainE3$_2EEvv,@function
_Z2f1IJPZ4mainE3$_2EEvv:                # @"_Z2f1IJPZ4mainE3$_2EEvv"
.Lfunc_begin63:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp126:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp127:
.Lfunc_end63:
	.size	_Z2f1IJPZ4mainE3$_2EEvv, .Lfunc_end63-_Z2f1IJPZ4mainE3$_2EEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f5IJ2t1IJiEEEiEvv,"axG",@progbits,_Z2f5IJ2t1IJiEEEiEvv,comdat
	.weak	_Z2f5IJ2t1IJiEEEiEvv            # -- Begin function _Z2f5IJ2t1IJiEEEiEvv
	.p2align	4, 0x90
	.type	_Z2f5IJ2t1IJiEEEiEvv,@function
_Z2f5IJ2t1IJiEEEiEvv:                   # @_Z2f5IJ2t1IJiEEEiEvv
.Lfunc_begin64:
	.loc	0 62 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:62:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp128:
	.loc	0 62 13 prologue_end            # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:62:13
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp129:
.Lfunc_end64:
	.size	_Z2f5IJ2t1IJiEEEiEvv, .Lfunc_end64-_Z2f5IJ2t1IJiEEEiEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f5IJEiEvv,"axG",@progbits,_Z2f5IJEiEvv,comdat
	.weak	_Z2f5IJEiEvv                    # -- Begin function _Z2f5IJEiEvv
	.p2align	4, 0x90
	.type	_Z2f5IJEiEvv,@function
_Z2f5IJEiEvv:                           # @_Z2f5IJEiEvv
.Lfunc_begin65:
	.loc	0 62 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:62:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp130:
	.loc	0 62 13 prologue_end            # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:62:13
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp131:
.Lfunc_end65:
	.size	_Z2f5IJEiEvv, .Lfunc_end65-_Z2f5IJEiEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f6I2t1IJiEEJEEvv,"axG",@progbits,_Z2f6I2t1IJiEEJEEvv,comdat
	.weak	_Z2f6I2t1IJiEEJEEvv             # -- Begin function _Z2f6I2t1IJiEEJEEvv
	.p2align	4, 0x90
	.type	_Z2f6I2t1IJiEEJEEvv,@function
_Z2f6I2t1IJiEEJEEvv:                    # @_Z2f6I2t1IJiEEJEEvv
.Lfunc_begin66:
	.loc	0 64 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:64:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp132:
	.loc	0 64 13 prologue_end            # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:64:13
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp133:
.Lfunc_end66:
	.size	_Z2f6I2t1IJiEEJEEvv, .Lfunc_end66-_Z2f6I2t1IJiEEJEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJEEvv,"axG",@progbits,_Z2f1IJEEvv,comdat
	.weak	_Z2f1IJEEvv                     # -- Begin function _Z2f1IJEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJEEvv,@function
_Z2f1IJEEvv:                            # @_Z2f1IJEEvv
.Lfunc_begin67:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp134:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp135:
.Lfunc_end67:
	.size	_Z2f1IJEEvv, .Lfunc_end67-_Z2f1IJEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJPKvS1_EEvv,"axG",@progbits,_Z2f1IJPKvS1_EEvv,comdat
	.weak	_Z2f1IJPKvS1_EEvv               # -- Begin function _Z2f1IJPKvS1_EEvv
	.p2align	4, 0x90
	.type	_Z2f1IJPKvS1_EEvv,@function
_Z2f1IJPKvS1_EEvv:                      # @_Z2f1IJPKvS1_EEvv
.Lfunc_begin68:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp136:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp137:
.Lfunc_end68:
	.size	_Z2f1IJPKvS1_EEvv, .Lfunc_end68-_Z2f1IJPKvS1_EEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJP2t1IJPiEEEEvv,"axG",@progbits,_Z2f1IJP2t1IJPiEEEEvv,comdat
	.weak	_Z2f1IJP2t1IJPiEEEEvv           # -- Begin function _Z2f1IJP2t1IJPiEEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJP2t1IJPiEEEEvv,@function
_Z2f1IJP2t1IJPiEEEEvv:                  # @_Z2f1IJP2t1IJPiEEEEvv
.Lfunc_begin69:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp138:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp139:
.Lfunc_end69:
	.size	_Z2f1IJP2t1IJPiEEEEvv, .Lfunc_end69-_Z2f1IJP2t1IJPiEEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJA_PiEEvv,"axG",@progbits,_Z2f1IJA_PiEEvv,comdat
	.weak	_Z2f1IJA_PiEEvv                 # -- Begin function _Z2f1IJA_PiEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJA_PiEEvv,@function
_Z2f1IJA_PiEEvv:                        # @_Z2f1IJA_PiEEvv
.Lfunc_begin70:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp140:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp141:
.Lfunc_end70:
	.size	_Z2f1IJA_PiEEvv, .Lfunc_end70-_Z2f1IJA_PiEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6lsIiEEvi,"axG",@progbits,_ZN2t6lsIiEEvi,comdat
	.weak	_ZN2t6lsIiEEvi                  # -- Begin function _ZN2t6lsIiEEvi
	.p2align	4, 0x90
	.type	_ZN2t6lsIiEEvi,@function
_ZN2t6lsIiEEvi:                         # @_ZN2t6lsIiEEvi
.Lfunc_begin71:
	.loc	0 67 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:67:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp142:
	.loc	0 68 3 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:68:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp143:
.Lfunc_end71:
	.size	_ZN2t6lsIiEEvi, .Lfunc_end71-_ZN2t6lsIiEEvi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6ltIiEEvi,"axG",@progbits,_ZN2t6ltIiEEvi,comdat
	.weak	_ZN2t6ltIiEEvi                  # -- Begin function _ZN2t6ltIiEEvi
	.p2align	4, 0x90
	.type	_ZN2t6ltIiEEvi,@function
_ZN2t6ltIiEEvi:                         # @_ZN2t6ltIiEEvi
.Lfunc_begin72:
	.loc	0 70 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:70:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp144:
	.loc	0 71 3 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:71:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp145:
.Lfunc_end72:
	.size	_ZN2t6ltIiEEvi, .Lfunc_end72-_ZN2t6ltIiEEvi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6leIiEEvi,"axG",@progbits,_ZN2t6leIiEEvi,comdat
	.weak	_ZN2t6leIiEEvi                  # -- Begin function _ZN2t6leIiEEvi
	.p2align	4, 0x90
	.type	_ZN2t6leIiEEvi,@function
_ZN2t6leIiEEvi:                         # @_ZN2t6leIiEEvi
.Lfunc_begin73:
	.loc	0 73 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:73:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp146:
	.loc	0 74 3 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:74:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp147:
.Lfunc_end73:
	.size	_ZN2t6leIiEEvi, .Lfunc_end73-_ZN2t6leIiEEvi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6cvP2t1IJfEEIiEEv,"axG",@progbits,_ZN2t6cvP2t1IJfEEIiEEv,comdat
	.weak	_ZN2t6cvP2t1IJfEEIiEEv          # -- Begin function _ZN2t6cvP2t1IJfEEIiEEv
	.p2align	4, 0x90
	.type	_ZN2t6cvP2t1IJfEEIiEEv,@function
_ZN2t6cvP2t1IJfEEIiEEv:                 # @_ZN2t6cvP2t1IJfEEIiEEv
.Lfunc_begin74:
	.loc	0 76 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:76:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp148:
	.loc	0 77 5 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:77:5
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp149:
.Lfunc_end74:
	.size	_ZN2t6cvP2t1IJfEEIiEEv, .Lfunc_end74-_ZN2t6cvP2t1IJfEEIiEEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6miIiEEvi,"axG",@progbits,_ZN2t6miIiEEvi,comdat
	.weak	_ZN2t6miIiEEvi                  # -- Begin function _ZN2t6miIiEEvi
	.p2align	4, 0x90
	.type	_ZN2t6miIiEEvi,@function
_ZN2t6miIiEEvi:                         # @_ZN2t6miIiEEvi
.Lfunc_begin75:
	.loc	0 80 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:80:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp150:
	.loc	0 81 3 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:81:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp151:
.Lfunc_end75:
	.size	_ZN2t6miIiEEvi, .Lfunc_end75-_ZN2t6miIiEEvi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6mlIiEEvi,"axG",@progbits,_ZN2t6mlIiEEvi,comdat
	.weak	_ZN2t6mlIiEEvi                  # -- Begin function _ZN2t6mlIiEEvi
	.p2align	4, 0x90
	.type	_ZN2t6mlIiEEvi,@function
_ZN2t6mlIiEEvi:                         # @_ZN2t6mlIiEEvi
.Lfunc_begin76:
	.loc	0 83 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:83:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp152:
	.loc	0 84 3 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:84:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp153:
.Lfunc_end76:
	.size	_ZN2t6mlIiEEvi, .Lfunc_end76-_ZN2t6mlIiEEvi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6dvIiEEvi,"axG",@progbits,_ZN2t6dvIiEEvi,comdat
	.weak	_ZN2t6dvIiEEvi                  # -- Begin function _ZN2t6dvIiEEvi
	.p2align	4, 0x90
	.type	_ZN2t6dvIiEEvi,@function
_ZN2t6dvIiEEvi:                         # @_ZN2t6dvIiEEvi
.Lfunc_begin77:
	.loc	0 86 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:86:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp154:
	.loc	0 87 3 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:87:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp155:
.Lfunc_end77:
	.size	_ZN2t6dvIiEEvi, .Lfunc_end77-_ZN2t6dvIiEEvi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6rmIiEEvi,"axG",@progbits,_ZN2t6rmIiEEvi,comdat
	.weak	_ZN2t6rmIiEEvi                  # -- Begin function _ZN2t6rmIiEEvi
	.p2align	4, 0x90
	.type	_ZN2t6rmIiEEvi,@function
_ZN2t6rmIiEEvi:                         # @_ZN2t6rmIiEEvi
.Lfunc_begin78:
	.loc	0 89 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:89:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp156:
	.loc	0 90 3 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:90:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp157:
.Lfunc_end78:
	.size	_ZN2t6rmIiEEvi, .Lfunc_end78-_ZN2t6rmIiEEvi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6eoIiEEvi,"axG",@progbits,_ZN2t6eoIiEEvi,comdat
	.weak	_ZN2t6eoIiEEvi                  # -- Begin function _ZN2t6eoIiEEvi
	.p2align	4, 0x90
	.type	_ZN2t6eoIiEEvi,@function
_ZN2t6eoIiEEvi:                         # @_ZN2t6eoIiEEvi
.Lfunc_begin79:
	.loc	0 92 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:92:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp158:
	.loc	0 93 3 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:93:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp159:
.Lfunc_end79:
	.size	_ZN2t6eoIiEEvi, .Lfunc_end79-_ZN2t6eoIiEEvi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6anIiEEvi,"axG",@progbits,_ZN2t6anIiEEvi,comdat
	.weak	_ZN2t6anIiEEvi                  # -- Begin function _ZN2t6anIiEEvi
	.p2align	4, 0x90
	.type	_ZN2t6anIiEEvi,@function
_ZN2t6anIiEEvi:                         # @_ZN2t6anIiEEvi
.Lfunc_begin80:
	.loc	0 95 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:95:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp160:
	.loc	0 96 3 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:96:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp161:
.Lfunc_end80:
	.size	_ZN2t6anIiEEvi, .Lfunc_end80-_ZN2t6anIiEEvi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6orIiEEvi,"axG",@progbits,_ZN2t6orIiEEvi,comdat
	.weak	_ZN2t6orIiEEvi                  # -- Begin function _ZN2t6orIiEEvi
	.p2align	4, 0x90
	.type	_ZN2t6orIiEEvi,@function
_ZN2t6orIiEEvi:                         # @_ZN2t6orIiEEvi
.Lfunc_begin81:
	.loc	0 98 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:98:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp162:
	.loc	0 99 3 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:99:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp163:
.Lfunc_end81:
	.size	_ZN2t6orIiEEvi, .Lfunc_end81-_ZN2t6orIiEEvi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6coIiEEvv,"axG",@progbits,_ZN2t6coIiEEvv,comdat
	.weak	_ZN2t6coIiEEvv                  # -- Begin function _ZN2t6coIiEEvv
	.p2align	4, 0x90
	.type	_ZN2t6coIiEEvv,@function
_ZN2t6coIiEEvv:                         # @_ZN2t6coIiEEvv
.Lfunc_begin82:
	.loc	0 101 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:101:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp164:
	.loc	0 102 3 prologue_end            # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:102:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp165:
.Lfunc_end82:
	.size	_ZN2t6coIiEEvv, .Lfunc_end82-_ZN2t6coIiEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6ntIiEEvv,"axG",@progbits,_ZN2t6ntIiEEvv,comdat
	.weak	_ZN2t6ntIiEEvv                  # -- Begin function _ZN2t6ntIiEEvv
	.p2align	4, 0x90
	.type	_ZN2t6ntIiEEvv,@function
_ZN2t6ntIiEEvv:                         # @_ZN2t6ntIiEEvv
.Lfunc_begin83:
	.loc	0 104 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:104:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp166:
	.loc	0 105 3 prologue_end            # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:105:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp167:
.Lfunc_end83:
	.size	_ZN2t6ntIiEEvv, .Lfunc_end83-_ZN2t6ntIiEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6aSIiEEvi,"axG",@progbits,_ZN2t6aSIiEEvi,comdat
	.weak	_ZN2t6aSIiEEvi                  # -- Begin function _ZN2t6aSIiEEvi
	.p2align	4, 0x90
	.type	_ZN2t6aSIiEEvi,@function
_ZN2t6aSIiEEvi:                         # @_ZN2t6aSIiEEvi
.Lfunc_begin84:
	.loc	0 107 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:107:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp168:
	.loc	0 108 3 prologue_end            # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:108:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp169:
.Lfunc_end84:
	.size	_ZN2t6aSIiEEvi, .Lfunc_end84-_ZN2t6aSIiEEvi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6gtIiEEvi,"axG",@progbits,_ZN2t6gtIiEEvi,comdat
	.weak	_ZN2t6gtIiEEvi                  # -- Begin function _ZN2t6gtIiEEvi
	.p2align	4, 0x90
	.type	_ZN2t6gtIiEEvi,@function
_ZN2t6gtIiEEvi:                         # @_ZN2t6gtIiEEvi
.Lfunc_begin85:
	.loc	0 110 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:110:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp170:
	.loc	0 111 3 prologue_end            # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:111:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp171:
.Lfunc_end85:
	.size	_ZN2t6gtIiEEvi, .Lfunc_end85-_ZN2t6gtIiEEvi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6cmIiEEvi,"axG",@progbits,_ZN2t6cmIiEEvi,comdat
	.weak	_ZN2t6cmIiEEvi                  # -- Begin function _ZN2t6cmIiEEvi
	.p2align	4, 0x90
	.type	_ZN2t6cmIiEEvi,@function
_ZN2t6cmIiEEvi:                         # @_ZN2t6cmIiEEvi
.Lfunc_begin86:
	.loc	0 113 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:113:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp172:
	.loc	0 114 3 prologue_end            # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:114:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp173:
.Lfunc_end86:
	.size	_ZN2t6cmIiEEvi, .Lfunc_end86-_ZN2t6cmIiEEvi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6clIiEEvv,"axG",@progbits,_ZN2t6clIiEEvv,comdat
	.weak	_ZN2t6clIiEEvv                  # -- Begin function _ZN2t6clIiEEvv
	.p2align	4, 0x90
	.type	_ZN2t6clIiEEvv,@function
_ZN2t6clIiEEvv:                         # @_ZN2t6clIiEEvv
.Lfunc_begin87:
	.loc	0 116 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:116:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp174:
	.loc	0 117 3 prologue_end            # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:117:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp175:
.Lfunc_end87:
	.size	_ZN2t6clIiEEvv, .Lfunc_end87-_ZN2t6clIiEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6ixIiEEvi,"axG",@progbits,_ZN2t6ixIiEEvi,comdat
	.weak	_ZN2t6ixIiEEvi                  # -- Begin function _ZN2t6ixIiEEvi
	.p2align	4, 0x90
	.type	_ZN2t6ixIiEEvi,@function
_ZN2t6ixIiEEvi:                         # @_ZN2t6ixIiEEvi
.Lfunc_begin88:
	.loc	0 119 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:119:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp176:
	.loc	0 120 3 prologue_end            # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:120:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp177:
.Lfunc_end88:
	.size	_ZN2t6ixIiEEvi, .Lfunc_end88-_ZN2t6ixIiEEvi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6ssIiEEvi,"axG",@progbits,_ZN2t6ssIiEEvi,comdat
	.weak	_ZN2t6ssIiEEvi                  # -- Begin function _ZN2t6ssIiEEvi
	.p2align	4, 0x90
	.type	_ZN2t6ssIiEEvi,@function
_ZN2t6ssIiEEvi:                         # @_ZN2t6ssIiEEvi
.Lfunc_begin89:
	.loc	0 122 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:122:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp178:
	.loc	0 123 3 prologue_end            # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:123:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp179:
.Lfunc_end89:
	.size	_ZN2t6ssIiEEvi, .Lfunc_end89-_ZN2t6ssIiEEvi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6nwIiEEPvmT_,"axG",@progbits,_ZN2t6nwIiEEPvmT_,comdat
	.weak	_ZN2t6nwIiEEPvmT_               # -- Begin function _ZN2t6nwIiEEPvmT_
	.p2align	4, 0x90
	.type	_ZN2t6nwIiEEPvmT_,@function
_ZN2t6nwIiEEPvmT_:                      # @_ZN2t6nwIiEEPvmT_
.Lfunc_begin90:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Lfunc_end90:
	.size	_ZN2t6nwIiEEPvmT_, .Lfunc_end90-_ZN2t6nwIiEEPvmT_
	.cfi_endproc
	.file	6 "/usr" "lib/gcc/x86_64-linux-gnu/11/../../../../include/x86_64-linux-gnu/c++/11/bits/c++config.h" md5 0x6ae0e1f800c3d941fd89365f1601d843
                                        # -- End function
	.section	.text._ZN2t6naIiEEPvmT_,"axG",@progbits,_ZN2t6naIiEEPvmT_,comdat
	.weak	_ZN2t6naIiEEPvmT_               # -- Begin function _ZN2t6naIiEEPvmT_
	.p2align	4, 0x90
	.type	_ZN2t6naIiEEPvmT_,@function
_ZN2t6naIiEEPvmT_:                      # @_ZN2t6naIiEEPvmT_
.Lfunc_begin91:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Lfunc_end91:
	.size	_ZN2t6naIiEEPvmT_, .Lfunc_end91-_ZN2t6naIiEEPvmT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6dlIiEEvPvT_,"axG",@progbits,_ZN2t6dlIiEEvPvT_,comdat
	.weak	_ZN2t6dlIiEEvPvT_               # -- Begin function _ZN2t6dlIiEEvPvT_
	.p2align	4, 0x90
	.type	_ZN2t6dlIiEEvPvT_,@function
_ZN2t6dlIiEEvPvT_:                      # @_ZN2t6dlIiEEvPvT_
.Lfunc_begin92:
	.loc	0 129 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:129:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp180:
	.loc	0 130 3 prologue_end            # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:130:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp181:
.Lfunc_end92:
	.size	_ZN2t6dlIiEEvPvT_, .Lfunc_end92-_ZN2t6dlIiEEvPvT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6daIiEEvPvT_,"axG",@progbits,_ZN2t6daIiEEvPvT_,comdat
	.weak	_ZN2t6daIiEEvPvT_               # -- Begin function _ZN2t6daIiEEvPvT_
	.p2align	4, 0x90
	.type	_ZN2t6daIiEEvPvT_,@function
_ZN2t6daIiEEvPvT_:                      # @_ZN2t6daIiEEvPvT_
.Lfunc_begin93:
	.loc	0 136 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:136:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp182:
	.loc	0 137 3 prologue_end            # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:137:3
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp183:
.Lfunc_end93:
	.size	_ZN2t6daIiEEvPvT_, .Lfunc_end93-_ZN2t6daIiEEvPvT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2t6awIiEEiv,"axG",@progbits,_ZN2t6awIiEEiv,comdat
	.weak	_ZN2t6awIiEEiv                  # -- Begin function _ZN2t6awIiEEiv
	.p2align	4, 0x90
	.type	_ZN2t6awIiEEiv,@function
_ZN2t6awIiEEiv:                         # @_ZN2t6awIiEEiv
.Lfunc_begin94:
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Lfunc_end94:
	.size	_ZN2t6awIiEEiv, .Lfunc_end94-_ZN2t6awIiEEiv
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _Z2f1IJZ4mainE2t7EEvv
	.type	_Z2f1IJZ4mainE2t7EEvv,@function
_Z2f1IJZ4mainE2t7EEvv:                  # @_Z2f1IJZ4mainE2t7EEvv
.Lfunc_begin95:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp184:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp185:
.Lfunc_end95:
	.size	_Z2f1IJZ4mainE2t7EEvv, .Lfunc_end95-_Z2f1IJZ4mainE2t7EEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJRA3_iEEvv,"axG",@progbits,_Z2f1IJRA3_iEEvv,comdat
	.weak	_Z2f1IJRA3_iEEvv                # -- Begin function _Z2f1IJRA3_iEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJRA3_iEEvv,@function
_Z2f1IJRA3_iEEvv:                       # @_Z2f1IJRA3_iEEvv
.Lfunc_begin96:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp186:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp187:
.Lfunc_end96:
	.size	_Z2f1IJRA3_iEEvv, .Lfunc_end96-_Z2f1IJRA3_iEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJPA3_iEEvv,"axG",@progbits,_Z2f1IJPA3_iEEvv,comdat
	.weak	_Z2f1IJPA3_iEEvv                # -- Begin function _Z2f1IJPA3_iEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJPA3_iEEvv,@function
_Z2f1IJPA3_iEEvv:                       # @_Z2f1IJPA3_iEEvv
.Lfunc_begin97:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp188:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp189:
.Lfunc_end97:
	.size	_Z2f1IJPA3_iEEvv, .Lfunc_end97-_Z2f1IJPA3_iEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f7I2t1Evv,"axG",@progbits,_Z2f7I2t1Evv,comdat
	.weak	_Z2f7I2t1Evv                    # -- Begin function _Z2f7I2t1Evv
	.p2align	4, 0x90
	.type	_Z2f7I2t1Evv,@function
_Z2f7I2t1Evv:                           # @_Z2f7I2t1Evv
.Lfunc_begin98:
	.loc	0 143 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:143:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp190:
	.loc	0 143 53 prologue_end           # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:143:53
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp191:
.Lfunc_end98:
	.size	_Z2f7I2t1Evv, .Lfunc_end98-_Z2f7I2t1Evv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f8I2t1iEvv,"axG",@progbits,_Z2f8I2t1iEvv,comdat
	.weak	_Z2f8I2t1iEvv                   # -- Begin function _Z2f8I2t1iEvv
	.p2align	4, 0x90
	.type	_Z2f8I2t1iEvv,@function
_Z2f8I2t1iEvv:                          # @_Z2f8I2t1iEvv
.Lfunc_begin99:
	.loc	0 144 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:144:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp192:
	.loc	0 144 66 prologue_end           # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:144:66
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp193:
.Lfunc_end99:
	.size	_Z2f8I2t1iEvv, .Lfunc_end99-_Z2f8I2t1iEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN2ns8ttp_userINS_5inner3ttpEEEvv,"axG",@progbits,_ZN2ns8ttp_userINS_5inner3ttpEEEvv,comdat
	.weak	_ZN2ns8ttp_userINS_5inner3ttpEEEvv # -- Begin function _ZN2ns8ttp_userINS_5inner3ttpEEEvv
	.p2align	4, 0x90
	.type	_ZN2ns8ttp_userINS_5inner3ttpEEEvv,@function
_ZN2ns8ttp_userINS_5inner3ttpEEEvv:     # @_ZN2ns8ttp_userINS_5inner3ttpEEEvv
.Lfunc_begin100:
	.loc	0 26 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:26:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp194:
	.loc	0 26 19 prologue_end            # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:26:19
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp195:
.Lfunc_end100:
	.size	_ZN2ns8ttp_userINS_5inner3ttpEEEvv, .Lfunc_end100-_ZN2ns8ttp_userINS_5inner3ttpEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJPiPDnEEvv,"axG",@progbits,_Z2f1IJPiPDnEEvv,comdat
	.weak	_Z2f1IJPiPDnEEvv                # -- Begin function _Z2f1IJPiPDnEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJPiPDnEEvv,@function
_Z2f1IJPiPDnEEvv:                       # @_Z2f1IJPiPDnEEvv
.Lfunc_begin101:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp196:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp197:
.Lfunc_end101:
	.size	_Z2f1IJPiPDnEEvv, .Lfunc_end101-_Z2f1IJPiPDnEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJ2t7IiEEEvv,"axG",@progbits,_Z2f1IJ2t7IiEEEvv,comdat
	.weak	_Z2f1IJ2t7IiEEEvv               # -- Begin function _Z2f1IJ2t7IiEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJ2t7IiEEEvv,@function
_Z2f1IJ2t7IiEEEvv:                      # @_Z2f1IJ2t7IiEEEvv
.Lfunc_begin102:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp198:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp199:
.Lfunc_end102:
	.size	_Z2f1IJ2t7IiEEEvv, .Lfunc_end102-_Z2f1IJ2t7IiEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f7IN2ns3inl2t9EEvv,"axG",@progbits,_Z2f7IN2ns3inl2t9EEvv,comdat
	.weak	_Z2f7IN2ns3inl2t9EEvv           # -- Begin function _Z2f7IN2ns3inl2t9EEvv
	.p2align	4, 0x90
	.type	_Z2f7IN2ns3inl2t9EEvv,@function
_Z2f7IN2ns3inl2t9EEvv:                  # @_Z2f7IN2ns3inl2t9EEvv
.Lfunc_begin103:
	.loc	0 143 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:143:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp200:
	.loc	0 143 53 prologue_end           # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:143:53
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp201:
.Lfunc_end103:
	.size	_Z2f7IN2ns3inl2t9EEvv, .Lfunc_end103-_Z2f7IN2ns3inl2t9EEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJU7_AtomiciEEvv,"axG",@progbits,_Z2f1IJU7_AtomiciEEvv,comdat
	.weak	_Z2f1IJU7_AtomiciEEvv           # -- Begin function _Z2f1IJU7_AtomiciEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJU7_AtomiciEEvv,@function
_Z2f1IJU7_AtomiciEEvv:                  # @_Z2f1IJU7_AtomiciEEvv
.Lfunc_begin104:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp202:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp203:
.Lfunc_end104:
	.size	_Z2f1IJU7_AtomiciEEvv, .Lfunc_end104-_Z2f1IJU7_AtomiciEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJilVcEEvv,"axG",@progbits,_Z2f1IJilVcEEvv,comdat
	.weak	_Z2f1IJilVcEEvv                 # -- Begin function _Z2f1IJilVcEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJilVcEEvv,@function
_Z2f1IJilVcEEvv:                        # @_Z2f1IJilVcEEvv
.Lfunc_begin105:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp204:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp205:
.Lfunc_end105:
	.size	_Z2f1IJilVcEEvv, .Lfunc_end105-_Z2f1IJilVcEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJDv2_iEEvv,"axG",@progbits,_Z2f1IJDv2_iEEvv,comdat
	.weak	_Z2f1IJDv2_iEEvv                # -- Begin function _Z2f1IJDv2_iEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJDv2_iEEvv,@function
_Z2f1IJDv2_iEEvv:                       # @_Z2f1IJDv2_iEEvv
.Lfunc_begin106:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp206:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp207:
.Lfunc_end106:
	.size	_Z2f1IJDv2_iEEvv, .Lfunc_end106-_Z2f1IJDv2_iEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJVKPiEEvv,"axG",@progbits,_Z2f1IJVKPiEEvv,comdat
	.weak	_Z2f1IJVKPiEEvv                 # -- Begin function _Z2f1IJVKPiEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJVKPiEEvv,@function
_Z2f1IJVKPiEEvv:                        # @_Z2f1IJVKPiEEvv
.Lfunc_begin107:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp208:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp209:
.Lfunc_end107:
	.size	_Z2f1IJVKPiEEvv, .Lfunc_end107-_Z2f1IJVKPiEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJVKvEEvv,"axG",@progbits,_Z2f1IJVKvEEvv,comdat
	.weak	_Z2f1IJVKvEEvv                  # -- Begin function _Z2f1IJVKvEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJVKvEEvv,@function
_Z2f1IJVKvEEvv:                         # @_Z2f1IJVKvEEvv
.Lfunc_begin108:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp210:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp211:
.Lfunc_end108:
	.size	_Z2f1IJVKvEEvv, .Lfunc_end108-_Z2f1IJVKvEEvv
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _Z2f1IJ2t1IJZ4mainE3$_1EEEEvv
	.type	_Z2f1IJ2t1IJZ4mainE3$_1EEEEvv,@function
_Z2f1IJ2t1IJZ4mainE3$_1EEEEvv:          # @"_Z2f1IJ2t1IJZ4mainE3$_1EEEEvv"
.Lfunc_begin109:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp212:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp213:
.Lfunc_end109:
	.size	_Z2f1IJ2t1IJZ4mainE3$_1EEEEvv, .Lfunc_end109-_Z2f1IJ2t1IJZ4mainE3$_1EEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN3t10C2IvEEv,"axG",@progbits,_ZN3t10C2IvEEv,comdat
	.weak	_ZN3t10C2IvEEv                  # -- Begin function _ZN3t10C2IvEEv
	.p2align	4, 0x90
	.type	_ZN3t10C2IvEEv,@function
_ZN3t10C2IvEEv:                         # @_ZN3t10C2IvEEv
.Lfunc_begin110:
	.loc	0 167 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:167:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp214:
	.loc	0 167 11 prologue_end           # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:167:11
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp215:
.Lfunc_end110:
	.size	_ZN3t10C2IvEEv, .Lfunc_end110-_ZN3t10C2IvEEv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJM3udtKFvvEEEvv,"axG",@progbits,_Z2f1IJM3udtKFvvEEEvv,comdat
	.weak	_Z2f1IJM3udtKFvvEEEvv           # -- Begin function _Z2f1IJM3udtKFvvEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJM3udtKFvvEEEvv,@function
_Z2f1IJM3udtKFvvEEEvv:                  # @_Z2f1IJM3udtKFvvEEEvv
.Lfunc_begin111:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp216:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp217:
.Lfunc_end111:
	.size	_Z2f1IJM3udtKFvvEEEvv, .Lfunc_end111-_Z2f1IJM3udtKFvvEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJM3udtVFvvREEEvv,"axG",@progbits,_Z2f1IJM3udtVFvvREEEvv,comdat
	.weak	_Z2f1IJM3udtVFvvREEEvv          # -- Begin function _Z2f1IJM3udtVFvvREEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJM3udtVFvvREEEvv,@function
_Z2f1IJM3udtVFvvREEEvv:                 # @_Z2f1IJM3udtVFvvREEEvv
.Lfunc_begin112:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp218:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp219:
.Lfunc_end112:
	.size	_Z2f1IJM3udtVFvvREEEvv, .Lfunc_end112-_Z2f1IJM3udtVFvvREEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJM3udtVKFvvOEEEvv,"axG",@progbits,_Z2f1IJM3udtVKFvvOEEEvv,comdat
	.weak	_Z2f1IJM3udtVKFvvOEEEvv         # -- Begin function _Z2f1IJM3udtVKFvvOEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJM3udtVKFvvOEEEvv,@function
_Z2f1IJM3udtVKFvvOEEEvv:                # @_Z2f1IJM3udtVKFvvOEEEvv
.Lfunc_begin113:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp220:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp221:
.Lfunc_end113:
	.size	_Z2f1IJM3udtVKFvvOEEEvv, .Lfunc_end113-_Z2f1IJM3udtVKFvvOEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f9IiEPFvvEv,"axG",@progbits,_Z2f9IiEPFvvEv,comdat
	.weak	_Z2f9IiEPFvvEv                  # -- Begin function _Z2f9IiEPFvvEv
	.p2align	4, 0x90
	.type	_Z2f9IiEPFvvEv,@function
_Z2f9IiEPFvvEv:                         # @_Z2f9IiEPFvvEv
.Lfunc_begin114:
	.loc	0 162 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:162:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp222:
	.loc	0 163 3 prologue_end            # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:163:3
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp223:
.Lfunc_end114:
	.size	_Z2f9IiEPFvvEv, .Lfunc_end114-_Z2f9IiEPFvvEv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJKPFvvEEEvv,"axG",@progbits,_Z2f1IJKPFvvEEEvv,comdat
	.weak	_Z2f1IJKPFvvEEEvv               # -- Begin function _Z2f1IJKPFvvEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJKPFvvEEEvv,@function
_Z2f1IJKPFvvEEEvv:                      # @_Z2f1IJKPFvvEEEvv
.Lfunc_begin115:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp224:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp225:
.Lfunc_end115:
	.size	_Z2f1IJKPFvvEEEvv, .Lfunc_end115-_Z2f1IJKPFvvEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJRA1_KcEEvv,"axG",@progbits,_Z2f1IJRA1_KcEEvv,comdat
	.weak	_Z2f1IJRA1_KcEEvv               # -- Begin function _Z2f1IJRA1_KcEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJRA1_KcEEvv,@function
_Z2f1IJRA1_KcEEvv:                      # @_Z2f1IJRA1_KcEEvv
.Lfunc_begin116:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp226:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp227:
.Lfunc_end116:
	.size	_Z2f1IJRA1_KcEEvv, .Lfunc_end116-_Z2f1IJRA1_KcEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJKFvvREEEvv,"axG",@progbits,_Z2f1IJKFvvREEEvv,comdat
	.weak	_Z2f1IJKFvvREEEvv               # -- Begin function _Z2f1IJKFvvREEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJKFvvREEEvv,@function
_Z2f1IJKFvvREEEvv:                      # @_Z2f1IJKFvvREEEvv
.Lfunc_begin117:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp228:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp229:
.Lfunc_end117:
	.size	_Z2f1IJKFvvREEEvv, .Lfunc_end117-_Z2f1IJKFvvREEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJVFvvOEEEvv,"axG",@progbits,_Z2f1IJVFvvOEEEvv,comdat
	.weak	_Z2f1IJVFvvOEEEvv               # -- Begin function _Z2f1IJVFvvOEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJVFvvOEEEvv,@function
_Z2f1IJVFvvOEEEvv:                      # @_Z2f1IJVFvvOEEEvv
.Lfunc_begin118:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp230:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp231:
.Lfunc_end118:
	.size	_Z2f1IJVFvvOEEEvv, .Lfunc_end118-_Z2f1IJVFvvOEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJVKFvvEEEvv,"axG",@progbits,_Z2f1IJVKFvvEEEvv,comdat
	.weak	_Z2f1IJVKFvvEEEvv               # -- Begin function _Z2f1IJVKFvvEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJVKFvvEEEvv,@function
_Z2f1IJVKFvvEEEvv:                      # @_Z2f1IJVKFvvEEEvv
.Lfunc_begin119:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp232:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp233:
.Lfunc_end119:
	.size	_Z2f1IJVKFvvEEEvv, .Lfunc_end119-_Z2f1IJVKFvvEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJA1_KPiEEvv,"axG",@progbits,_Z2f1IJA1_KPiEEvv,comdat
	.weak	_Z2f1IJA1_KPiEEvv               # -- Begin function _Z2f1IJA1_KPiEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJA1_KPiEEvv,@function
_Z2f1IJA1_KPiEEvv:                      # @_Z2f1IJA1_KPiEEvv
.Lfunc_begin120:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp234:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp235:
.Lfunc_end120:
	.size	_Z2f1IJA1_KPiEEvv, .Lfunc_end120-_Z2f1IJA1_KPiEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJRA1_KPiEEvv,"axG",@progbits,_Z2f1IJRA1_KPiEEvv,comdat
	.weak	_Z2f1IJRA1_KPiEEvv              # -- Begin function _Z2f1IJRA1_KPiEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJRA1_KPiEEvv,@function
_Z2f1IJRA1_KPiEEvv:                     # @_Z2f1IJRA1_KPiEEvv
.Lfunc_begin121:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp236:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp237:
.Lfunc_end121:
	.size	_Z2f1IJRA1_KPiEEvv, .Lfunc_end121-_Z2f1IJRA1_KPiEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJRKM3udtFvvEEEvv,"axG",@progbits,_Z2f1IJRKM3udtFvvEEEvv,comdat
	.weak	_Z2f1IJRKM3udtFvvEEEvv          # -- Begin function _Z2f1IJRKM3udtFvvEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJRKM3udtFvvEEEvv,@function
_Z2f1IJRKM3udtFvvEEEvv:                 # @_Z2f1IJRKM3udtFvvEEEvv
.Lfunc_begin122:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp238:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp239:
.Lfunc_end122:
	.size	_Z2f1IJRKM3udtFvvEEEvv, .Lfunc_end122-_Z2f1IJRKM3udtFvvEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJFPFvfEiEEEvv,"axG",@progbits,_Z2f1IJFPFvfEiEEEvv,comdat
	.weak	_Z2f1IJFPFvfEiEEEvv             # -- Begin function _Z2f1IJFPFvfEiEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJFPFvfEiEEEvv,@function
_Z2f1IJFPFvfEiEEEvv:                    # @_Z2f1IJFPFvfEiEEEvv
.Lfunc_begin123:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp240:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp241:
.Lfunc_end123:
	.size	_Z2f1IJFPFvfEiEEEvv, .Lfunc_end123-_Z2f1IJFPFvfEiEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJA1_2t1IJiEEEEvv,"axG",@progbits,_Z2f1IJA1_2t1IJiEEEEvv,comdat
	.weak	_Z2f1IJA1_2t1IJiEEEEvv          # -- Begin function _Z2f1IJA1_2t1IJiEEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJA1_2t1IJiEEEEvv,@function
_Z2f1IJA1_2t1IJiEEEEvv:                 # @_Z2f1IJA1_2t1IJiEEEEvv
.Lfunc_begin124:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp242:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp243:
.Lfunc_end124:
	.size	_Z2f1IJA1_2t1IJiEEEEvv, .Lfunc_end124-_Z2f1IJA1_2t1IJiEEEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJPDoFvvEEEvv,"axG",@progbits,_Z2f1IJPDoFvvEEEvv,comdat
	.weak	_Z2f1IJPDoFvvEEEvv              # -- Begin function _Z2f1IJPDoFvvEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJPDoFvvEEEvv,@function
_Z2f1IJPDoFvvEEEvv:                     # @_Z2f1IJPDoFvvEEEvv
.Lfunc_begin125:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp244:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp245:
.Lfunc_end125:
	.size	_Z2f1IJPDoFvvEEEvv, .Lfunc_end125-_Z2f1IJPDoFvvEEEvv
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _Z2f1IJFvZ4mainE3$_2EEEvv
	.type	_Z2f1IJFvZ4mainE3$_2EEEvv,@function
_Z2f1IJFvZ4mainE3$_2EEEvv:              # @"_Z2f1IJFvZ4mainE3$_2EEEvv"
.Lfunc_begin126:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp246:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp247:
.Lfunc_end126:
	.size	_Z2f1IJFvZ4mainE3$_2EEEvv, .Lfunc_end126-_Z2f1IJFvZ4mainE3$_2EEEvv
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _Z2f1IJFvZ4mainE2t8Z4mainE3$_2EEEvv
	.type	_Z2f1IJFvZ4mainE2t8Z4mainE3$_2EEEvv,@function
_Z2f1IJFvZ4mainE2t8Z4mainE3$_2EEEvv:    # @"_Z2f1IJFvZ4mainE2t8Z4mainE3$_2EEEvv"
.Lfunc_begin127:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp248:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp249:
.Lfunc_end127:
	.size	_Z2f1IJFvZ4mainE2t8Z4mainE3$_2EEEvv, .Lfunc_end127-_Z2f1IJFvZ4mainE2t8Z4mainE3$_2EEEvv
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _Z2f1IJFvZ4mainE2t8EEEvv
	.type	_Z2f1IJFvZ4mainE2t8EEEvv,@function
_Z2f1IJFvZ4mainE2t8EEEvv:               # @_Z2f1IJFvZ4mainE2t8EEEvv
.Lfunc_begin128:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp250:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp251:
.Lfunc_end128:
	.size	_Z2f1IJFvZ4mainE2t8EEEvv, .Lfunc_end128-_Z2f1IJFvZ4mainE2t8EEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z19operator_not_reallyIiEvv,"axG",@progbits,_Z19operator_not_reallyIiEvv,comdat
	.weak	_Z19operator_not_reallyIiEvv    # -- Begin function _Z19operator_not_reallyIiEvv
	.p2align	4, 0x90
	.type	_Z19operator_not_reallyIiEvv,@function
_Z19operator_not_reallyIiEvv:           # @_Z19operator_not_reallyIiEvv
.Lfunc_begin129:
	.loc	0 171 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:171:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp252:
	.loc	0 172 1 prologue_end            # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:172:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp253:
.Lfunc_end129:
	.size	_Z19operator_not_reallyIiEvv, .Lfunc_end129-_Z19operator_not_reallyIiEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJDB3_EEvv,"axG",@progbits,_Z2f1IJDB3_EEvv,comdat
	.weak	_Z2f1IJDB3_EEvv                 # -- Begin function _Z2f1IJDB3_EEvv
	.p2align	4, 0x90
	.type	_Z2f1IJDB3_EEvv,@function
_Z2f1IJDB3_EEvv:                        # @_Z2f1IJDB3_EEvv
.Lfunc_begin130:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp254:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp255:
.Lfunc_end130:
	.size	_Z2f1IJDB3_EEvv, .Lfunc_end130-_Z2f1IJDB3_EEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJKDU5_EEvv,"axG",@progbits,_Z2f1IJKDU5_EEvv,comdat
	.weak	_Z2f1IJKDU5_EEvv                # -- Begin function _Z2f1IJKDU5_EEvv
	.p2align	4, 0x90
	.type	_Z2f1IJKDU5_EEvv,@function
_Z2f1IJKDU5_EEvv:                       # @_Z2f1IJKDU5_EEvv
.Lfunc_begin131:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp256:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp257:
.Lfunc_end131:
	.size	_Z2f1IJKDU5_EEvv, .Lfunc_end131-_Z2f1IJKDU5_EEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJFv2t1IJEES1_EEEvv,"axG",@progbits,_Z2f1IJFv2t1IJEES1_EEEvv,comdat
	.weak	_Z2f1IJFv2t1IJEES1_EEEvv        # -- Begin function _Z2f1IJFv2t1IJEES1_EEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJFv2t1IJEES1_EEEvv,@function
_Z2f1IJFv2t1IJEES1_EEEvv:               # @_Z2f1IJFv2t1IJEES1_EEEvv
.Lfunc_begin132:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp258:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp259:
.Lfunc_end132:
	.size	_Z2f1IJFv2t1IJEES1_EEEvv, .Lfunc_end132-_Z2f1IJFv2t1IJEES1_EEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJM2t1IJEEiEEvv,"axG",@progbits,_Z2f1IJM2t1IJEEiEEvv,comdat
	.weak	_Z2f1IJM2t1IJEEiEEvv            # -- Begin function _Z2f1IJM2t1IJEEiEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJM2t1IJEEiEEvv,@function
_Z2f1IJM2t1IJEEiEEvv:                   # @_Z2f1IJM2t1IJEEiEEvv
.Lfunc_begin133:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp260:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp261:
.Lfunc_end133:
	.size	_Z2f1IJM2t1IJEEiEEvv, .Lfunc_end133-_Z2f1IJM2t1IJEEiEEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJU9swiftcallFvvEEEvv,"axG",@progbits,_Z2f1IJU9swiftcallFvvEEEvv,comdat
	.weak	_Z2f1IJU9swiftcallFvvEEEvv      # -- Begin function _Z2f1IJU9swiftcallFvvEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJU9swiftcallFvvEEEvv,@function
_Z2f1IJU9swiftcallFvvEEEvv:             # @_Z2f1IJU9swiftcallFvvEEEvv
.Lfunc_begin134:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp262:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp263:
.Lfunc_end134:
	.size	_Z2f1IJU9swiftcallFvvEEEvv, .Lfunc_end134-_Z2f1IJU9swiftcallFvvEEEvv
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_ZN2t83memEv                    # -- Begin function _ZN2t83memEv
	.p2align	4, 0x90
	.type	_ZN2t83memEv,@function
_ZN2t83memEv:                           # @_ZN2t83memEv
.Lfunc_begin135:
	.loc	0 329 0                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:329:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp264:
	.loc	0 331 3 prologue_end            # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:331:3
	callq	_Z2f1IJZN2t83memEvE2t7EEvv
	.loc	0 332 3                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:332:3
	callq	_Z2f1IJM2t8FvvEEEvv
	.loc	0 333 1                         # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:333:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp265:
.Lfunc_end135:
	.size	_ZN2t83memEv, .Lfunc_end135-_ZN2t83memEv
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _Z2f1IJZN2t83memEvE2t7EEvv
	.type	_Z2f1IJZN2t83memEvE2t7EEvv,@function
_Z2f1IJZN2t83memEvE2t7EEvv:             # @_Z2f1IJZN2t83memEvE2t7EEvv
.Lfunc_begin136:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp266:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp267:
.Lfunc_end136:
	.size	_Z2f1IJZN2t83memEvE2t7EEvv, .Lfunc_end136-_Z2f1IJZN2t83memEvE2t7EEvv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z2f1IJM2t8FvvEEEvv,"axG",@progbits,_Z2f1IJM2t8FvvEEEvv,comdat
	.weak	_Z2f1IJM2t8FvvEEEvv             # -- Begin function _Z2f1IJM2t8FvvEEEvv
	.p2align	4, 0x90
	.type	_Z2f1IJM2t8FvvEEEvv,@function
_Z2f1IJM2t8FvvEEEvv:                    # @_Z2f1IJM2t8FvvEEEvv
.Lfunc_begin137:
	.loc	0 33 0                          # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:33:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp268:
	.loc	0 36 1 prologue_end             # cross-project-tests/debuginfo-tests/clang_llvm_roundtrip/simplified_template_names.cpp:36:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp269:
.Lfunc_end137:
	.size	_Z2f1IJM2t8FvvEEEvv, .Lfunc_end137-_Z2f1IJM2t8FvvEEEvv
	.cfi_endproc
                                        # -- End function
	.type	i,@object                       # @i
	.data
	.globl	i
	.p2align	2
i:
	.long	3                               # 0x3
	.size	i, 4

	.type	.L__const.main.L,@object        # @__const.main.L
	.section	.rodata,"a",@progbits
.L__const.main.L:
	.zero	1
	.size	.L__const.main.L, 1

	.section	".linker-options","e",@llvm_linker_options
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	37                              # DW_FORM_strx1
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	114                             # DW_AT_str_offsets_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	37                              # DW_FORM_strx1
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	85                              # DW_AT_ranges
	.byte	35                              # DW_FORM_rnglistx
	.byte	115                             # DW_AT_addr_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	116                             # DW_AT_rnglists_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	57                              # DW_TAG_namespace
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	4                               # DW_TAG_enumeration_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	57                              # DW_TAG_namespace
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	4                               # DW_TAG_enumeration_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	109                             # DW_AT_enum_class
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	4                               # DW_TAG_enumeration_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	110                             # DW_AT_linkage_name
	.byte	38                              # DW_FORM_strx2
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.ascii	"\206\202\001"                  # DW_TAG_GNU_template_template_param
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.ascii	"\220B"                         # DW_AT_GNU_template_name
	.byte	38                              # DW_FORM_strx2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	54                              # DW_AT_calling_convention
	.byte	11                              # DW_FORM_data1
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	47                              # DW_TAG_template_type_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	48                              # DW_TAG_template_value_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	30                              # DW_AT_default_value
	.byte	25                              # DW_FORM_flag_present
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	47                              # DW_TAG_template_type_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	30                              # DW_AT_default_value
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	52                              # DW_AT_artificial
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	8                               # DW_TAG_imported_declaration
	.byte	0                               # DW_CHILDREN_no
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	24                              # DW_AT_import
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	110                             # DW_AT_linkage_name
	.byte	37                              # DW_FORM_strx1
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	58                              # DW_TAG_imported_module
	.byte	0                               # DW_CHILDREN_no
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	24                              # DW_AT_import
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	2                               # DW_TAG_class_type
	.byte	0                               # DW_CHILDREN_no
	.byte	54                              # DW_AT_calling_convention
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	54                              # DW_AT_calling_convention
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
	.ascii	"\207\202\001"                  # DW_TAG_GNU_template_parameter_pack
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
	.byte	47                              # DW_TAG_template_type_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
	.byte	47                              # DW_TAG_template_type_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	48                              # DW_TAG_template_value_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
	.byte	48                              # DW_TAG_template_value_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
	.byte	48                              # DW_TAG_template_value_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
	.byte	48                              # DW_TAG_template_value_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	28                              # DW_AT_const_value
	.byte	13                              # DW_FORM_sdata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	110                             # DW_AT_linkage_name
	.byte	37                              # DW_FORM_strx1
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
	.byte	48                              # DW_TAG_template_value_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
	.byte	48                              # DW_TAG_template_value_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	28                              # DW_AT_const_value
	.byte	10                              # DW_FORM_block1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
	.byte	48                              # DW_TAG_template_value_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	30                              # DW_AT_default_value
	.byte	25                              # DW_FORM_flag_present
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	44                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	110                             # DW_AT_linkage_name
	.byte	37                              # DW_FORM_strx1
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	45                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	110                             # DW_AT_linkage_name
	.byte	38                              # DW_FORM_strx2
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	46                              # Abbreviation Code
	.ascii	"\207\202\001"                  # DW_TAG_GNU_template_parameter_pack
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	47                              # Abbreviation Code
	.byte	47                              # DW_TAG_template_type_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	30                              # DW_AT_default_value
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	48                              # Abbreviation Code
	.ascii	"\207\202\001"                  # DW_TAG_GNU_template_parameter_pack
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	49                              # Abbreviation Code
	.byte	47                              # DW_TAG_template_type_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	50                              # Abbreviation Code
	.ascii	"\207\202\001"                  # DW_TAG_GNU_template_parameter_pack
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	51                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	110                             # DW_AT_linkage_name
	.byte	37                              # DW_FORM_strx1
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	52                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	53                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	110                             # DW_AT_linkage_name
	.byte	37                              # DW_FORM_strx1
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	54                              # Abbreviation Code
	.byte	47                              # DW_TAG_template_type_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	30                              # DW_AT_default_value
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	55                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	56                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	100                             # DW_AT_object_pointer
	.byte	19                              # DW_FORM_ref4
	.byte	71                              # DW_AT_specification
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	57                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	52                              # DW_AT_artificial
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	58                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	59                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	71                              # DW_AT_specification
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	60                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	100                             # DW_AT_object_pointer
	.byte	19                              # DW_FORM_ref4
	.byte	110                             # DW_AT_linkage_name
	.byte	38                              # DW_FORM_strx2
	.byte	71                              # DW_AT_specification
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	61                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	110                             # DW_AT_linkage_name
	.byte	38                              # DW_FORM_strx2
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	62                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	100                             # DW_AT_object_pointer
	.byte	19                              # DW_FORM_ref4
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	71                              # DW_AT_specification
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	63                              # Abbreviation Code
	.byte	16                              # DW_TAG_reference_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	64                              # Abbreviation Code
	.byte	66                              # DW_TAG_rvalue_reference_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	65                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	66                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	67                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	68                              # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	69                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	70                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	71                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	72                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	73                              # Abbreviation Code
	.byte	59                              # DW_TAG_unspecified_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	74                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	75                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	76                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	54                              # DW_AT_calling_convention
	.byte	11                              # DW_FORM_data1
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	77                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	78                              # Abbreviation Code
	.byte	71                              # DW_TAG_atomic_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	79                              # Abbreviation Code
	.byte	53                              # DW_TAG_volatile_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	80                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.ascii	"\207B"                         # DW_AT_GNU_vector
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	81                              # Abbreviation Code
	.byte	53                              # DW_TAG_volatile_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	82                              # Abbreviation Code
	.byte	31                              # DW_TAG_ptr_to_member_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	29                              # DW_AT_containing_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	83                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	119                             # DW_AT_reference
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	84                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	120                             # DW_AT_rvalue_reference
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	85                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	0                               # DW_CHILDREN_no
	.byte	119                             # DW_AT_reference
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	86                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	0                               # DW_CHILDREN_no
	.byte	120                             # DW_AT_rvalue_reference
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	87                              # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	88                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	0                               # DW_CHILDREN_no
	.byte	54                              # DW_AT_calling_convention
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	89                              # Abbreviation Code
	.byte	48                              # DW_TAG_template_value_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	90                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	91                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	92                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	38                              # DW_FORM_strx2
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x295d DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	33                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.quad	0                               # DW_AT_low_pc
	.byte	0                               # DW_AT_ranges
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lrnglists_table_base0          # DW_AT_rnglists_base
	.byte	2                               # Abbrev [2] 0x2b:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	54                              # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               # Abbrev [3] 0x36:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x3a:0x11 DW_TAG_namespace
	.byte	5                               # Abbrev [5] 0x3b:0xd DW_TAG_enumeration_type
	.long	75                              # DW_AT_type
	.byte	7                               # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x44:0x3 DW_TAG_enumerator
	.byte	6                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x48:0x2 DW_TAG_structure_type
	.byte	254                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x4b:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x4f:0x63 DW_TAG_namespace
	.byte	8                               # DW_AT_name
	.byte	5                               # Abbrev [5] 0x51:0x13 DW_TAG_enumeration_type
	.long	75                              # DW_AT_type
	.byte	12                              # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x5a:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	6                               # Abbrev [6] 0x5d:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	6                               # Abbrev [6] 0x60:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x64:0x13 DW_TAG_enumeration_type
	.long	54                              # DW_AT_type
                                        # DW_AT_enum_class
	.byte	13                              # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6d:0x3 DW_TAG_enumerator
	.byte	9                               # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x70:0x3 DW_TAG_enumerator
	.byte	10                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	10                              # Abbrev [10] 0x73:0x3 DW_TAG_enumerator
	.byte	11                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x77:0xe DW_TAG_enumeration_type
	.long	178                             # DW_AT_type
	.byte	16                              # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x80:0x4 DW_TAG_enumerator
	.byte	15                              # DW_AT_name
	.ascii	"\377\001"                      # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x85:0x12 DW_TAG_enumeration_type
	.long	75                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x8d:0x3 DW_TAG_enumerator
	.byte	17                              # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	6                               # Abbrev [6] 0x90:0x3 DW_TAG_enumerator
	.byte	18                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	6                               # Abbrev [6] 0x93:0x3 DW_TAG_enumerator
	.byte	19                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x97:0x13 DW_TAG_subprogram
	.byte	101                             # DW_AT_low_pc
	.long	.Lfunc_end100-.Lfunc_begin100   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	308                             # DW_AT_linkage_name
	.short	309                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0xa5:0x4 DW_TAG_GNU_template_template_param
	.byte	20                              # DW_AT_name
	.short	307                             # DW_AT_GNU_template_name
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xaa:0x2 DW_TAG_structure_type
	.byte	158                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	8                               # Abbrev [8] 0xac:0x5 DW_TAG_namespace
	.byte	165                             # DW_AT_name
	.byte	7                               # Abbrev [7] 0xae:0x2 DW_TAG_structure_type
	.byte	158                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xb2:0x4 DW_TAG_base_type
	.byte	14                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	14                              # Abbrev [14] 0xb6:0x14 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.byte	23                              # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0xbc:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	16                              # Abbrev [16] 0xc2:0x7 DW_TAG_template_value_parameter
	.long	202                             # DW_AT_type
	.byte	22                              # DW_AT_name
                                        # DW_AT_default_value
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xca:0x4 DW_TAG_base_type
	.byte	21                              # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	14                              # Abbrev [14] 0xce:0x13 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.byte	24                              # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0xd4:0xc DW_TAG_subprogram
	.byte	130                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	167                             # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	18                              # Abbrev [18] 0xd8:0x2 DW_TAG_template_type_parameter
	.byte	20                              # DW_AT_name
                                        # DW_AT_default_value
	.byte	19                              # Abbrev [19] 0xda:0x5 DW_TAG_formal_parameter
	.long	5915                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xe1:0xd0 DW_TAG_namespace
	.byte	25                              # DW_AT_name
	.byte	20                              # Abbrev [20] 0xe3:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	433                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0xea:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	453                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0xf1:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.long	473                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0xf8:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	489                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0xff:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.long	509                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x106:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	517                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x10d:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.long	525                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x114:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.long	533                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x11b:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	541                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x122:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	557                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x129:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	573                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x130:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	589                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x137:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	605                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x13e:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.long	621                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x145:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.long	629                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x14c:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.long	645                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x153:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	665                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x15a:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	681                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x161:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	701                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x168:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	709                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x16f:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.long	717                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x176:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	725                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x17d:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.long	733                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x184:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.long	749                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x18b:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	765                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x192:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.long	781                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x199:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.long	797                             # DW_AT_import
	.byte	20                              # Abbrev [20] 0x1a0:0x7 DW_TAG_imported_declaration
	.byte	3                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.long	813                             # DW_AT_import
	.byte	21                              # Abbrev [21] 0x1a7:0x9 DW_TAG_typedef
	.long	697                             # DW_AT_type
	.byte	121                             # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.short	280                             # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x1b1:0x8 DW_TAG_typedef
	.long	441                             # DW_AT_type
	.byte	28                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x1b9:0x8 DW_TAG_typedef
	.long	449                             # DW_AT_type
	.byte	27                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x1c1:0x4 DW_TAG_base_type
	.byte	26                              # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	22                              # Abbrev [22] 0x1c5:0x8 DW_TAG_typedef
	.long	461                             # DW_AT_type
	.byte	31                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x1cd:0x8 DW_TAG_typedef
	.long	469                             # DW_AT_type
	.byte	30                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x1d5:0x4 DW_TAG_base_type
	.byte	29                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	22                              # Abbrev [22] 0x1d9:0x8 DW_TAG_typedef
	.long	481                             # DW_AT_type
	.byte	33                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x1e1:0x8 DW_TAG_typedef
	.long	54                              # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x1e9:0x8 DW_TAG_typedef
	.long	497                             # DW_AT_type
	.byte	36                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x1f1:0x8 DW_TAG_typedef
	.long	505                             # DW_AT_type
	.byte	35                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x1f9:0x4 DW_TAG_base_type
	.byte	34                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	22                              # Abbrev [22] 0x1fd:0x8 DW_TAG_typedef
	.long	449                             # DW_AT_type
	.byte	37                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x205:0x8 DW_TAG_typedef
	.long	505                             # DW_AT_type
	.byte	38                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x20d:0x8 DW_TAG_typedef
	.long	505                             # DW_AT_type
	.byte	39                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x215:0x8 DW_TAG_typedef
	.long	505                             # DW_AT_type
	.byte	40                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x21d:0x8 DW_TAG_typedef
	.long	549                             # DW_AT_type
	.byte	42                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x225:0x8 DW_TAG_typedef
	.long	441                             # DW_AT_type
	.byte	41                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x22d:0x8 DW_TAG_typedef
	.long	565                             # DW_AT_type
	.byte	44                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x235:0x8 DW_TAG_typedef
	.long	461                             # DW_AT_type
	.byte	43                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	54                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x23d:0x8 DW_TAG_typedef
	.long	581                             # DW_AT_type
	.byte	46                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x245:0x8 DW_TAG_typedef
	.long	481                             # DW_AT_type
	.byte	45                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x24d:0x8 DW_TAG_typedef
	.long	597                             # DW_AT_type
	.byte	48                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x255:0x8 DW_TAG_typedef
	.long	497                             # DW_AT_type
	.byte	47                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x25d:0x8 DW_TAG_typedef
	.long	613                             # DW_AT_type
	.byte	50                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x265:0x8 DW_TAG_typedef
	.long	505                             # DW_AT_type
	.byte	49                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x26d:0x8 DW_TAG_typedef
	.long	505                             # DW_AT_type
	.byte	51                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x275:0x8 DW_TAG_typedef
	.long	637                             # DW_AT_type
	.byte	53                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x27d:0x8 DW_TAG_typedef
	.long	178                             # DW_AT_type
	.byte	52                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x285:0x8 DW_TAG_typedef
	.long	653                             # DW_AT_type
	.byte	56                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x28d:0x8 DW_TAG_typedef
	.long	661                             # DW_AT_type
	.byte	55                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x295:0x4 DW_TAG_base_type
	.byte	54                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	22                              # Abbrev [22] 0x299:0x8 DW_TAG_typedef
	.long	673                             # DW_AT_type
	.byte	58                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x2a1:0x8 DW_TAG_typedef
	.long	75                              # DW_AT_type
	.byte	57                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x2a9:0x8 DW_TAG_typedef
	.long	689                             # DW_AT_type
	.byte	61                              # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x2b1:0x8 DW_TAG_typedef
	.long	697                             # DW_AT_type
	.byte	60                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x2b9:0x4 DW_TAG_base_type
	.byte	59                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	22                              # Abbrev [22] 0x2bd:0x8 DW_TAG_typedef
	.long	178                             # DW_AT_type
	.byte	62                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x2c5:0x8 DW_TAG_typedef
	.long	697                             # DW_AT_type
	.byte	63                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x2cd:0x8 DW_TAG_typedef
	.long	697                             # DW_AT_type
	.byte	64                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x2d5:0x8 DW_TAG_typedef
	.long	697                             # DW_AT_type
	.byte	65                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x2dd:0x8 DW_TAG_typedef
	.long	741                             # DW_AT_type
	.byte	67                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x2e5:0x8 DW_TAG_typedef
	.long	637                             # DW_AT_type
	.byte	66                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x2ed:0x8 DW_TAG_typedef
	.long	757                             # DW_AT_type
	.byte	69                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x2f5:0x8 DW_TAG_typedef
	.long	653                             # DW_AT_type
	.byte	68                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x2fd:0x8 DW_TAG_typedef
	.long	773                             # DW_AT_type
	.byte	71                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x305:0x8 DW_TAG_typedef
	.long	673                             # DW_AT_type
	.byte	70                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x30d:0x8 DW_TAG_typedef
	.long	789                             # DW_AT_type
	.byte	73                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x315:0x8 DW_TAG_typedef
	.long	689                             # DW_AT_type
	.byte	72                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x31d:0x8 DW_TAG_typedef
	.long	805                             # DW_AT_type
	.byte	75                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	102                             # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x325:0x8 DW_TAG_typedef
	.long	697                             # DW_AT_type
	.byte	74                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x32d:0x8 DW_TAG_typedef
	.long	697                             # DW_AT_type
	.byte	76                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0x335:0x17 DW_TAG_subprogram
	.byte	1                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	134                             # DW_AT_linkage_name
	.byte	135                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
                                        # DW_AT_external
	.byte	24                              # Abbrev [24] 0x341:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.byte	0                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.long	7195                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	25                              # Abbrev [25] 0x34c:0x8a DW_TAG_subprogram
	.byte	2                               # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	136                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.long	54                              # DW_AT_type
                                        # DW_AT_external
	.byte	26                              # Abbrev [26] 0x35b:0xb DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.byte	194                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.long	971                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x366:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	386                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.long	966                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x372:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.long	7837                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x37e:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.long	7310                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x38a:0xd DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.short	391                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	256                             # DW_AT_decl_line
	.long	3851                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x397:0xd DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.short	392                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	291                             # DW_AT_decl_line
	.long	7853                            # DW_AT_type
	.byte	28                              # Abbrev [28] 0x3a4:0xd DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.short	394                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	300                             # DW_AT_decl_line
	.long	206                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x3b1:0xd DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	64
	.short	395                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.short	321                             # DW_AT_decl_line
	.long	7862                            # DW_AT_type
	.byte	29                              # Abbrev [29] 0x3be:0x8 DW_TAG_imported_module
	.byte	0                               # DW_AT_decl_file
	.short	288                             # DW_AT_decl_line
	.long	79                              # DW_AT_import
	.byte	30                              # Abbrev [30] 0x3c6:0x5 DW_TAG_class_type
	.byte	5                               # DW_AT_calling_convention
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	31                              # Abbrev [31] 0x3cb:0x5 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # Abbrev [32] 0x3d0:0x3 DW_TAG_structure_type
	.short	295                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	7                               # Abbrev [7] 0x3d3:0x2 DW_TAG_structure_type
	.byte	133                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x3d6:0x2d DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	137                             # DW_AT_linkage_name
	.byte	138                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x3e2:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	7210                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x3ee:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	7903                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x3fa:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x3fc:0x5 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x403:0x2d DW_TAG_subprogram
	.byte	4                               # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	139                             # DW_AT_linkage_name
	.byte	140                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x40f:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	4516                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x41b:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	7920                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x427:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x429:0x5 DW_TAG_template_type_parameter
	.long	4531                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x430:0x2d DW_TAG_subprogram
	.byte	5                               # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	141                             # DW_AT_linkage_name
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x43c:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	7937                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x448:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	7953                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x454:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x456:0x5 DW_TAG_template_type_parameter
	.long	202                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x45d:0x2d DW_TAG_subprogram
	.byte	6                               # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	144                             # DW_AT_linkage_name
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x469:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	7970                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x475:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	7986                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x481:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x483:0x5 DW_TAG_template_type_parameter
	.long	7191                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x48a:0x2d DW_TAG_subprogram
	.byte	7                               # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	146                             # DW_AT_linkage_name
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x496:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8003                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x4a2:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8019                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x4ae:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x4b0:0x5 DW_TAG_template_type_parameter
	.long	505                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x4b7:0x2d DW_TAG_subprogram
	.byte	8                               # DW_AT_low_pc
	.long	.Lfunc_end7-.Lfunc_begin7       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	148                             # DW_AT_linkage_name
	.byte	149                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x4c3:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8036                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x4cf:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8052                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x4db:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x4dd:0x5 DW_TAG_template_type_parameter
	.long	469                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x4e4:0x2d DW_TAG_subprogram
	.byte	9                               # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	150                             # DW_AT_linkage_name
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x4f0:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8069                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x4fc:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8085                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x508:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x50a:0x5 DW_TAG_template_type_parameter
	.long	75                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x511:0x2d DW_TAG_subprogram
	.byte	10                              # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	153                             # DW_AT_linkage_name
	.byte	154                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x51d:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8102                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x529:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8118                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x535:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x537:0x5 DW_TAG_template_type_parameter
	.long	7195                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x53e:0x2d DW_TAG_subprogram
	.byte	11                              # DW_AT_low_pc
	.long	.Lfunc_end10-.Lfunc_begin10     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	156                             # DW_AT_linkage_name
	.byte	157                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x54a:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8135                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x556:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8151                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x562:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x564:0x5 DW_TAG_template_type_parameter
	.long	7199                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x56b:0x2d DW_TAG_subprogram
	.byte	12                              # DW_AT_low_pc
	.long	.Lfunc_end11-.Lfunc_begin11     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	159                             # DW_AT_linkage_name
	.byte	160                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x577:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8168                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x583:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8184                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x58f:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x591:0x5 DW_TAG_template_type_parameter
	.long	7203                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x598:0x2d DW_TAG_subprogram
	.byte	13                              # DW_AT_low_pc
	.long	.Lfunc_end12-.Lfunc_begin12     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	161                             # DW_AT_linkage_name
	.byte	162                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x5a4:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8201                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x5b0:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8217                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x5bc:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x5be:0x5 DW_TAG_template_type_parameter
	.long	170                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x5c5:0x2d DW_TAG_subprogram
	.byte	14                              # DW_AT_low_pc
	.long	.Lfunc_end13-.Lfunc_begin13     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	163                             # DW_AT_linkage_name
	.byte	164                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x5d1:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8234                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x5dd:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8250                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x5e9:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x5eb:0x5 DW_TAG_template_type_parameter
	.long	7205                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x5f2:0x2d DW_TAG_subprogram
	.byte	15                              # DW_AT_low_pc
	.long	.Lfunc_end14-.Lfunc_begin14     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	166                             # DW_AT_linkage_name
	.byte	167                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x5fe:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8267                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x60a:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8283                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x616:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x618:0x5 DW_TAG_template_type_parameter
	.long	174                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x61f:0x2d DW_TAG_subprogram
	.byte	16                              # DW_AT_low_pc
	.long	.Lfunc_end15-.Lfunc_begin15     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	169                             # DW_AT_linkage_name
	.byte	170                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x62b:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8300                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x637:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8316                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x643:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x645:0x5 DW_TAG_template_type_parameter
	.long	7210                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x64c:0x32 DW_TAG_subprogram
	.byte	17                              # DW_AT_low_pc
	.long	.Lfunc_end16-.Lfunc_begin16     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	171                             # DW_AT_linkage_name
	.byte	172                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x658:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8333                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x664:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8354                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x670:0xd DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x672:0x5 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	34                              # Abbrev [34] 0x677:0x5 DW_TAG_template_type_parameter
	.long	4531                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x67e:0x2d DW_TAG_subprogram
	.byte	18                              # DW_AT_low_pc
	.long	.Lfunc_end17-.Lfunc_begin17     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	173                             # DW_AT_linkage_name
	.byte	174                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x68a:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	7422                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x696:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8376                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x6a2:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x6a4:0x5 DW_TAG_template_type_parameter
	.long	7225                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x6ab:0x2d DW_TAG_subprogram
	.byte	19                              # DW_AT_low_pc
	.long	.Lfunc_end18-.Lfunc_begin18     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	175                             # DW_AT_linkage_name
	.byte	176                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x6b7:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8393                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x6c3:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8409                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x6cf:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x6d1:0x5 DW_TAG_template_type_parameter
	.long	7230                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x6d8:0x2d DW_TAG_subprogram
	.byte	20                              # DW_AT_low_pc
	.long	.Lfunc_end19-.Lfunc_begin19     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	177                             # DW_AT_linkage_name
	.byte	178                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x6e4:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8426                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x6f0:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8442                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x6fc:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x6fe:0x5 DW_TAG_template_type_parameter
	.long	7235                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x705:0x2d DW_TAG_subprogram
	.byte	21                              # DW_AT_low_pc
	.long	.Lfunc_end20-.Lfunc_begin20     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	179                             # DW_AT_linkage_name
	.byte	180                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x711:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8459                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x71d:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8475                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x729:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x72b:0x5 DW_TAG_template_type_parameter
	.long	7240                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x732:0x2d DW_TAG_subprogram
	.byte	22                              # DW_AT_low_pc
	.long	.Lfunc_end21-.Lfunc_begin21     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	182                             # DW_AT_linkage_name
	.byte	183                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x73e:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8492                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x74a:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8508                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x756:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x758:0x5 DW_TAG_template_type_parameter
	.long	7245                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x75f:0x29 DW_TAG_subprogram
	.byte	23                              # DW_AT_low_pc
	.long	.Lfunc_end22-.Lfunc_begin22     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	184                             # DW_AT_linkage_name
	.byte	185                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x76b:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8525                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x777:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8537                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x783:0x4 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	35                              # Abbrev [35] 0x785:0x1 DW_TAG_template_type_parameter
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x788:0x2d DW_TAG_subprogram
	.byte	24                              # DW_AT_low_pc
	.long	.Lfunc_end23-.Lfunc_begin23     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	188                             # DW_AT_linkage_name
	.byte	189                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x794:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8550                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x7a0:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8566                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x7ac:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x7ae:0x5 DW_TAG_template_type_parameter
	.long	7267                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x7b5:0x2d DW_TAG_subprogram
	.byte	25                              # DW_AT_low_pc
	.long	.Lfunc_end24-.Lfunc_begin24     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	190                             # DW_AT_linkage_name
	.byte	191                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x7c1:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8583                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x7cd:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8599                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x7d9:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x7db:0x5 DW_TAG_template_type_parameter
	.long	697                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x7e2:0x1b DW_TAG_subprogram
	.byte	26                              # DW_AT_low_pc
	.long	.Lfunc_end25-.Lfunc_begin25     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	192                             # DW_AT_linkage_name
	.byte	193                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	36                              # Abbrev [36] 0x7ee:0x7 DW_TAG_template_value_parameter
	.long	202                             # DW_AT_type
	.byte	22                              # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	37                              # Abbrev [37] 0x7f5:0x7 DW_TAG_template_value_parameter
	.long	54                              # DW_AT_type
	.byte	3                               # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x7fd:0x22 DW_TAG_subprogram
	.byte	27                              # DW_AT_low_pc
	.long	.Lfunc_end26-.Lfunc_begin26     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	195                             # DW_AT_linkage_name
	.byte	196                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x809:0x6 DW_TAG_template_type_parameter
	.long	81                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	33                              # Abbrev [33] 0x80f:0xf DW_TAG_GNU_template_parameter_pack
	.byte	194                             # DW_AT_name
	.byte	38                              # Abbrev [38] 0x811:0x6 DW_TAG_template_value_parameter
	.long	81                              # DW_AT_type
	.byte	1                               # DW_AT_const_value
	.byte	38                              # Abbrev [38] 0x817:0x6 DW_TAG_template_value_parameter
	.long	81                              # DW_AT_type
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x81f:0x22 DW_TAG_subprogram
	.byte	28                              # DW_AT_low_pc
	.long	.Lfunc_end27-.Lfunc_begin27     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	197                             # DW_AT_linkage_name
	.byte	198                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x82b:0x6 DW_TAG_template_type_parameter
	.long	100                             # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	33                              # Abbrev [33] 0x831:0xf DW_TAG_GNU_template_parameter_pack
	.byte	194                             # DW_AT_name
	.byte	39                              # Abbrev [39] 0x833:0x6 DW_TAG_template_value_parameter
	.long	100                             # DW_AT_type
	.byte	1                               # DW_AT_const_value
	.byte	39                              # Abbrev [39] 0x839:0x6 DW_TAG_template_value_parameter
	.long	100                             # DW_AT_type
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x841:0x1d DW_TAG_subprogram
	.byte	29                              # DW_AT_low_pc
	.long	.Lfunc_end28-.Lfunc_begin28     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	199                             # DW_AT_linkage_name
	.byte	200                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x84d:0x6 DW_TAG_template_type_parameter
	.long	119                             # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	33                              # Abbrev [33] 0x853:0xa DW_TAG_GNU_template_parameter_pack
	.byte	194                             # DW_AT_name
	.byte	38                              # Abbrev [38] 0x855:0x7 DW_TAG_template_value_parameter
	.long	119                             # DW_AT_type
	.ascii	"\377\001"                      # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x85e:0x22 DW_TAG_subprogram
	.byte	30                              # DW_AT_low_pc
	.long	.Lfunc_end29-.Lfunc_begin29     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	201                             # DW_AT_linkage_name
	.byte	202                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x86a:0x6 DW_TAG_template_type_parameter
	.long	133                             # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	33                              # Abbrev [33] 0x870:0xf DW_TAG_GNU_template_parameter_pack
	.byte	194                             # DW_AT_name
	.byte	38                              # Abbrev [38] 0x872:0x6 DW_TAG_template_value_parameter
	.long	133                             # DW_AT_type
	.byte	1                               # DW_AT_const_value
	.byte	38                              # Abbrev [38] 0x878:0x6 DW_TAG_template_value_parameter
	.long	133                             # DW_AT_type
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0x880:0x1c DW_TAG_subprogram
	.byte	31                              # DW_AT_low_pc
	.long	.Lfunc_end30-.Lfunc_begin30     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	203                             # DW_AT_linkage_name
	.byte	204                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x88c:0x6 DW_TAG_template_type_parameter
	.long	59                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	33                              # Abbrev [33] 0x892:0x9 DW_TAG_GNU_template_parameter_pack
	.byte	194                             # DW_AT_name
	.byte	38                              # Abbrev [38] 0x894:0x6 DW_TAG_template_value_parameter
	.long	59                              # DW_AT_type
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x89c:0x1f DW_TAG_subprogram
	.byte	32                              # DW_AT_low_pc
	.long	.Lfunc_end31-.Lfunc_begin31     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	205                             # DW_AT_linkage_name
	.byte	206                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x8a8:0x6 DW_TAG_template_type_parameter
	.long	7225                            # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	33                              # Abbrev [33] 0x8ae:0xc DW_TAG_GNU_template_parameter_pack
	.byte	194                             # DW_AT_name
	.byte	41                              # Abbrev [41] 0x8b0:0x9 DW_TAG_template_value_parameter
	.long	7225                            # DW_AT_type
	.byte	3                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	159
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x8bb:0x1c DW_TAG_subprogram
	.byte	33                              # DW_AT_low_pc
	.long	.Lfunc_end32-.Lfunc_begin32     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	207                             # DW_AT_linkage_name
	.byte	208                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x8c7:0x6 DW_TAG_template_type_parameter
	.long	7225                            # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	33                              # Abbrev [33] 0x8cd:0x9 DW_TAG_GNU_template_parameter_pack
	.byte	194                             # DW_AT_name
	.byte	38                              # Abbrev [38] 0x8cf:0x6 DW_TAG_template_value_parameter
	.long	7225                            # DW_AT_type
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x8d7:0x1c DW_TAG_subprogram
	.byte	34                              # DW_AT_low_pc
	.long	.Lfunc_end33-.Lfunc_begin33     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	209                             # DW_AT_linkage_name
	.byte	210                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x8e3:0x6 DW_TAG_template_type_parameter
	.long	697                             # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	33                              # Abbrev [33] 0x8e9:0x9 DW_TAG_GNU_template_parameter_pack
	.byte	194                             # DW_AT_name
	.byte	38                              # Abbrev [38] 0x8eb:0x6 DW_TAG_template_value_parameter
	.long	697                             # DW_AT_type
	.byte	1                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x8f3:0x1c DW_TAG_subprogram
	.byte	35                              # DW_AT_low_pc
	.long	.Lfunc_end34-.Lfunc_begin34     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	211                             # DW_AT_linkage_name
	.byte	212                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x8ff:0x6 DW_TAG_template_type_parameter
	.long	7195                            # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	33                              # Abbrev [33] 0x905:0x9 DW_TAG_GNU_template_parameter_pack
	.byte	194                             # DW_AT_name
	.byte	38                              # Abbrev [38] 0x907:0x6 DW_TAG_template_value_parameter
	.long	7195                            # DW_AT_type
	.byte	1                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x90f:0x1c DW_TAG_subprogram
	.byte	36                              # DW_AT_low_pc
	.long	.Lfunc_end35-.Lfunc_begin35     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	213                             # DW_AT_linkage_name
	.byte	214                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x91b:0x6 DW_TAG_template_type_parameter
	.long	505                             # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	33                              # Abbrev [33] 0x921:0x9 DW_TAG_GNU_template_parameter_pack
	.byte	194                             # DW_AT_name
	.byte	39                              # Abbrev [39] 0x923:0x6 DW_TAG_template_value_parameter
	.long	505                             # DW_AT_type
	.byte	1                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x92b:0x1c DW_TAG_subprogram
	.byte	37                              # DW_AT_low_pc
	.long	.Lfunc_end36-.Lfunc_begin36     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	215                             # DW_AT_linkage_name
	.byte	216                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x937:0x6 DW_TAG_template_type_parameter
	.long	75                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	33                              # Abbrev [33] 0x93d:0x9 DW_TAG_GNU_template_parameter_pack
	.byte	194                             # DW_AT_name
	.byte	38                              # Abbrev [38] 0x93f:0x6 DW_TAG_template_value_parameter
	.long	75                              # DW_AT_type
	.byte	1                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x947:0x1c DW_TAG_subprogram
	.byte	38                              # DW_AT_low_pc
	.long	.Lfunc_end37-.Lfunc_begin37     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	217                             # DW_AT_linkage_name
	.byte	218                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x953:0x6 DW_TAG_template_type_parameter
	.long	469                             # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	33                              # Abbrev [33] 0x959:0x9 DW_TAG_GNU_template_parameter_pack
	.byte	194                             # DW_AT_name
	.byte	39                              # Abbrev [39] 0x95b:0x6 DW_TAG_template_value_parameter
	.long	469                             # DW_AT_type
	.byte	1                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x963:0x1c DW_TAG_subprogram
	.byte	39                              # DW_AT_low_pc
	.long	.Lfunc_end38-.Lfunc_begin38     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	219                             # DW_AT_linkage_name
	.byte	220                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x96f:0x6 DW_TAG_template_type_parameter
	.long	178                             # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	33                              # Abbrev [33] 0x975:0x9 DW_TAG_GNU_template_parameter_pack
	.byte	194                             # DW_AT_name
	.byte	38                              # Abbrev [38] 0x977:0x6 DW_TAG_template_value_parameter
	.long	178                             # DW_AT_type
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x97f:0x1c DW_TAG_subprogram
	.byte	40                              # DW_AT_low_pc
	.long	.Lfunc_end39-.Lfunc_begin39     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	221                             # DW_AT_linkage_name
	.byte	222                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x98b:0x6 DW_TAG_template_type_parameter
	.long	449                             # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	33                              # Abbrev [33] 0x991:0x9 DW_TAG_GNU_template_parameter_pack
	.byte	194                             # DW_AT_name
	.byte	39                              # Abbrev [39] 0x993:0x6 DW_TAG_template_value_parameter
	.long	449                             # DW_AT_type
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x99b:0x22 DW_TAG_subprogram
	.byte	41                              # DW_AT_low_pc
	.long	.Lfunc_end40-.Lfunc_begin40     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	223                             # DW_AT_linkage_name
	.byte	224                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x9a7:0x6 DW_TAG_template_type_parameter
	.long	661                             # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	33                              # Abbrev [33] 0x9ad:0xf DW_TAG_GNU_template_parameter_pack
	.byte	194                             # DW_AT_name
	.byte	38                              # Abbrev [38] 0x9af:0x6 DW_TAG_template_value_parameter
	.long	661                             # DW_AT_type
	.byte	1                               # DW_AT_const_value
	.byte	38                              # Abbrev [38] 0x9b5:0x6 DW_TAG_template_value_parameter
	.long	661                             # DW_AT_type
	.byte	2                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0x9bd:0x5a DW_TAG_subprogram
	.byte	42                              # DW_AT_low_pc
	.long	.Lfunc_end41-.Lfunc_begin41     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	226                             # DW_AT_linkage_name
	.byte	227                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x9c9:0x6 DW_TAG_template_type_parameter
	.long	7270                            # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	33                              # Abbrev [33] 0x9cf:0x47 DW_TAG_GNU_template_parameter_pack
	.byte	194                             # DW_AT_name
	.byte	39                              # Abbrev [39] 0x9d1:0x6 DW_TAG_template_value_parameter
	.long	7270                            # DW_AT_type
	.byte	0                               # DW_AT_const_value
	.byte	39                              # Abbrev [39] 0x9d7:0x6 DW_TAG_template_value_parameter
	.long	7270                            # DW_AT_type
	.byte	1                               # DW_AT_const_value
	.byte	39                              # Abbrev [39] 0x9dd:0x6 DW_TAG_template_value_parameter
	.long	7270                            # DW_AT_type
	.byte	6                               # DW_AT_const_value
	.byte	39                              # Abbrev [39] 0x9e3:0x6 DW_TAG_template_value_parameter
	.long	7270                            # DW_AT_type
	.byte	7                               # DW_AT_const_value
	.byte	39                              # Abbrev [39] 0x9e9:0x6 DW_TAG_template_value_parameter
	.long	7270                            # DW_AT_type
	.byte	13                              # DW_AT_const_value
	.byte	39                              # Abbrev [39] 0x9ef:0x6 DW_TAG_template_value_parameter
	.long	7270                            # DW_AT_type
	.byte	14                              # DW_AT_const_value
	.byte	39                              # Abbrev [39] 0x9f5:0x6 DW_TAG_template_value_parameter
	.long	7270                            # DW_AT_type
	.byte	31                              # DW_AT_const_value
	.byte	39                              # Abbrev [39] 0x9fb:0x6 DW_TAG_template_value_parameter
	.long	7270                            # DW_AT_type
	.byte	32                              # DW_AT_const_value
	.byte	39                              # Abbrev [39] 0xa01:0x6 DW_TAG_template_value_parameter
	.long	7270                            # DW_AT_type
	.byte	33                              # DW_AT_const_value
	.byte	39                              # Abbrev [39] 0xa07:0x7 DW_TAG_template_value_parameter
	.long	7270                            # DW_AT_type
	.asciz	"\377"                          # DW_AT_const_value
	.byte	39                              # Abbrev [39] 0xa0e:0x7 DW_TAG_template_value_parameter
	.long	7270                            # DW_AT_type
	.ascii	"\200\177"                      # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xa17:0x2c DW_TAG_subprogram
	.byte	43                              # DW_AT_low_pc
	.long	.Lfunc_end42-.Lfunc_begin42     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	229                             # DW_AT_linkage_name
	.byte	230                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0xa23:0x6 DW_TAG_template_type_parameter
	.long	7274                            # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	33                              # Abbrev [33] 0xa29:0x19 DW_TAG_GNU_template_parameter_pack
	.byte	194                             # DW_AT_name
	.byte	42                              # Abbrev [42] 0xa2b:0x16 DW_TAG_template_value_parameter
	.long	7274                            # DW_AT_type
	.byte	16                              # DW_AT_const_value
	.byte	254
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xa43:0x19 DW_TAG_subprogram
	.byte	44                              # DW_AT_low_pc
	.long	.Lfunc_end43-.Lfunc_begin43     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	231                             # DW_AT_linkage_name
	.byte	232                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0xa4f:0x6 DW_TAG_template_type_parameter
	.long	75                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	43                              # Abbrev [43] 0xa55:0x6 DW_TAG_template_value_parameter
	.long	75                              # DW_AT_type
                                        # DW_AT_default_value
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xa5c:0x2d DW_TAG_subprogram
	.byte	45                              # DW_AT_low_pc
	.long	.Lfunc_end44-.Lfunc_begin44     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	233                             # DW_AT_linkage_name
	.byte	234                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0xa68:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8616                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xa74:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8632                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xa80:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xa82:0x5 DW_TAG_template_type_parameter
	.long	182                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xa89:0x2d DW_TAG_subprogram
	.byte	46                              # DW_AT_low_pc
	.long	.Lfunc_end45-.Lfunc_begin45     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	236                             # DW_AT_linkage_name
	.byte	237                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0xa95:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8649                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xaa1:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8665                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xaad:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xaaf:0x5 DW_TAG_template_type_parameter
	.long	7278                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0xab6:0x2d DW_TAG_subprogram
	.byte	47                              # DW_AT_low_pc
	.long	.Lfunc_end46-.Lfunc_begin46     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	238                             # DW_AT_linkage_name
	.byte	239                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0xac2:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	7516                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xace:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8682                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xada:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xadc:0x5 DW_TAG_template_type_parameter
	.long	966                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	40                              # Abbrev [40] 0xae3:0x2d DW_TAG_subprogram
	.byte	48                              # DW_AT_low_pc
	.long	.Lfunc_end47-.Lfunc_begin47     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	242                             # DW_AT_linkage_name
	.byte	243                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0xaef:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8699                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xafb:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8715                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xb07:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xb09:0x5 DW_TAG_template_type_parameter
	.long	7294                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xb10:0x2d DW_TAG_subprogram
	.byte	49                              # DW_AT_low_pc
	.long	.Lfunc_end48-.Lfunc_begin48     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	244                             # DW_AT_linkage_name
	.byte	245                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0xb1c:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8732                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb28:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8748                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xb34:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xb36:0x5 DW_TAG_template_type_parameter
	.long	7330                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xb3d:0x2d DW_TAG_subprogram
	.byte	50                              # DW_AT_low_pc
	.long	.Lfunc_end49-.Lfunc_begin49     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	246                             # DW_AT_linkage_name
	.byte	247                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0xb49:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8765                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb55:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8781                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xb61:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xb63:0x5 DW_TAG_template_type_parameter
	.long	7341                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xb6a:0x2d DW_TAG_subprogram
	.byte	51                              # DW_AT_low_pc
	.long	.Lfunc_end50-.Lfunc_begin50     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	248                             # DW_AT_linkage_name
	.byte	249                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0xb76:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8798                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xb82:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8814                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xb8e:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xb90:0x5 DW_TAG_template_type_parameter
	.long	7344                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xb97:0x2d DW_TAG_subprogram
	.byte	52                              # DW_AT_low_pc
	.long	.Lfunc_end51-.Lfunc_begin51     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	250                             # DW_AT_linkage_name
	.byte	251                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0xba3:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8831                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xbaf:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8847                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xbbb:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xbbd:0x5 DW_TAG_template_type_parameter
	.long	7352                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	23                              # Abbrev [23] 0xbc4:0x2d DW_TAG_subprogram
	.byte	53                              # DW_AT_low_pc
	.long	.Lfunc_end52-.Lfunc_begin52     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	252                             # DW_AT_linkage_name
	.byte	253                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0xbd0:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8864                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xbdc:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8880                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xbe8:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xbea:0x5 DW_TAG_template_type_parameter
	.long	7357                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	44                              # Abbrev [44] 0xbf1:0x2e DW_TAG_subprogram
	.byte	54                              # DW_AT_low_pc
	.long	.Lfunc_end53-.Lfunc_begin53     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.byte	255                             # DW_AT_linkage_name
	.short	256                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0xbfe:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8897                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xc0a:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8913                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xc16:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xc18:0x5 DW_TAG_template_type_parameter
	.long	72                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xc1f:0x2f DW_TAG_subprogram
	.byte	55                              # DW_AT_low_pc
	.long	.Lfunc_end54-.Lfunc_begin54     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	258                             # DW_AT_linkage_name
	.short	259                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0xc2d:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8930                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xc39:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8946                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xc45:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xc47:0x5 DW_TAG_template_type_parameter
	.long	7367                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xc4e:0x34 DW_TAG_subprogram
	.byte	56                              # DW_AT_low_pc
	.long	.Lfunc_end55-.Lfunc_begin55     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	260                             # DW_AT_linkage_name
	.short	261                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0xc5c:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	8963                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xc68:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	8984                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xc74:0xd DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xc76:0x5 DW_TAG_template_type_parameter
	.long	7370                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0xc7b:0x5 DW_TAG_template_type_parameter
	.long	7370                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xc82:0x34 DW_TAG_subprogram
	.byte	57                              # DW_AT_low_pc
	.long	.Lfunc_end56-.Lfunc_begin56     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	262                             # DW_AT_linkage_name
	.short	263                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0xc90:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9006                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xc9c:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9027                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xca8:0xd DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xcaa:0x5 DW_TAG_template_type_parameter
	.long	7370                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0xcaf:0x5 DW_TAG_template_type_parameter
	.long	7375                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xcb6:0x2f DW_TAG_subprogram
	.byte	58                              # DW_AT_low_pc
	.long	.Lfunc_end57-.Lfunc_begin57     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	264                             # DW_AT_linkage_name
	.short	265                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0xcc4:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9049                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xcd0:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9065                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xcdc:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xcde:0x5 DW_TAG_template_type_parameter
	.long	7380                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xce5:0x2f DW_TAG_subprogram
	.byte	59                              # DW_AT_low_pc
	.long	.Lfunc_end58-.Lfunc_begin58     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	266                             # DW_AT_linkage_name
	.short	267                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0xcf3:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9082                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xcff:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9098                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xd0b:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xd0d:0x5 DW_TAG_template_type_parameter
	.long	7385                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xd14:0x2f DW_TAG_subprogram
	.byte	60                              # DW_AT_low_pc
	.long	.Lfunc_end59-.Lfunc_begin59     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	268                             # DW_AT_linkage_name
	.short	269                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0xd22:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9115                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xd2e:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9131                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xd3a:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xd3c:0x5 DW_TAG_template_type_parameter
	.long	7401                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xd43:0x2f DW_TAG_subprogram
	.byte	61                              # DW_AT_low_pc
	.long	.Lfunc_end60-.Lfunc_begin60     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	270                             # DW_AT_linkage_name
	.short	271                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0xd51:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9148                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xd5d:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9164                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xd69:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xd6b:0x5 DW_TAG_template_type_parameter
	.long	7402                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0xd72:0x2f DW_TAG_subprogram
	.byte	62                              # DW_AT_low_pc
	.long	.Lfunc_end61-.Lfunc_begin61     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	272                             # DW_AT_linkage_name
	.short	273                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0xd80:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9181                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xd8c:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9197                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xd98:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xd9a:0x5 DW_TAG_template_type_parameter
	.long	7407                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0xda1:0x2f DW_TAG_subprogram
	.byte	63                              # DW_AT_low_pc
	.long	.Lfunc_end62-.Lfunc_begin62     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	274                             # DW_AT_linkage_name
	.short	275                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0xdaf:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9214                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xdbb:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9230                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xdc7:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xdc9:0x5 DW_TAG_template_type_parameter
	.long	971                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0xdd0:0x2f DW_TAG_subprogram
	.byte	64                              # DW_AT_low_pc
	.long	.Lfunc_end63-.Lfunc_begin63     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	276                             # DW_AT_linkage_name
	.short	277                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0xdde:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9247                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xdea:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9263                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xdf6:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xdf8:0x5 DW_TAG_template_type_parameter
	.long	7412                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xdff:0x1f DW_TAG_subprogram
	.byte	65                              # DW_AT_low_pc
	.long	.Lfunc_end64-.Lfunc_begin64     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	280                             # DW_AT_linkage_name
	.short	281                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	46                              # Abbrev [46] 0xe0d:0x9 DW_TAG_GNU_template_parameter_pack
	.short	278                             # DW_AT_name
	.byte	34                              # Abbrev [34] 0xe10:0x5 DW_TAG_template_type_parameter
	.long	7210                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	47                              # Abbrev [47] 0xe16:0x7 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.short	279                             # DW_AT_name
                                        # DW_AT_default_value
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xe1e:0x19 DW_TAG_subprogram
	.byte	66                              # DW_AT_low_pc
	.long	.Lfunc_end65-.Lfunc_begin65     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	282                             # DW_AT_linkage_name
	.short	283                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	48                              # Abbrev [48] 0xe2c:0x3 DW_TAG_GNU_template_parameter_pack
	.short	278                             # DW_AT_name
	.byte	47                              # Abbrev [47] 0xe2f:0x7 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.short	279                             # DW_AT_name
                                        # DW_AT_default_value
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xe37:0x19 DW_TAG_subprogram
	.byte	67                              # DW_AT_low_pc
	.long	.Lfunc_end66-.Lfunc_begin66     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	284                             # DW_AT_linkage_name
	.short	285                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	49                              # Abbrev [49] 0xe45:0x7 DW_TAG_template_type_parameter
	.long	7210                            # DW_AT_type
	.short	278                             # DW_AT_name
	.byte	48                              # Abbrev [48] 0xe4c:0x3 DW_TAG_GNU_template_parameter_pack
	.short	279                             # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xe50:0x29 DW_TAG_subprogram
	.byte	68                              # DW_AT_low_pc
	.long	.Lfunc_end67-.Lfunc_begin67     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	286                             # DW_AT_linkage_name
	.short	287                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0xe5e:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	7800                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xe6a:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9280                            # DW_AT_type
	.byte	50                              # Abbrev [50] 0xe76:0x2 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xe79:0x34 DW_TAG_subprogram
	.byte	69                              # DW_AT_low_pc
	.long	.Lfunc_end68-.Lfunc_begin68     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	288                             # DW_AT_linkage_name
	.short	289                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0xe87:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9291                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xe93:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9312                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xe9f:0xd DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xea1:0x5 DW_TAG_template_type_parameter
	.long	7395                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0xea6:0x5 DW_TAG_template_type_parameter
	.long	7395                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xead:0x2f DW_TAG_subprogram
	.byte	70                              # DW_AT_low_pc
	.long	.Lfunc_end69-.Lfunc_begin69     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	291                             # DW_AT_linkage_name
	.short	292                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0xebb:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9334                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xec7:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9350                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xed3:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xed5:0x5 DW_TAG_template_type_parameter
	.long	7417                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0xedc:0x2f DW_TAG_subprogram
	.byte	71                              # DW_AT_low_pc
	.long	.Lfunc_end70-.Lfunc_begin70     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	293                             # DW_AT_linkage_name
	.short	294                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0xeea:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9367                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0xef6:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9383                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0xf02:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0xf04:0x5 DW_TAG_template_type_parameter
	.long	7438                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0xf0b:0x20e DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.byte	77                              # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	51                              # Abbrev [51] 0xf11:0x16 DW_TAG_subprogram
	.byte	78                              # DW_AT_linkage_name
	.byte	79                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0xf16:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0xf1c:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	52                              # Abbrev [52] 0xf21:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0xf27:0x16 DW_TAG_subprogram
	.byte	80                              # DW_AT_linkage_name
	.byte	81                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0xf2c:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0xf32:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	52                              # Abbrev [52] 0xf37:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0xf3d:0x16 DW_TAG_subprogram
	.byte	82                              # DW_AT_linkage_name
	.byte	83                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0xf42:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0xf48:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	52                              # Abbrev [52] 0xf4d:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	53                              # Abbrev [53] 0xf53:0x15 DW_TAG_subprogram
	.byte	84                              # DW_AT_linkage_name
	.byte	85                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.long	4511                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	54                              # Abbrev [54] 0xf5c:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
                                        # DW_AT_default_value
	.byte	19                              # Abbrev [19] 0xf62:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0xf68:0x16 DW_TAG_subprogram
	.byte	89                              # DW_AT_linkage_name
	.byte	90                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0xf6d:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0xf73:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	52                              # Abbrev [52] 0xf78:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0xf7e:0x16 DW_TAG_subprogram
	.byte	91                              # DW_AT_linkage_name
	.byte	92                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0xf83:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0xf89:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	52                              # Abbrev [52] 0xf8e:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0xf94:0x16 DW_TAG_subprogram
	.byte	93                              # DW_AT_linkage_name
	.byte	94                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0xf99:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0xf9f:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	52                              # Abbrev [52] 0xfa4:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0xfaa:0x16 DW_TAG_subprogram
	.byte	95                              # DW_AT_linkage_name
	.byte	96                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0xfaf:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0xfb5:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	52                              # Abbrev [52] 0xfba:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0xfc0:0x16 DW_TAG_subprogram
	.byte	97                              # DW_AT_linkage_name
	.byte	98                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0xfc5:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0xfcb:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	52                              # Abbrev [52] 0xfd0:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0xfd6:0x16 DW_TAG_subprogram
	.byte	99                              # DW_AT_linkage_name
	.byte	100                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0xfdb:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0xfe1:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	52                              # Abbrev [52] 0xfe6:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0xfec:0x16 DW_TAG_subprogram
	.byte	101                             # DW_AT_linkage_name
	.byte	102                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0xff1:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0xff7:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	52                              # Abbrev [52] 0xffc:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0x1002:0x11 DW_TAG_subprogram
	.byte	103                             # DW_AT_linkage_name
	.byte	104                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x1007:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0x100d:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0x1013:0x11 DW_TAG_subprogram
	.byte	105                             # DW_AT_linkage_name
	.byte	106                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x1018:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0x101e:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0x1024:0x16 DW_TAG_subprogram
	.byte	107                             # DW_AT_linkage_name
	.byte	108                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x1029:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0x102f:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	52                              # Abbrev [52] 0x1034:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0x103a:0x16 DW_TAG_subprogram
	.byte	109                             # DW_AT_linkage_name
	.byte	110                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x103f:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0x1045:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	52                              # Abbrev [52] 0x104a:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0x1050:0x16 DW_TAG_subprogram
	.byte	111                             # DW_AT_linkage_name
	.byte	112                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x1055:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0x105b:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	52                              # Abbrev [52] 0x1060:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0x1066:0x11 DW_TAG_subprogram
	.byte	113                             # DW_AT_linkage_name
	.byte	114                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x106b:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0x1071:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0x1077:0x16 DW_TAG_subprogram
	.byte	115                             # DW_AT_linkage_name
	.byte	116                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x107c:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0x1082:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	52                              # Abbrev [52] 0x1087:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0x108d:0x16 DW_TAG_subprogram
	.byte	117                             # DW_AT_linkage_name
	.byte	118                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x1092:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0x1098:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	52                              # Abbrev [52] 0x109d:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	53                              # Abbrev [53] 0x10a3:0x1a DW_TAG_subprogram
	.byte	119                             # DW_AT_linkage_name
	.byte	120                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	125                             # DW_AT_decl_line
	.long	5183                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x10ac:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	52                              # Abbrev [52] 0x10b2:0x5 DW_TAG_formal_parameter
	.long	423                             # DW_AT_type
	.byte	52                              # Abbrev [52] 0x10b7:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	53                              # Abbrev [53] 0x10bd:0x1a DW_TAG_subprogram
	.byte	122                             # DW_AT_linkage_name
	.byte	123                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.long	5183                            # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x10c6:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	52                              # Abbrev [52] 0x10cc:0x5 DW_TAG_formal_parameter
	.long	423                             # DW_AT_type
	.byte	52                              # Abbrev [52] 0x10d1:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0x10d7:0x16 DW_TAG_subprogram
	.byte	124                             # DW_AT_linkage_name
	.byte	125                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x10dc:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	52                              # Abbrev [52] 0x10e2:0x5 DW_TAG_formal_parameter
	.long	5183                            # DW_AT_type
	.byte	52                              # Abbrev [52] 0x10e7:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	51                              # Abbrev [51] 0x10ed:0x16 DW_TAG_subprogram
	.byte	126                             # DW_AT_linkage_name
	.byte	127                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x10f2:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	52                              # Abbrev [52] 0x10f8:0x5 DW_TAG_formal_parameter
	.long	5183                            # DW_AT_type
	.byte	52                              # Abbrev [52] 0x10fd:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	53                              # Abbrev [53] 0x1103:0x15 DW_TAG_subprogram
	.byte	128                             # DW_AT_linkage_name
	.byte	129                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.long	54                              # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x110c:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	19                              # Abbrev [19] 0x1112:0x5 DW_TAG_formal_parameter
	.long	4377                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1119:0x5 DW_TAG_pointer_type
	.long	3851                            # DW_AT_type
	.byte	56                              # Abbrev [56] 0x111e:0x2b DW_TAG_subprogram
	.byte	72                              # DW_AT_low_pc
	.long	.Lfunc_end71-.Lfunc_begin71     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4398                            # DW_AT_object_pointer
	.long	3857                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x112e:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	24                              # Abbrev [24] 0x1138:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.long	54                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1142:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0x1149:0x2b DW_TAG_subprogram
	.byte	73                              # DW_AT_low_pc
	.long	.Lfunc_end72-.Lfunc_begin72     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4441                            # DW_AT_object_pointer
	.long	3879                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x1159:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	24                              # Abbrev [24] 0x1163:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	54                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x116d:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0x1174:0x2b DW_TAG_subprogram
	.byte	74                              # DW_AT_low_pc
	.long	.Lfunc_end73-.Lfunc_begin73     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4484                            # DW_AT_object_pointer
	.long	3901                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x1184:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	24                              # Abbrev [24] 0x118e:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	54                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1198:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x119f:0x5 DW_TAG_pointer_type
	.long	4516                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x11a4:0xf DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.byte	88                              # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x11aa:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x11ac:0x5 DW_TAG_template_type_parameter
	.long	4531                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x11b3:0x4 DW_TAG_base_type
	.byte	87                              # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	56                              # Abbrev [56] 0x11b7:0x21 DW_TAG_subprogram
	.byte	75                              # DW_AT_low_pc
	.long	.Lfunc_end74-.Lfunc_begin74     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4551                            # DW_AT_object_pointer
	.long	3923                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x11c7:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	54                              # Abbrev [54] 0x11d1:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
                                        # DW_AT_default_value
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0x11d8:0x2b DW_TAG_subprogram
	.byte	76                              # DW_AT_low_pc
	.long	.Lfunc_end75-.Lfunc_begin75     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4584                            # DW_AT_object_pointer
	.long	3944                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x11e8:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	24                              # Abbrev [24] 0x11f2:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.long	54                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x11fc:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0x1203:0x2b DW_TAG_subprogram
	.byte	77                              # DW_AT_low_pc
	.long	.Lfunc_end76-.Lfunc_begin76     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4627                            # DW_AT_object_pointer
	.long	3966                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x1213:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	24                              # Abbrev [24] 0x121d:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.long	54                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1227:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0x122e:0x2b DW_TAG_subprogram
	.byte	78                              # DW_AT_low_pc
	.long	.Lfunc_end77-.Lfunc_begin77     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4670                            # DW_AT_object_pointer
	.long	3988                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x123e:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	24                              # Abbrev [24] 0x1248:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.long	54                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1252:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0x1259:0x2b DW_TAG_subprogram
	.byte	79                              # DW_AT_low_pc
	.long	.Lfunc_end78-.Lfunc_begin78     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4713                            # DW_AT_object_pointer
	.long	4010                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x1269:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	24                              # Abbrev [24] 0x1273:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.long	54                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x127d:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0x1284:0x2b DW_TAG_subprogram
	.byte	80                              # DW_AT_low_pc
	.long	.Lfunc_end79-.Lfunc_begin79     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4756                            # DW_AT_object_pointer
	.long	4032                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x1294:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	24                              # Abbrev [24] 0x129e:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.long	54                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x12a8:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0x12af:0x2b DW_TAG_subprogram
	.byte	81                              # DW_AT_low_pc
	.long	.Lfunc_end80-.Lfunc_begin80     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4799                            # DW_AT_object_pointer
	.long	4054                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x12bf:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	24                              # Abbrev [24] 0x12c9:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.long	54                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x12d3:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0x12da:0x2b DW_TAG_subprogram
	.byte	82                              # DW_AT_low_pc
	.long	.Lfunc_end81-.Lfunc_begin81     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4842                            # DW_AT_object_pointer
	.long	4076                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x12ea:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	24                              # Abbrev [24] 0x12f4:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                               # DW_AT_decl_file
	.byte	98                              # DW_AT_decl_line
	.long	54                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x12fe:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0x1305:0x21 DW_TAG_subprogram
	.byte	83                              # DW_AT_low_pc
	.long	.Lfunc_end82-.Lfunc_begin82     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4885                            # DW_AT_object_pointer
	.long	4098                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x1315:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	15                              # Abbrev [15] 0x131f:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0x1326:0x21 DW_TAG_subprogram
	.byte	84                              # DW_AT_low_pc
	.long	.Lfunc_end83-.Lfunc_begin83     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4918                            # DW_AT_object_pointer
	.long	4115                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x1336:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	15                              # Abbrev [15] 0x1340:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0x1347:0x2b DW_TAG_subprogram
	.byte	85                              # DW_AT_low_pc
	.long	.Lfunc_end84-.Lfunc_begin84     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4951                            # DW_AT_object_pointer
	.long	4132                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x1357:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	24                              # Abbrev [24] 0x1361:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.long	54                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x136b:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0x1372:0x2b DW_TAG_subprogram
	.byte	86                              # DW_AT_low_pc
	.long	.Lfunc_end85-.Lfunc_begin85     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4994                            # DW_AT_object_pointer
	.long	4154                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x1382:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	24                              # Abbrev [24] 0x138c:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.long	54                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1396:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0x139d:0x2b DW_TAG_subprogram
	.byte	87                              # DW_AT_low_pc
	.long	.Lfunc_end86-.Lfunc_begin86     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	5037                            # DW_AT_object_pointer
	.long	4176                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x13ad:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	24                              # Abbrev [24] 0x13b7:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.long	54                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x13c1:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0x13c8:0x21 DW_TAG_subprogram
	.byte	88                              # DW_AT_low_pc
	.long	.Lfunc_end87-.Lfunc_begin87     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	5080                            # DW_AT_object_pointer
	.long	4198                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x13d8:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	15                              # Abbrev [15] 0x13e2:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0x13e9:0x2b DW_TAG_subprogram
	.byte	89                              # DW_AT_low_pc
	.long	.Lfunc_end88-.Lfunc_begin88     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	5113                            # DW_AT_object_pointer
	.long	4215                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x13f9:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	24                              # Abbrev [24] 0x1403:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.long	54                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x140d:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	56                              # Abbrev [56] 0x1414:0x2b DW_TAG_subprogram
	.byte	90                              # DW_AT_low_pc
	.long	.Lfunc_end89-.Lfunc_begin89     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	5156                            # DW_AT_object_pointer
	.long	4237                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x1424:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9400                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	24                              # Abbrev [24] 0x142e:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                               # DW_AT_decl_file
	.byte	122                             # DW_AT_decl_line
	.long	54                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1438:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	58                              # Abbrev [58] 0x143f:0x1 DW_TAG_pointer_type
	.byte	59                              # Abbrev [59] 0x1440:0x13 DW_TAG_subprogram
	.byte	91                              # DW_AT_low_pc
	.long	.Lfunc_end90-.Lfunc_begin90     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4259                            # DW_AT_specification
	.byte	15                              # Abbrev [15] 0x144c:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	59                              # Abbrev [59] 0x1453:0x13 DW_TAG_subprogram
	.byte	92                              # DW_AT_low_pc
	.long	.Lfunc_end91-.Lfunc_begin91     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4285                            # DW_AT_specification
	.byte	15                              # Abbrev [15] 0x145f:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	59                              # Abbrev [59] 0x1466:0x27 DW_TAG_subprogram
	.byte	93                              # DW_AT_low_pc
	.long	.Lfunc_end92-.Lfunc_begin92     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4311                            # DW_AT_specification
	.byte	24                              # Abbrev [24] 0x1472:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.byte	0                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.long	5183                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x147c:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.long	54                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x1486:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	59                              # Abbrev [59] 0x148d:0x27 DW_TAG_subprogram
	.byte	94                              # DW_AT_low_pc
	.long	.Lfunc_end93-.Lfunc_begin93     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4333                            # DW_AT_specification
	.byte	24                              # Abbrev [24] 0x1499:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.byte	0                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.long	5183                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0x14a3:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.long	54                              # DW_AT_type
	.byte	15                              # Abbrev [15] 0x14ad:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	59                              # Abbrev [59] 0x14b4:0x13 DW_TAG_subprogram
	.byte	95                              # DW_AT_low_pc
	.long	.Lfunc_end94-.Lfunc_begin94     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	4355                            # DW_AT_specification
	.byte	15                              # Abbrev [15] 0x14c0:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x14c7:0x2f DW_TAG_subprogram
	.byte	96                              # DW_AT_low_pc
	.long	.Lfunc_end95-.Lfunc_begin95     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	296                             # DW_AT_linkage_name
	.short	297                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x14d5:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9405                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x14e1:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9421                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x14ed:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x14ef:0x5 DW_TAG_template_type_parameter
	.long	976                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x14f6:0x2f DW_TAG_subprogram
	.byte	97                              # DW_AT_low_pc
	.long	.Lfunc_end96-.Lfunc_begin96     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	298                             # DW_AT_linkage_name
	.short	299                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x1504:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9438                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1510:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9454                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x151c:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x151e:0x5 DW_TAG_template_type_parameter
	.long	7449                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1525:0x2f DW_TAG_subprogram
	.byte	98                              # DW_AT_low_pc
	.long	.Lfunc_end97-.Lfunc_begin97     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	300                             # DW_AT_linkage_name
	.short	301                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x1533:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9471                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x153f:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9487                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x154b:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x154d:0x5 DW_TAG_template_type_parameter
	.long	7454                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1554:0x13 DW_TAG_subprogram
	.byte	99                              # DW_AT_low_pc
	.long	.Lfunc_end98-.Lfunc_begin98     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	303                             # DW_AT_linkage_name
	.short	304                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x1562:0x4 DW_TAG_GNU_template_template_param
	.byte	20                              # DW_AT_name
	.short	302                             # DW_AT_GNU_template_name
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1567:0x1a DW_TAG_subprogram
	.byte	100                             # DW_AT_low_pc
	.long	.Lfunc_end99-.Lfunc_begin99     # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	305                             # DW_AT_linkage_name
	.short	306                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x1575:0x4 DW_TAG_GNU_template_template_param
	.byte	20                              # DW_AT_name
	.short	302                             # DW_AT_GNU_template_name
	.byte	49                              # Abbrev [49] 0x1579:0x7 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.short	279                             # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1581:0x34 DW_TAG_subprogram
	.byte	102                             # DW_AT_low_pc
	.long	.Lfunc_end101-.Lfunc_begin101   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	310                             # DW_AT_linkage_name
	.short	311                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x158f:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9504                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x159b:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9525                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x15a7:0xd DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x15a9:0x5 DW_TAG_template_type_parameter
	.long	7225                            # DW_AT_type
	.byte	34                              # Abbrev [34] 0x15ae:0x5 DW_TAG_template_type_parameter
	.long	7459                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x15b5:0x2f DW_TAG_subprogram
	.byte	103                             # DW_AT_low_pc
	.long	.Lfunc_end102-.Lfunc_begin102   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	313                             # DW_AT_linkage_name
	.short	314                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x15c3:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9547                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x15cf:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9563                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x15db:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x15dd:0x5 DW_TAG_template_type_parameter
	.long	7464                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x15e4:0x13 DW_TAG_subprogram
	.byte	104                             # DW_AT_low_pc
	.long	.Lfunc_end103-.Lfunc_begin103   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	316                             # DW_AT_linkage_name
	.short	317                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
                                        # DW_AT_external
	.byte	13                              # Abbrev [13] 0x15f2:0x4 DW_TAG_GNU_template_template_param
	.byte	20                              # DW_AT_name
	.short	315                             # DW_AT_GNU_template_name
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x15f7:0x2f DW_TAG_subprogram
	.byte	105                             # DW_AT_low_pc
	.long	.Lfunc_end104-.Lfunc_begin104   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	318                             # DW_AT_linkage_name
	.short	319                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x1605:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9580                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1611:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9596                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x161d:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x161f:0x5 DW_TAG_template_type_parameter
	.long	7478                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1626:0x39 DW_TAG_subprogram
	.byte	106                             # DW_AT_low_pc
	.long	.Lfunc_end105-.Lfunc_begin105   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	320                             # DW_AT_linkage_name
	.short	321                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x1634:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9613                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1640:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9639                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x164c:0x12 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x164e:0x5 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	34                              # Abbrev [34] 0x1653:0x5 DW_TAG_template_type_parameter
	.long	505                             # DW_AT_type
	.byte	34                              # Abbrev [34] 0x1658:0x5 DW_TAG_template_type_parameter
	.long	7483                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x165f:0x2f DW_TAG_subprogram
	.byte	107                             # DW_AT_low_pc
	.long	.Lfunc_end106-.Lfunc_begin106   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	322                             # DW_AT_linkage_name
	.short	323                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x166d:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9666                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1679:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9682                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1685:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1687:0x5 DW_TAG_template_type_parameter
	.long	7488                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x168e:0x2f DW_TAG_subprogram
	.byte	108                             # DW_AT_low_pc
	.long	.Lfunc_end107-.Lfunc_begin107   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	324                             # DW_AT_linkage_name
	.short	325                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x169c:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9699                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x16a8:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9715                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x16b4:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x16b6:0x5 DW_TAG_template_type_parameter
	.long	7500                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x16bd:0x2f DW_TAG_subprogram
	.byte	109                             # DW_AT_low_pc
	.long	.Lfunc_end108-.Lfunc_begin108   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	326                             # DW_AT_linkage_name
	.short	327                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x16cb:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9732                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x16d7:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9748                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x16e3:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x16e5:0x5 DW_TAG_template_type_parameter
	.long	7510                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x16ec:0x2f DW_TAG_subprogram
	.byte	110                             # DW_AT_low_pc
	.long	.Lfunc_end109-.Lfunc_begin109   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	329                             # DW_AT_linkage_name
	.short	330                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x16fa:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9765                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1706:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9781                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1712:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1714:0x5 DW_TAG_template_type_parameter
	.long	7516                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x171b:0x5 DW_TAG_pointer_type
	.long	206                             # DW_AT_type
	.byte	60                              # Abbrev [60] 0x1720:0x1f DW_TAG_subprogram
	.byte	111                             # DW_AT_low_pc
	.long	.Lfunc_end110-.Lfunc_begin110   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	5938                            # DW_AT_object_pointer
	.short	331                             # DW_AT_linkage_name
	.long	212                             # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x1732:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	9798                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	18                              # Abbrev [18] 0x173c:0x2 DW_TAG_template_type_parameter
	.byte	20                              # DW_AT_name
                                        # DW_AT_default_value
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x173f:0x2f DW_TAG_subprogram
	.byte	112                             # DW_AT_low_pc
	.long	.Lfunc_end111-.Lfunc_begin111   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	332                             # DW_AT_linkage_name
	.short	333                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x174d:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9803                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1759:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9819                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1765:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1767:0x5 DW_TAG_template_type_parameter
	.long	7532                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x176e:0x2f DW_TAG_subprogram
	.byte	113                             # DW_AT_low_pc
	.long	.Lfunc_end112-.Lfunc_begin112   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	334                             # DW_AT_linkage_name
	.short	335                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x177c:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9836                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1788:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9852                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1794:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1796:0x5 DW_TAG_template_type_parameter
	.long	7558                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x179d:0x2f DW_TAG_subprogram
	.byte	114                             # DW_AT_low_pc
	.long	.Lfunc_end113-.Lfunc_begin113   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	336                             # DW_AT_linkage_name
	.short	337                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x17ab:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9869                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x17b7:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9885                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x17c3:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x17c5:0x5 DW_TAG_template_type_parameter
	.long	7584                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	61                              # Abbrev [61] 0x17cc:0x19 DW_TAG_subprogram
	.byte	115                             # DW_AT_low_pc
	.long	.Lfunc_end114-.Lfunc_begin114   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	338                             # DW_AT_linkage_name
	.short	339                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.long	7402                            # DW_AT_type
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x17de:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x17e5:0x2f DW_TAG_subprogram
	.byte	116                             # DW_AT_low_pc
	.long	.Lfunc_end115-.Lfunc_begin115   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	340                             # DW_AT_linkage_name
	.short	341                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x17f3:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9902                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x17ff:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9918                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x180b:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x180d:0x5 DW_TAG_template_type_parameter
	.long	7610                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1814:0x2f DW_TAG_subprogram
	.byte	117                             # DW_AT_low_pc
	.long	.Lfunc_end116-.Lfunc_begin116   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	342                             # DW_AT_linkage_name
	.short	343                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x1822:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9935                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x182e:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9951                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x183a:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x183c:0x5 DW_TAG_template_type_parameter
	.long	7615                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1843:0x2f DW_TAG_subprogram
	.byte	118                             # DW_AT_low_pc
	.long	.Lfunc_end117-.Lfunc_begin117   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	344                             # DW_AT_linkage_name
	.short	345                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x1851:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	9968                            # DW_AT_type
	.byte	27                              # Abbrev [27] 0x185d:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	9984                            # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1869:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x186b:0x5 DW_TAG_template_type_parameter
	.long	7637                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1872:0x2f DW_TAG_subprogram
	.byte	119                             # DW_AT_low_pc
	.long	.Lfunc_end118-.Lfunc_begin118   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	346                             # DW_AT_linkage_name
	.short	347                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x1880:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	10001                           # DW_AT_type
	.byte	27                              # Abbrev [27] 0x188c:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	10017                           # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1898:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x189a:0x5 DW_TAG_template_type_parameter
	.long	7643                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x18a1:0x2f DW_TAG_subprogram
	.byte	120                             # DW_AT_low_pc
	.long	.Lfunc_end119-.Lfunc_begin119   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	348                             # DW_AT_linkage_name
	.short	349                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x18af:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	10034                           # DW_AT_type
	.byte	27                              # Abbrev [27] 0x18bb:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	10050                           # DW_AT_type
	.byte	33                              # Abbrev [33] 0x18c7:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x18c9:0x5 DW_TAG_template_type_parameter
	.long	7649                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x18d0:0x2f DW_TAG_subprogram
	.byte	121                             # DW_AT_low_pc
	.long	.Lfunc_end120-.Lfunc_begin120   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	350                             # DW_AT_linkage_name
	.short	351                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x18de:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	10067                           # DW_AT_type
	.byte	27                              # Abbrev [27] 0x18ea:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	10083                           # DW_AT_type
	.byte	33                              # Abbrev [33] 0x18f6:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x18f8:0x5 DW_TAG_template_type_parameter
	.long	7659                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x18ff:0x2f DW_TAG_subprogram
	.byte	122                             # DW_AT_low_pc
	.long	.Lfunc_end121-.Lfunc_begin121   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	352                             # DW_AT_linkage_name
	.short	353                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x190d:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	10100                           # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1919:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	10116                           # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1925:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1927:0x5 DW_TAG_template_type_parameter
	.long	7676                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x192e:0x2f DW_TAG_subprogram
	.byte	123                             # DW_AT_low_pc
	.long	.Lfunc_end122-.Lfunc_begin122   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	354                             # DW_AT_linkage_name
	.short	355                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x193c:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	10133                           # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1948:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	10149                           # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1954:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1956:0x5 DW_TAG_template_type_parameter
	.long	7681                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x195d:0x2f DW_TAG_subprogram
	.byte	124                             # DW_AT_low_pc
	.long	.Lfunc_end123-.Lfunc_begin123   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	356                             # DW_AT_linkage_name
	.short	357                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x196b:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	10166                           # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1977:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	10182                           # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1983:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1985:0x5 DW_TAG_template_type_parameter
	.long	7712                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x198c:0x2f DW_TAG_subprogram
	.byte	125                             # DW_AT_low_pc
	.long	.Lfunc_end124-.Lfunc_begin124   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	358                             # DW_AT_linkage_name
	.short	359                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x199a:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	10199                           # DW_AT_type
	.byte	27                              # Abbrev [27] 0x19a6:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	10215                           # DW_AT_type
	.byte	33                              # Abbrev [33] 0x19b2:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x19b4:0x5 DW_TAG_template_type_parameter
	.long	7735                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x19bb:0x2f DW_TAG_subprogram
	.byte	126                             # DW_AT_low_pc
	.long	.Lfunc_end125-.Lfunc_begin125   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	360                             # DW_AT_linkage_name
	.short	361                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x19c9:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	10232                           # DW_AT_type
	.byte	27                              # Abbrev [27] 0x19d5:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	10248                           # DW_AT_type
	.byte	33                              # Abbrev [33] 0x19e1:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x19e3:0x5 DW_TAG_template_type_parameter
	.long	7402                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x19ea:0x2f DW_TAG_subprogram
	.byte	127                             # DW_AT_low_pc
	.long	.Lfunc_end126-.Lfunc_begin126   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	362                             # DW_AT_linkage_name
	.short	363                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x19f8:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	10265                           # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1a04:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	10281                           # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1a10:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1a12:0x5 DW_TAG_template_type_parameter
	.long	7747                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x1a19:0x30 DW_TAG_subprogram
	.ascii	"\200\001"                      # DW_AT_low_pc
	.long	.Lfunc_end127-.Lfunc_begin127   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	364                             # DW_AT_linkage_name
	.short	365                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x1a28:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	10298                           # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1a34:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	10314                           # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1a40:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1a42:0x5 DW_TAG_template_type_parameter
	.long	7754                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x1a49:0x30 DW_TAG_subprogram
	.ascii	"\201\001"                      # DW_AT_low_pc
	.long	.Lfunc_end128-.Lfunc_begin128   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	366                             # DW_AT_linkage_name
	.short	367                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x1a58:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	10331                           # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1a64:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	10347                           # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1a70:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1a72:0x5 DW_TAG_template_type_parameter
	.long	7766                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1a79:0x16 DW_TAG_subprogram
	.ascii	"\202\001"                      # DW_AT_low_pc
	.long	.Lfunc_end129-.Lfunc_begin129   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	368                             # DW_AT_linkage_name
	.short	369                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
                                        # DW_AT_external
	.byte	15                              # Abbrev [15] 0x1a88:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1a8f:0x30 DW_TAG_subprogram
	.ascii	"\203\001"                      # DW_AT_low_pc
	.long	.Lfunc_end130-.Lfunc_begin130   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	371                             # DW_AT_linkage_name
	.short	372                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x1a9e:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	10364                           # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1aaa:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	10380                           # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1ab6:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1ab8:0x5 DW_TAG_template_type_parameter
	.long	7773                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1abf:0x30 DW_TAG_subprogram
	.ascii	"\204\001"                      # DW_AT_low_pc
	.long	.Lfunc_end131-.Lfunc_begin131   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	374                             # DW_AT_linkage_name
	.short	375                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x1ace:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	10397                           # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1ada:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	10413                           # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1ae6:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1ae8:0x5 DW_TAG_template_type_parameter
	.long	7778                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1aef:0x30 DW_TAG_subprogram
	.ascii	"\205\001"                      # DW_AT_low_pc
	.long	.Lfunc_end132-.Lfunc_begin132   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	377                             # DW_AT_linkage_name
	.short	378                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x1afe:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	10430                           # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1b0a:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	10446                           # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1b16:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1b18:0x5 DW_TAG_template_type_parameter
	.long	7788                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1b1f:0x30 DW_TAG_subprogram
	.ascii	"\206\001"                      # DW_AT_low_pc
	.long	.Lfunc_end133-.Lfunc_begin133   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	379                             # DW_AT_linkage_name
	.short	380                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x1b2e:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	10463                           # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1b3a:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	10479                           # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1b46:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1b48:0x5 DW_TAG_template_type_parameter
	.long	7810                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1b4f:0x30 DW_TAG_subprogram
	.ascii	"\207\001"                      # DW_AT_low_pc
	.long	.Lfunc_end134-.Lfunc_begin134   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	381                             # DW_AT_linkage_name
	.short	382                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x1b5e:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	10496                           # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1b6a:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	10512                           # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1b76:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1b78:0x5 DW_TAG_template_type_parameter
	.long	7819                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x1b7f:0x12 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.byte	133                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.byte	51                              # Abbrev [51] 0x1b85:0xb DW_TAG_subprogram
	.byte	131                             # DW_AT_linkage_name
	.byte	132                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	19                              # Abbrev [19] 0x1b8a:0x5 DW_TAG_formal_parameter
	.long	7057                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1b91:0x5 DW_TAG_pointer_type
	.long	7039                            # DW_AT_type
	.byte	62                              # Abbrev [62] 0x1b96:0x21 DW_TAG_subprogram
	.ascii	"\210\001"                      # DW_AT_low_pc
	.long	.Lfunc_end135-.Lfunc_begin135   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	7081                            # DW_AT_object_pointer
	.short	329                             # DW_AT_decl_line
	.long	7045                            # DW_AT_specification
	.byte	57                              # Abbrev [57] 0x1ba9:0xa DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	487                             # DW_AT_name
	.long	10529                           # DW_AT_type
                                        # DW_AT_artificial
	.byte	32                              # Abbrev [32] 0x1bb3:0x3 DW_TAG_structure_type
	.short	295                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	0                               # End Of Children Mark
	.byte	45                              # Abbrev [45] 0x1bb7:0x30 DW_TAG_subprogram
	.ascii	"\211\001"                      # DW_AT_low_pc
	.long	.Lfunc_end136-.Lfunc_begin136   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	383                             # DW_AT_linkage_name
	.short	297                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	27                              # Abbrev [27] 0x1bc6:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	10534                           # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1bd2:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	10550                           # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1bde:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1be0:0x5 DW_TAG_template_type_parameter
	.long	7091                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x1be7:0x30 DW_TAG_subprogram
	.ascii	"\212\001"                      # DW_AT_low_pc
	.long	.Lfunc_end137-.Lfunc_begin137   # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.short	384                             # DW_AT_linkage_name
	.short	385                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_external
	.byte	27                              # Abbrev [27] 0x1bf6:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.short	390                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	10567                           # DW_AT_type
	.byte	27                              # Abbrev [27] 0x1c02:0xc DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.short	387                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	10583                           # DW_AT_type
	.byte	33                              # Abbrev [33] 0x1c0e:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1c10:0x5 DW_TAG_template_type_parameter
	.long	7821                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x1c17:0x4 DW_TAG_base_type
	.byte	143                             # DW_AT_name
	.byte	4                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x1c1b:0x4 DW_TAG_base_type
	.byte	152                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x1c1f:0x4 DW_TAG_base_type
	.byte	155                             # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x1c23:0x2 DW_TAG_structure_type
	.byte	158                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	55                              # Abbrev [55] 0x1c25:0x5 DW_TAG_pointer_type
	.long	170                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1c2a:0xf DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.byte	168                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x1c30:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1c32:0x5 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1c39:0x5 DW_TAG_pointer_type
	.long	54                              # DW_AT_type
	.byte	63                              # Abbrev [63] 0x1c3e:0x5 DW_TAG_reference_type
	.long	54                              # DW_AT_type
	.byte	64                              # Abbrev [64] 0x1c43:0x5 DW_TAG_rvalue_reference_type
	.long	54                              # DW_AT_type
	.byte	65                              # Abbrev [65] 0x1c48:0x5 DW_TAG_const_type
	.long	54                              # DW_AT_type
	.byte	66                              # Abbrev [66] 0x1c4d:0xc DW_TAG_array_type
	.long	54                              # DW_AT_type
	.byte	67                              # Abbrev [67] 0x1c52:0x6 DW_TAG_subrange_type
	.long	7257                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	68                              # Abbrev [68] 0x1c59:0x4 DW_TAG_base_type
	.byte	181                             # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	14                              # Abbrev [14] 0x1c5d:0x9 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.byte	186                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x1c63:0x2 DW_TAG_structure_type
	.byte	187                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x1c66:0x4 DW_TAG_base_type
	.byte	225                             # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x1c6a:0x4 DW_TAG_base_type
	.byte	228                             # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	16                              # DW_AT_byte_size
	.byte	69                              # Abbrev [69] 0x1c6e:0x10 DW_TAG_structure_type
	.byte	235                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	15                              # Abbrev [15] 0x1c70:0x6 DW_TAG_template_type_parameter
	.long	182                             # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	16                              # Abbrev [16] 0x1c76:0x7 DW_TAG_template_value_parameter
	.long	202                             # DW_AT_type
	.byte	22                              # DW_AT_name
                                        # DW_AT_default_value
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	69                              # Abbrev [69] 0x1c7e:0x10 DW_TAG_structure_type
	.byte	241                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	15                              # Abbrev [15] 0x1c80:0x6 DW_TAG_template_type_parameter
	.long	7310                            # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	16                              # Abbrev [16] 0x1c86:0x7 DW_TAG_template_value_parameter
	.long	202                             # DW_AT_type
	.byte	22                              # DW_AT_name
                                        # DW_AT_default_value
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	14                              # Abbrev [14] 0x1c8e:0x14 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.byte	240                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x1c94:0x6 DW_TAG_template_type_parameter
	.long	966                             # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	16                              # Abbrev [16] 0x1c9a:0x7 DW_TAG_template_value_parameter
	.long	202                             # DW_AT_type
	.byte	22                              # DW_AT_name
                                        # DW_AT_default_value
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	70                              # Abbrev [70] 0x1ca2:0xb DW_TAG_subroutine_type
	.long	54                              # DW_AT_type
	.byte	52                              # Abbrev [52] 0x1ca7:0x5 DW_TAG_formal_parameter
	.long	4531                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	71                              # Abbrev [71] 0x1cad:0x3 DW_TAG_subroutine_type
	.byte	72                              # Abbrev [72] 0x1cae:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	71                              # Abbrev [71] 0x1cb0:0x8 DW_TAG_subroutine_type
	.byte	52                              # Abbrev [52] 0x1cb1:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	72                              # Abbrev [72] 0x1cb6:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	63                              # Abbrev [63] 0x1cb8:0x5 DW_TAG_reference_type
	.long	7240                            # DW_AT_type
	.byte	63                              # Abbrev [63] 0x1cbd:0x5 DW_TAG_reference_type
	.long	7362                            # DW_AT_type
	.byte	55                              # Abbrev [55] 0x1cc2:0x5 DW_TAG_pointer_type
	.long	7240                            # DW_AT_type
	.byte	73                              # Abbrev [73] 0x1cc7:0x3 DW_TAG_unspecified_type
	.short	257                             # DW_AT_name
	.byte	55                              # Abbrev [55] 0x1cca:0x5 DW_TAG_pointer_type
	.long	505                             # DW_AT_type
	.byte	55                              # Abbrev [55] 0x1ccf:0x5 DW_TAG_pointer_type
	.long	7203                            # DW_AT_type
	.byte	65                              # Abbrev [65] 0x1cd4:0x5 DW_TAG_const_type
	.long	5183                            # DW_AT_type
	.byte	55                              # Abbrev [55] 0x1cd9:0x5 DW_TAG_pointer_type
	.long	7390                            # DW_AT_type
	.byte	65                              # Abbrev [65] 0x1cde:0x5 DW_TAG_const_type
	.long	7395                            # DW_AT_type
	.byte	55                              # Abbrev [55] 0x1ce3:0x5 DW_TAG_pointer_type
	.long	7400                            # DW_AT_type
	.byte	74                              # Abbrev [74] 0x1ce8:0x1 DW_TAG_const_type
	.byte	75                              # Abbrev [75] 0x1ce9:0x1 DW_TAG_subroutine_type
	.byte	55                              # Abbrev [55] 0x1cea:0x5 DW_TAG_pointer_type
	.long	7401                            # DW_AT_type
	.byte	55                              # Abbrev [55] 0x1cef:0x5 DW_TAG_pointer_type
	.long	966                             # DW_AT_type
	.byte	55                              # Abbrev [55] 0x1cf4:0x5 DW_TAG_pointer_type
	.long	971                             # DW_AT_type
	.byte	55                              # Abbrev [55] 0x1cf9:0x5 DW_TAG_pointer_type
	.long	7422                            # DW_AT_type
	.byte	76                              # Abbrev [76] 0x1cfe:0x10 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	290                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x1d05:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1d07:0x5 DW_TAG_template_type_parameter
	.long	7225                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	66                              # Abbrev [66] 0x1d0e:0xb DW_TAG_array_type
	.long	7225                            # DW_AT_type
	.byte	77                              # Abbrev [77] 0x1d13:0x5 DW_TAG_subrange_type
	.long	7257                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	63                              # Abbrev [63] 0x1d19:0x5 DW_TAG_reference_type
	.long	7245                            # DW_AT_type
	.byte	55                              # Abbrev [55] 0x1d1e:0x5 DW_TAG_pointer_type
	.long	7245                            # DW_AT_type
	.byte	55                              # Abbrev [55] 0x1d23:0x5 DW_TAG_pointer_type
	.long	7367                            # DW_AT_type
	.byte	76                              # Abbrev [76] 0x1d28:0xe DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	312                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x1d2f:0x6 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	78                              # Abbrev [78] 0x1d36:0x5 DW_TAG_atomic_type
	.long	54                              # DW_AT_type
	.byte	79                              # Abbrev [79] 0x1d3b:0x5 DW_TAG_volatile_type
	.long	7270                            # DW_AT_type
	.byte	80                              # Abbrev [80] 0x1d40:0xc DW_TAG_array_type
                                        # DW_AT_GNU_vector
	.long	54                              # DW_AT_type
	.byte	67                              # Abbrev [67] 0x1d45:0x6 DW_TAG_subrange_type
	.long	7257                            # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	65                              # Abbrev [65] 0x1d4c:0x5 DW_TAG_const_type
	.long	7505                            # DW_AT_type
	.byte	79                              # Abbrev [79] 0x1d51:0x5 DW_TAG_volatile_type
	.long	7225                            # DW_AT_type
	.byte	65                              # Abbrev [65] 0x1d56:0x5 DW_TAG_const_type
	.long	7515                            # DW_AT_type
	.byte	81                              # Abbrev [81] 0x1d5b:0x1 DW_TAG_volatile_type
	.byte	76                              # Abbrev [76] 0x1d5c:0x10 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	328                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x1d63:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1d65:0x5 DW_TAG_template_type_parameter
	.long	966                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	82                              # Abbrev [82] 0x1d6c:0x9 DW_TAG_ptr_to_member_type
	.long	7541                            # DW_AT_type
	.long	7203                            # DW_AT_containing_type
	.byte	71                              # Abbrev [71] 0x1d75:0x7 DW_TAG_subroutine_type
	.byte	19                              # Abbrev [19] 0x1d76:0x5 DW_TAG_formal_parameter
	.long	7548                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1d7c:0x5 DW_TAG_pointer_type
	.long	7553                            # DW_AT_type
	.byte	65                              # Abbrev [65] 0x1d81:0x5 DW_TAG_const_type
	.long	7203                            # DW_AT_type
	.byte	82                              # Abbrev [82] 0x1d86:0x9 DW_TAG_ptr_to_member_type
	.long	7567                            # DW_AT_type
	.long	7203                            # DW_AT_containing_type
	.byte	83                              # Abbrev [83] 0x1d8f:0x7 DW_TAG_subroutine_type
                                        # DW_AT_reference
	.byte	19                              # Abbrev [19] 0x1d90:0x5 DW_TAG_formal_parameter
	.long	7574                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1d96:0x5 DW_TAG_pointer_type
	.long	7579                            # DW_AT_type
	.byte	79                              # Abbrev [79] 0x1d9b:0x5 DW_TAG_volatile_type
	.long	7203                            # DW_AT_type
	.byte	82                              # Abbrev [82] 0x1da0:0x9 DW_TAG_ptr_to_member_type
	.long	7593                            # DW_AT_type
	.long	7203                            # DW_AT_containing_type
	.byte	84                              # Abbrev [84] 0x1da9:0x7 DW_TAG_subroutine_type
                                        # DW_AT_rvalue_reference
	.byte	19                              # Abbrev [19] 0x1daa:0x5 DW_TAG_formal_parameter
	.long	7600                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1db0:0x5 DW_TAG_pointer_type
	.long	7605                            # DW_AT_type
	.byte	65                              # Abbrev [65] 0x1db5:0x5 DW_TAG_const_type
	.long	7579                            # DW_AT_type
	.byte	65                              # Abbrev [65] 0x1dba:0x5 DW_TAG_const_type
	.long	7402                            # DW_AT_type
	.byte	63                              # Abbrev [63] 0x1dbf:0x5 DW_TAG_reference_type
	.long	7620                            # DW_AT_type
	.byte	65                              # Abbrev [65] 0x1dc4:0x5 DW_TAG_const_type
	.long	7625                            # DW_AT_type
	.byte	66                              # Abbrev [66] 0x1dc9:0xc DW_TAG_array_type
	.long	7270                            # DW_AT_type
	.byte	67                              # Abbrev [67] 0x1dce:0x6 DW_TAG_subrange_type
	.long	7257                            # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	65                              # Abbrev [65] 0x1dd5:0x5 DW_TAG_const_type
	.long	7642                            # DW_AT_type
	.byte	85                              # Abbrev [85] 0x1dda:0x1 DW_TAG_subroutine_type
                                        # DW_AT_reference
	.byte	79                              # Abbrev [79] 0x1ddb:0x5 DW_TAG_volatile_type
	.long	7648                            # DW_AT_type
	.byte	86                              # Abbrev [86] 0x1de0:0x1 DW_TAG_subroutine_type
                                        # DW_AT_rvalue_reference
	.byte	65                              # Abbrev [65] 0x1de1:0x5 DW_TAG_const_type
	.long	7654                            # DW_AT_type
	.byte	79                              # Abbrev [79] 0x1de6:0x5 DW_TAG_volatile_type
	.long	7401                            # DW_AT_type
	.byte	65                              # Abbrev [65] 0x1deb:0x5 DW_TAG_const_type
	.long	7664                            # DW_AT_type
	.byte	66                              # Abbrev [66] 0x1df0:0xc DW_TAG_array_type
	.long	7225                            # DW_AT_type
	.byte	67                              # Abbrev [67] 0x1df5:0x6 DW_TAG_subrange_type
	.long	7257                            # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	63                              # Abbrev [63] 0x1dfc:0x5 DW_TAG_reference_type
	.long	7659                            # DW_AT_type
	.byte	63                              # Abbrev [63] 0x1e01:0x5 DW_TAG_reference_type
	.long	7686                            # DW_AT_type
	.byte	65                              # Abbrev [65] 0x1e06:0x5 DW_TAG_const_type
	.long	7691                            # DW_AT_type
	.byte	82                              # Abbrev [82] 0x1e0b:0x9 DW_TAG_ptr_to_member_type
	.long	7700                            # DW_AT_type
	.long	7203                            # DW_AT_containing_type
	.byte	71                              # Abbrev [71] 0x1e14:0x7 DW_TAG_subroutine_type
	.byte	19                              # Abbrev [19] 0x1e15:0x5 DW_TAG_formal_parameter
	.long	7707                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1e1b:0x5 DW_TAG_pointer_type
	.long	7203                            # DW_AT_type
	.byte	70                              # Abbrev [70] 0x1e20:0xb DW_TAG_subroutine_type
	.long	7723                            # DW_AT_type
	.byte	52                              # Abbrev [52] 0x1e25:0x5 DW_TAG_formal_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1e2b:0x5 DW_TAG_pointer_type
	.long	7728                            # DW_AT_type
	.byte	71                              # Abbrev [71] 0x1e30:0x7 DW_TAG_subroutine_type
	.byte	52                              # Abbrev [52] 0x1e31:0x5 DW_TAG_formal_parameter
	.long	4531                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	66                              # Abbrev [66] 0x1e37:0xc DW_TAG_array_type
	.long	7210                            # DW_AT_type
	.byte	67                              # Abbrev [67] 0x1e3c:0x6 DW_TAG_subrange_type
	.long	7257                            # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	71                              # Abbrev [71] 0x1e43:0x7 DW_TAG_subroutine_type
	.byte	52                              # Abbrev [52] 0x1e44:0x5 DW_TAG_formal_parameter
	.long	971                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	71                              # Abbrev [71] 0x1e4a:0xc DW_TAG_subroutine_type
	.byte	52                              # Abbrev [52] 0x1e4b:0x5 DW_TAG_formal_parameter
	.long	979                             # DW_AT_type
	.byte	52                              # Abbrev [52] 0x1e50:0x5 DW_TAG_formal_parameter
	.long	971                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	71                              # Abbrev [71] 0x1e56:0x7 DW_TAG_subroutine_type
	.byte	52                              # Abbrev [52] 0x1e57:0x5 DW_TAG_formal_parameter
	.long	979                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	87                              # Abbrev [87] 0x1e5d:0x5 DW_TAG_base_type
	.short	370                             # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	65                              # Abbrev [65] 0x1e62:0x5 DW_TAG_const_type
	.long	7783                            # DW_AT_type
	.byte	87                              # Abbrev [87] 0x1e67:0x5 DW_TAG_base_type
	.short	373                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	71                              # Abbrev [71] 0x1e6c:0xc DW_TAG_subroutine_type
	.byte	52                              # Abbrev [52] 0x1e6d:0x5 DW_TAG_formal_parameter
	.long	7800                            # DW_AT_type
	.byte	52                              # Abbrev [52] 0x1e72:0x5 DW_TAG_formal_parameter
	.long	7800                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x1e78:0xa DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	376                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	50                              # Abbrev [50] 0x1e7f:0x2 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	0                               # End Of Children Mark
	.byte	82                              # Abbrev [82] 0x1e82:0x9 DW_TAG_ptr_to_member_type
	.long	54                              # DW_AT_type
	.long	7800                            # DW_AT_containing_type
	.byte	88                              # Abbrev [88] 0x1e8b:0x2 DW_TAG_subroutine_type
	.byte	200                             # DW_AT_calling_convention
	.byte	82                              # Abbrev [82] 0x1e8d:0x9 DW_TAG_ptr_to_member_type
	.long	7830                            # DW_AT_type
	.long	7039                            # DW_AT_containing_type
	.byte	71                              # Abbrev [71] 0x1e96:0x7 DW_TAG_subroutine_type
	.byte	19                              # Abbrev [19] 0x1e97:0x5 DW_TAG_formal_parameter
	.long	7057                            # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x1e9d:0x10 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	389                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	89                              # Abbrev [89] 0x1ea4:0x8 DW_TAG_template_value_parameter
	.long	75                              # DW_AT_type
	.short	388                             # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	90                              # Abbrev [90] 0x1ead:0x9 DW_TAG_typedef
	.long	7464                            # DW_AT_type
	.short	393                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	76                              # Abbrev [76] 0x1eb6:0x12 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	397                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	91                              # Abbrev [91] 0x1ebd:0xa DW_TAG_member
	.short	390                             # DW_AT_name
	.long	7880                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x1ec8:0x17 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	396                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x1ecf:0x6 DW_TAG_template_type_parameter
	.long	59                              # DW_AT_type
	.byte	20                              # DW_AT_name
	.byte	33                              # Abbrev [33] 0x1ed5:0x9 DW_TAG_GNU_template_parameter_pack
	.byte	194                             # DW_AT_name
	.byte	38                              # Abbrev [38] 0x1ed7:0x6 DW_TAG_template_value_parameter
	.long	59                              # DW_AT_type
	.byte	0                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1edf:0x5 DW_TAG_pointer_type
	.long	7908                            # DW_AT_type
	.byte	92                              # Abbrev [92] 0x1ee4:0xc DW_TAG_structure_type
	.short	398                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	33                              # Abbrev [33] 0x1ee7:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1ee9:0x5 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1ef0:0x5 DW_TAG_pointer_type
	.long	7925                            # DW_AT_type
	.byte	92                              # Abbrev [92] 0x1ef5:0xc DW_TAG_structure_type
	.short	399                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	33                              # Abbrev [33] 0x1ef8:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1efa:0x5 DW_TAG_template_type_parameter
	.long	4531                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x1f01:0x10 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	400                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x1f08:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1f0a:0x5 DW_TAG_template_type_parameter
	.long	202                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1f11:0x5 DW_TAG_pointer_type
	.long	7958                            # DW_AT_type
	.byte	92                              # Abbrev [92] 0x1f16:0xc DW_TAG_structure_type
	.short	401                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	33                              # Abbrev [33] 0x1f19:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1f1b:0x5 DW_TAG_template_type_parameter
	.long	202                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x1f22:0x10 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	402                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x1f29:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1f2b:0x5 DW_TAG_template_type_parameter
	.long	7191                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1f32:0x5 DW_TAG_pointer_type
	.long	7991                            # DW_AT_type
	.byte	92                              # Abbrev [92] 0x1f37:0xc DW_TAG_structure_type
	.short	403                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	33                              # Abbrev [33] 0x1f3a:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1f3c:0x5 DW_TAG_template_type_parameter
	.long	7191                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x1f43:0x10 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	404                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x1f4a:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1f4c:0x5 DW_TAG_template_type_parameter
	.long	505                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1f53:0x5 DW_TAG_pointer_type
	.long	8024                            # DW_AT_type
	.byte	92                              # Abbrev [92] 0x1f58:0xc DW_TAG_structure_type
	.short	405                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	33                              # Abbrev [33] 0x1f5b:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1f5d:0x5 DW_TAG_template_type_parameter
	.long	505                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x1f64:0x10 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	406                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x1f6b:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1f6d:0x5 DW_TAG_template_type_parameter
	.long	469                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1f74:0x5 DW_TAG_pointer_type
	.long	8057                            # DW_AT_type
	.byte	92                              # Abbrev [92] 0x1f79:0xc DW_TAG_structure_type
	.short	407                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	33                              # Abbrev [33] 0x1f7c:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1f7e:0x5 DW_TAG_template_type_parameter
	.long	469                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x1f85:0x10 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	408                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x1f8c:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1f8e:0x5 DW_TAG_template_type_parameter
	.long	75                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1f95:0x5 DW_TAG_pointer_type
	.long	8090                            # DW_AT_type
	.byte	92                              # Abbrev [92] 0x1f9a:0xc DW_TAG_structure_type
	.short	409                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	33                              # Abbrev [33] 0x1f9d:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1f9f:0x5 DW_TAG_template_type_parameter
	.long	75                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x1fa6:0x10 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	410                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x1fad:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1faf:0x5 DW_TAG_template_type_parameter
	.long	7195                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1fb6:0x5 DW_TAG_pointer_type
	.long	8123                            # DW_AT_type
	.byte	92                              # Abbrev [92] 0x1fbb:0xc DW_TAG_structure_type
	.short	411                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	33                              # Abbrev [33] 0x1fbe:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1fc0:0x5 DW_TAG_template_type_parameter
	.long	7195                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x1fc7:0x10 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	412                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x1fce:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1fd0:0x5 DW_TAG_template_type_parameter
	.long	7199                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1fd7:0x5 DW_TAG_pointer_type
	.long	8156                            # DW_AT_type
	.byte	92                              # Abbrev [92] 0x1fdc:0xc DW_TAG_structure_type
	.short	413                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	33                              # Abbrev [33] 0x1fdf:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1fe1:0x5 DW_TAG_template_type_parameter
	.long	7199                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x1fe8:0x10 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	414                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x1fef:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x1ff1:0x5 DW_TAG_template_type_parameter
	.long	7203                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x1ff8:0x5 DW_TAG_pointer_type
	.long	8189                            # DW_AT_type
	.byte	92                              # Abbrev [92] 0x1ffd:0xc DW_TAG_structure_type
	.short	415                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	33                              # Abbrev [33] 0x2000:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x2002:0x5 DW_TAG_template_type_parameter
	.long	7203                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x2009:0x10 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	416                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x2010:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x2012:0x5 DW_TAG_template_type_parameter
	.long	170                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x2019:0x5 DW_TAG_pointer_type
	.long	8222                            # DW_AT_type
	.byte	92                              # Abbrev [92] 0x201e:0xc DW_TAG_structure_type
	.short	417                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	33                              # Abbrev [33] 0x2021:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x2023:0x5 DW_TAG_template_type_parameter
	.long	170                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x202a:0x10 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	418                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x2031:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x2033:0x5 DW_TAG_template_type_parameter
	.long	7205                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x203a:0x5 DW_TAG_pointer_type
	.long	8255                            # DW_AT_type
	.byte	92                              # Abbrev [92] 0x203f:0xc DW_TAG_structure_type
	.short	419                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	33                              # Abbrev [33] 0x2042:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x2044:0x5 DW_TAG_template_type_parameter
	.long	7205                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x204b:0x10 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	420                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x2052:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x2054:0x5 DW_TAG_template_type_parameter
	.long	174                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x205b:0x5 DW_TAG_pointer_type
	.long	8288                            # DW_AT_type
	.byte	92                              # Abbrev [92] 0x2060:0xc DW_TAG_structure_type
	.short	421                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	33                              # Abbrev [33] 0x2063:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x2065:0x5 DW_TAG_template_type_parameter
	.long	174                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x206c:0x10 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	422                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x2073:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x2075:0x5 DW_TAG_template_type_parameter
	.long	7210                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x207c:0x5 DW_TAG_pointer_type
	.long	8321                            # DW_AT_type
	.byte	92                              # Abbrev [92] 0x2081:0xc DW_TAG_structure_type
	.short	423                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	33                              # Abbrev [33] 0x2084:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x2086:0x5 DW_TAG_template_type_parameter
	.long	7210                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x208d:0x15 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	424                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x2094:0xd DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x2096:0x5 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	34                              # Abbrev [34] 0x209b:0x5 DW_TAG_template_type_parameter
	.long	4531                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x20a2:0x5 DW_TAG_pointer_type
	.long	8359                            # DW_AT_type
	.byte	92                              # Abbrev [92] 0x20a7:0x11 DW_TAG_structure_type
	.short	425                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	33                              # Abbrev [33] 0x20aa:0xd DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x20ac:0x5 DW_TAG_template_type_parameter
	.long	54                              # DW_AT_type
	.byte	34                              # Abbrev [34] 0x20b1:0x5 DW_TAG_template_type_parameter
	.long	4531                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x20b8:0x5 DW_TAG_pointer_type
	.long	8381                            # DW_AT_type
	.byte	92                              # Abbrev [92] 0x20bd:0xc DW_TAG_structure_type
	.short	426                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	33                              # Abbrev [33] 0x20c0:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x20c2:0x5 DW_TAG_template_type_parameter
	.long	7225                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	76                              # Abbrev [76] 0x20c9:0x10 DW_TAG_structure_type
	.byte	5                               # DW_AT_calling_convention
	.short	427                             # DW_AT_name
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	33                              # Abbrev [33] 0x20d0:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34                              # Abbrev [34] 0x20d2:0x5 DW_TAG_template_type_parameter
	.long	7230                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	55                              # Abbrev [55] 0x20d9:0x5 DW_TAG_pointer_type
	.long	8414                            # DW_AT_type
	.byte	92                              # Abbrev [92] 0x20de:0xc DW_TAG_structure_type
	.short	428                             # DW_AT_name
                                        # DW_AT_declaration
	.byte	33                              # Abbrev [33] 0x20e1:0x8 DW_TAG_GNU_template_parameter_pack
	.byte	86                              # DW_AT_name
	.byte	34      