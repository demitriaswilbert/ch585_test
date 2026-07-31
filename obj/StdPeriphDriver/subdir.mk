################################################################################
# MRS Version: 2.5.0
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_adc.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_clk.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_flash.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_gpio.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_i2c.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_lcd.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_pwm.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_pwr.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_spi0.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_spi1.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_sys.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_timer0.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_timer1.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_timer2.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_timer3.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_uart0.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_uart1.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_uart2.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_uart3.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_usbdev.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_usbhostBase.c \
c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_usbhostClass.c 

C_DEPS += \
./StdPeriphDriver/CH58x_adc.d \
./StdPeriphDriver/CH58x_clk.d \
./StdPeriphDriver/CH58x_flash.d \
./StdPeriphDriver/CH58x_gpio.d \
./StdPeriphDriver/CH58x_i2c.d \
./StdPeriphDriver/CH58x_lcd.d \
./StdPeriphDriver/CH58x_pwm.d \
./StdPeriphDriver/CH58x_pwr.d \
./StdPeriphDriver/CH58x_spi0.d \
./StdPeriphDriver/CH58x_spi1.d \
./StdPeriphDriver/CH58x_sys.d \
./StdPeriphDriver/CH58x_timer0.d \
./StdPeriphDriver/CH58x_timer1.d \
./StdPeriphDriver/CH58x_timer2.d \
./StdPeriphDriver/CH58x_timer3.d \
./StdPeriphDriver/CH58x_uart0.d \
./StdPeriphDriver/CH58x_uart1.d \
./StdPeriphDriver/CH58x_uart2.d \
./StdPeriphDriver/CH58x_uart3.d \
./StdPeriphDriver/CH58x_usbdev.d \
./StdPeriphDriver/CH58x_usbhostBase.d \
./StdPeriphDriver/CH58x_usbhostClass.d 

OBJS += \
./StdPeriphDriver/CH58x_adc.o \
./StdPeriphDriver/CH58x_clk.o \
./StdPeriphDriver/CH58x_flash.o \
./StdPeriphDriver/CH58x_gpio.o \
./StdPeriphDriver/CH58x_i2c.o \
./StdPeriphDriver/CH58x_lcd.o \
./StdPeriphDriver/CH58x_pwm.o \
./StdPeriphDriver/CH58x_pwr.o \
./StdPeriphDriver/CH58x_spi0.o \
./StdPeriphDriver/CH58x_spi1.o \
./StdPeriphDriver/CH58x_sys.o \
./StdPeriphDriver/CH58x_timer0.o \
./StdPeriphDriver/CH58x_timer1.o \
./StdPeriphDriver/CH58x_timer2.o \
./StdPeriphDriver/CH58x_timer3.o \
./StdPeriphDriver/CH58x_uart0.o \
./StdPeriphDriver/CH58x_uart1.o \
./StdPeriphDriver/CH58x_uart2.o \
./StdPeriphDriver/CH58x_uart3.o \
./StdPeriphDriver/CH58x_usbdev.o \
./StdPeriphDriver/CH58x_usbhostBase.o \
./StdPeriphDriver/CH58x_usbhostClass.o 

DIR_OBJS += \
./StdPeriphDriver/*.o \

DIR_DEPS += \
./StdPeriphDriver/*.d \

DIR_EXPANDS += \
./StdPeriphDriver/*.253r.expand \


# Each subdirectory must supply rules for building sources it contributes
StdPeriphDriver/CH58x_adc.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_adc.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_clk.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_clk.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_flash.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_flash.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_gpio.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_gpio.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_i2c.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_i2c.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_lcd.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_lcd.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_pwm.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_pwm.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_pwr.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_pwr.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_spi0.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_spi0.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_spi1.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_spi1.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_sys.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_sys.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_timer0.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_timer0.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_timer1.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_timer1.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_timer2.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_timer2.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_timer3.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_timer3.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_uart0.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_uart0.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_uart1.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_uart1.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_uart2.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_uart2.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_uart3.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_uart3.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_usbdev.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_usbdev.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_usbhostBase.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_usbhostBase.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
StdPeriphDriver/CH58x_usbhostClass.o: c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/CH58x_usbhostClass.c
	@	riscv-wch-elf-gcc -march=rv32imc_zba_zbb_zbc_zbs -mabi=ilp32 -msmall-data-limit=8 -msave-restore -fmax-errors=20 -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common -Wunused -Wuninitialized -g -DDEBUG=0 -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/RVMSIS" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/USB/USBHS/DEVICE/SimulateCDC/User" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/SRC/StdPeriphDriver/inc" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/HAL/include" -I"c:/Users/Dewe/Downloads/ch585-main/ch585-main/EVT/EXAM/BLE/LIB" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

