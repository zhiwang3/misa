#OPT = -Xclang -disable-O0-optnone
OPT = -O2
DEBUG = --debug-only=isel
#DEBUG = #--debug-only=regalloc
#DEBUG = -stop-after=slotindexes


.PHONY:all

all : sched.ll sched.s sched.o sched.asm

llctest:
	../build_aux/bin/llc  --print-after-all log/sched.ll

dagview:
	../build_aux/bin/llc  -view-dag-combine1-dags log/sched.ll

test:
	../build/bin/clang --target=riscv32  -O2 -S  -mllvm -debug-pass=Arguments -o log/sched.s src/sched.c

print_all_ir_after_pass:
	../build_aux/bin/clang --target=riscv32 -S -emit-llvm --print-after-all ${OPT} src/test_sched.c
	
gaomh_ll:
	../build_aux/bin/clang --target=riscv32 -S -emit-llvm ${OPT} src/test_sched.c

debug_sched: 
	../build_aux/bin/llc --march=riscv32 --debug-only=riscv-isel log/sched.ll

debug_newsched: 
	../build_aux/bin/llc --march=riscv32 --debug-only=riscv-isel log/test_sched.ll

t1:
	../llvm/cmake-build-debug/bin/llc --march=riscv32 --stop-after=riscv-isel  --print-after=riscv-isel --print-before=riscv-isel -o log/new.ll -mattr=+m log/sched.ll

#------------------------ debug new_sched --------------------------------------------
test_sched:
	../build/bin/clang --target=riscv32  -O2 -S  -mllvm -debug-pass=Arguments  src/test_sched.c

ctoll:
#	../llvm/cmake-build-debug/bin/llc --march=riscv32 -S -emit-llvm -o midresult/test_sched.ll src/test_sched.c
	../build_aux/bin/clang --target=riscv32 -S -emit-llvm ${OPT} -o midresult/test_sched.ll src/test_sched.c

all_pass:
	../build_aux/bin/llc --march=riscv32 -debug-pass=Arguments -mattr=+m midresult/test_sched.ll

before_isel:
	../build_aux/bin/llc --march=riscv32 --stop-after=lazy-block-freq -mattr=+m midresult/test_sched.ll

debug_schedule:
	../build_aux/bin/llc --march=riscv32  --debug-only=machine-scheduler -mattr=+m  midresult/test_sched.ll

after_isel:
	../llvm/cmake-build-debug/bin/llc --march=riscv32 --stop-after=riscv-isel  --print-after=riscv-isel --print-before=riscv-isel -o log/new.ll -mattr=+m midresult/test_sched.ll

lltos:
	../build_aux/bin/llc --march=riscv32 -mattr=+m  midresult/test_sched.ll

# ----------------------- original makefile content ------------------------------------------
sched.ll : sched.c
	../build/bin/clang --target=riscv32 -S -emit-llvm ${OPT} sched.c

sched.s : sched.ll
	../build/bin/llc --march=riscv32 ${DEBUG} -mattr=+m sched.ll

sched.o :
	../build/bin/llvm-mc -triple=riscv32 -filetype=obj log/sched.s -o log/sched.o

sched.asm :
	../build/bin/llvm-objdump -d log/sched.o

#all : axpy-cuda-nvptx64-nvidia-cuda-sm_35.ll axpy.ll

#axpy-cuda-nvptx64-nvidia-cuda-sm_35.ll axpy.ll : axpy.cu
#	clang++ --cuda-gpu-arch=sm_35 -I/usr/local/cuda/include -S -emit-llvm $^

clean:
	rm -rf *.ll
	rm -rf *.s
#	rm -rf axpy
