##CROSS_PREFIX = riscv32-unknown-elf
##CC = $(CROSS_PREFIX)-gcc
##G++ = $(CROSS_PREFIX)-g++
##AS = $(CROSS_PREFIX)-as
##LD = $(CROSS_PREFIX)-ld
##NM = $(CROSS_PREFIX)-nm
##OBJCOPY = $(CROSS_PREFIX)-objcopy
##OBJDUMP = $(CROSS_PREFIX)-objdump
## ==========
#HPU_LLVM_BIN_DIR = $(shell llvm-config --bindir)
HPU_LLVM_BIN_DIR = /home/gaomh/Projects/hpu_llvm/build/bin
CROSS_PREFIX = $(HPU_LLVM_BIN_DIR)/
#OPTION = --target=riscv32 -mabi=ilp32 -mno-relax
OPTION = --target=riscv32 
infrastructure = $(TMP_OUT_DIR)/_intr.o
OPTIMIZE		= -Os
## ==========

LLC = $(CROSS_PREFIX)llc
CC = $(CROSS_PREFIX)clang
LD = $(CROSS_PREFIX)ld.lld
MC = $(CROSS_PREFIX)llvm-mc
OBJDUMP = $(CROSS_PREFIX)llvm-objdump
OBJCOPY = $(CROSS_PREFIX)llvm-objcopy
## ==========

schd_config = ./schd_config.lds
schd_obj = init.o conv3s1_verify.o
schd_output = schd_lib

host_config = ./host_config.lds
host_obj = host_sample.o
host_output = host_lib

schd_test: $(schd_obj)
	mkdir -p output
	#$(LD) $(schd_obj)  -o output/$(schd_output).elf -T $(schd_config) -nostdlib --gc-sections
	$(LD) $(schd_obj)  -o output/$(schd_output).elf -T $(schd_config) -nostdlib 	# -static -lgcc -Wl,--nmagic -Wl,--gc-sections
	$(OBJDUMP) -DSxtd  --arch=riscv32 output/$(schd_output).elf > output/$(schd_output).asm
	$(OBJCOPY) -O binary output/$(schd_output).elf output/$(schd_output).bin
	##$(OBJCOPY) -O verilog output/$(schd_output).elf output/$(schd_output).dat
	$(OBJCOPY) -O ihex output/$(schd_output).elf output/$(schd_output).hex

host_test: $(host_obj)
	mkdir -p output
	$(LD) $(host_obj) -o output/$(host_output).elf -T $(host_config)  -nostdlib --gc-sections
	$(OBJDUMP) -DSxtd output/$(host_output).elf > output/$(host_output).asm

init.o:
	 $(CC) --target=riscv32 -march=rv32g  -c  -o $@  src/init.s
host_sample.o:
	 $(CC)  -c -o $@  $(OPTION) src/host_sample.c
conv3s1_verify.o:
	$(CC) --target=riscv32 -march=rv32g  -O2 -c  -o $@  src/conv3s1_verify.c

#conv3s1_verify.o: conv3s1_verify.s
#	$(MC)    --triple=riscv32 -filetype=obj -o $@ $<
#
#conv3s1_verify.s : conv3s1_verify.ll
#	$(LLC)  -O2 --march=riscv32  -mattr=+m $<
#
#conv3s1_verify.ll :
#	$(CC) --target=riscv32 -S -emit-llvm  -O2 src/conv3s1_verify.c



clean:
	rm -rf src/temp.s src/temp_t.s
	rm -rf $(schd_obj) $(host_obj) output/*
