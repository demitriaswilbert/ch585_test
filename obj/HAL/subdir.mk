################################################################################
# MRS Version: 2.5.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/KEY.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/LED.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/MCU.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/RTC.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/SLEEP.c 

C_DEPS += \
./HAL/KEY.d \
./HAL/LED.d \
./HAL/MCU.d \
./HAL/RTC.d \
./HAL/SLEEP.d 

OBJS += \
./HAL/KEY.o \
./HAL/LED.o \
./HAL/MCU.o \
./HAL/RTC.o \
./HAL/SLEEP.o 

DIR_OBJS += \
./HAL/*.o \

DIR_DEPS += \
./HAL/*.d \

DIR_EXPANDS += \
./HAL/*.253r.expand \


# Each subdirectory must supply rules for building sources it contributes
HAL/KEY.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/KEY.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
HAL/LED.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/LED.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
HAL/MCU.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/MCU.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
HAL/RTC.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/RTC.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
HAL/SLEEP.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/SLEEP.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

