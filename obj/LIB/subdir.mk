################################################################################
# MRS Version: 2.5.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB/ble_task_scheduler.S 

S_UPPER_DEPS += \
./LIB/ble_task_scheduler.d 

OBJS += \
./LIB/ble_task_scheduler.o 

DIR_OBJS += \
./LIB/*.o \

DIR_DEPS += \
./LIB/*.d \

DIR_EXPANDS += \
./LIB/*.253r.expand \


# Each subdirectory must supply rules for building sources it contributes
LIB/ble_task_scheduler.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB/ble_task_scheduler.S
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

