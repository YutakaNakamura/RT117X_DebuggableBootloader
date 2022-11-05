################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../board/board.c \
../board/clock_config.c \
../board/dcd.c \
../board/peripherals.c \
../board/pin_mux.c \
../board/xmcd.c 

C_DEPS += \
./board/board.d \
./board/clock_config.d \
./board/dcd.d \
./board/peripherals.d \
./board/pin_mux.d \
./board/xmcd.d 

OBJS += \
./board/board.o \
./board/clock_config.o \
./board/dcd.o \
./board/peripherals.o \
./board/pin_mux.o \
./board/xmcd.o 


# Each subdirectory must supply rules for building sources it contributes
board/%.o: ../board/%.c board/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=c11 -D__NEWLIB__ -DCPU_MIMXRT1176DVMAA -DCPU_MIMXRT1176DVMAA_cm7 -DSDK_OS_BAREMETAL -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DSERIAL_PORT_TYPE_UART=1 -DXIP_BOOT_HEADER_DCD_ENABLE=0 -DXIP_BOOT_HEADER_XMCD_ENABLE=1 -DSDK_DEBUGCONSOLE=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\board" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\source" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\drivers" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\xip" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\device" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\CMSIS" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\component\serial_manager" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\component\uart" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\utilities" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\component\lists" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\startup" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-board

clean-board:
	-$(RM) ./board/board.d ./board/board.o ./board/clock_config.d ./board/clock_config.o ./board/dcd.d ./board/dcd.o ./board/peripherals.d ./board/peripherals.o ./board/pin_mux.d ./board/pin_mux.o ./board/xmcd.d ./board/xmcd.o

.PHONY: clean-board

