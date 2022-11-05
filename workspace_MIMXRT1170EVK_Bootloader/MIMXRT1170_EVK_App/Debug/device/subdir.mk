################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../device/system_MIMXRT1176_cm7.c 

C_DEPS += \
./device/system_MIMXRT1176_cm7.d 

OBJS += \
./device/system_MIMXRT1176_cm7.o 


# Each subdirectory must supply rules for building sources it contributes
device/%.o: ../device/%.c device/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=c11 -D__NEWLIB__ -DCPU_MIMXRT1176DVMAA -DCPU_MIMXRT1176DVMAA_cm7 -DSDK_OS_BAREMETAL -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DSERIAL_PORT_TYPE_UART=1 -DXIP_BOOT_HEADER_DCD_ENABLE=0 -DXIP_BOOT_HEADER_XMCD_ENABLE=1 -DSDK_DEBUGCONSOLE=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\board" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\source" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\drivers" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\xip" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\device" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\CMSIS" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\component\serial_manager" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\component\uart" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\utilities" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\component\lists" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\startup" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-device

clean-device:
	-$(RM) ./device/system_MIMXRT1176_cm7.d ./device/system_MIMXRT1176_cm7.o

.PHONY: clean-device

