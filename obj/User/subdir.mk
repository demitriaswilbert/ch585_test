################################################################################
# MRS Version: 2.5.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../User/UART.c \
../User/ch585_usbhs_device.c \
../User/main.c \
../User/usb_desc.c 

C_DEPS += \
./User/UART.d \
./User/ch585_usbhs_device.d \
./User/main.d \
./User/usb_desc.d 

OBJS += \
./User/UART.o \
./User/ch585_usbhs_device.o \
./User/main.o \
./User/usb_desc.o 

DIR_OBJS += \
./User/*.o \

DIR_DEPS += \
./User/*.d \

DIR_EXPANDS += \
./User/*.253r.expand \


# Each subdirectory must supply rules for building sources it contributes
User/%.o: ../User/%.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

