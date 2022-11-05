################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../xip/evkmimxrt1170_flexspi_nor_config.c \
../xip/fsl_flexspi_nor_boot.c 

C_DEPS += \
./xip/evkmimxrt1170_flexspi_nor_config.d \
./xip/fsl_flexspi_nor_boot.d 

OBJS += \
./xip/evkmimxrt1170_flexspi_nor_config.o \
./xip/fsl_flexspi_nor_boot.o 


# Each subdirectory must supply rules for building sources it contributes
xip/%.o: ../xip/%.c xip/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=c11 -D__NEWLIB__ -DCPU_MIMXRT1176DVMAA -DCPU_MIMXRT1176DVMAA_cm7 -DSDK_OS_BAREMETAL -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DSERIAL_PORT_TYPE_UART=1 -DXIP_BOOT_HEADER_DCD_ENABLE=0 -DXIP_BOOT_HEADER_XMCD_ENABLE=1 -DSDK_DEBUGCONSOLE=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\board" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\source" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\drivers" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\xip" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\device" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\CMSIS" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\component\serial_manager" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\component\uart" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\utilities" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\component\lists" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_App\startup" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-xip

clean-xip:
	-$(RM) ./xip/evkmimxrt1170_flexspi_nor_config.d ./xip/evkmimxrt1170_flexspi_nor_config.o ./xip/fsl_flexspi_nor_boot.d ./xip/fsl_flexspi_nor_boot.o

.PHONY: clean-xip

