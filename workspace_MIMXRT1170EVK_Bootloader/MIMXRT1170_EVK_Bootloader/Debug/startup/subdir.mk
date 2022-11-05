################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../startup/startup_mimxrt1176_cm7.cpp 

C_SRCS += \
../startup/boot_multicore_slave.c 

CPP_DEPS += \
./startup/startup_mimxrt1176_cm7.d 

C_DEPS += \
./startup/boot_multicore_slave.d 

OBJS += \
./startup/boot_multicore_slave.o \
./startup/startup_mimxrt1176_cm7.o 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.c startup/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=c11 -D__NEWLIB__ -DCPU_MIMXRT1176DVMAA -DCPU_MIMXRT1176DVMAA_cm7 -DSDK_OS_BAREMETAL -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DSERIAL_PORT_TYPE_UART=1 -DXIP_BOOT_HEADER_DCD_ENABLE=0 -DXIP_BOOT_HEADER_XMCD_ENABLE=1 -DSDK_DEBUGCONSOLE=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\board" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\source" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\drivers" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\xip" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\device" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\CMSIS" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\component\serial_manager" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\component\uart" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\utilities" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\component\lists" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\startup" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

startup/%.o: ../startup/%.cpp startup/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C++ Compiler'
	arm-none-eabi-c++ -std=c++14 -DCPU_MIMXRT1176DVMAA -DCPU_MIMXRT1176DVMAA_cm7 -DSDK_OS_BAREMETAL -DXIP_EXTERNAL_FLASH=1 -DXIP_BOOT_HEADER_ENABLE=1 -DSERIAL_PORT_TYPE_UART=1 -DXIP_BOOT_HEADER_DCD_ENABLE=0 -DXIP_BOOT_HEADER_XMCD_ENABLE=1 -DSDK_DEBUGCONSOLE=1 -D__MCUXPRESSO -D__USE_CMSIS -DDEBUG -D__NEWLIB__ -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\board" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\source" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\drivers" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\xip" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\device" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\CMSIS" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\component\serial_manager" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\component\uart" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\utilities" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\component\lists" -I"D:\develop\Data\git\RT117X_DebuggableBootloader\workspace_MIMXRT1170EVK_Bootloader\MIMXRT1170_EVK_Bootloader\startup" -O0 -fno-common -g3 -Wall -c -ffunction-sections -fdata-sections -ffreestanding -fno-builtin -fno-rtti -fno-exceptions -fmerge-constants -fmacro-prefix-map="$(<D)/"= -mcpu=cortex-m7 -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -D__NEWLIB__ -fstack-usage -specs=nano.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-startup

clean-startup:
	-$(RM) ./startup/boot_multicore_slave.d ./startup/boot_multicore_slave.o ./startup/startup_mimxrt1176_cm7.d ./startup/startup_mimxrt1176_cm7.o

.PHONY: clean-startup

