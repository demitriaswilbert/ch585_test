################################################################################
# MRS Version: 2.5.0
# Automatically-generated file. Do not edit!
################################################################################
-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include User/subdir.mk
-include StdPeriphDriver/subdir.mk
-include Startup/subdir.mk
-include LIB/subdir.mk
-include HAL/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
SimulateCDC.bin \
SimulateCDC.hex \

SECONDARY_LIST += \
SimulateCDC.lst \

SECONDARY_SIZE += \
SimulateCDC.siz \


# All Target
all: 
	$(MAKE) --no-print-directory main-build 
	$(MAKE) --no-print-directory post-build 

main-build: SimulateCDC.elf secondary-outputs

post-build: 
	 riscv-wch-elf-objcopy -O ihex "SimulateCDC.elf" "SimulateCDC.hex" && riscv-wch-elf-objcopy -O binary "SimulateCDC.elf" "SimulateCDC.bin"

# Tool invocations
SimulateCDC.elf: $(OBJS) $(USER_OBJS_ESCAPE)
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -T "c:\Users\Dewe\Downloads\ch585-main\ch585-main\EVT\EXAM\SRC\Ld\Link.ld" -nostartfiles -Xlinker --gc-sections -L"c:\Users\Dewe\Downloads\ch585-main\ch585-main\EVT\EXAM\SRC\StdPeriphDriver" -L"c:\Users\Dewe\Downloads\ch585-main\ch585-main\EVT\EXAM\BLE\LIB" -Wl,-Map,"SimulateCDC.map" --specs=nano.specs --specs=nosys.specs -o "SimulateCDC.elf" $(OBJS) $(LIBS) -lprintf
SimulateCDC.bin: SimulateCDC.elf
	@	riscv-wch-elf-objcopy -O binary "SimulateCDC.elf" "SimulateCDC.bin"
SimulateCDC.hex: SimulateCDC.elf
	@	riscv-wch-elf-objcopy -O ihex "SimulateCDC.elf" "SimulateCDC.hex"
SimulateCDC.lst: SimulateCDC.elf
	@	riscv-wch-elf-objdump --all-headers --demangle --disassemble "SimulateCDC.elf" > "SimulateCDC.lst"
SimulateCDC.siz: SimulateCDC.elf
	riscv-wch-elf-size --format=berkeley "SimulateCDC.elf"

# Other Targets
clean:
	-$(RM) $(DIR_OBJS) $(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE) SimulateCDC.elf
	-$(RM) $(DIR_EXPANDS) $(CALLGRAPH_DOT)
	-$(RM) $(DIR_DEPS)
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets