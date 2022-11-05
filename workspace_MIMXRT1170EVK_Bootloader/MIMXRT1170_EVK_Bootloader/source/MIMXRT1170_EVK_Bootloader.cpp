/*
 * Copyright 2016-2022 NXP
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * o Redistributions of source code must retain the above copyright notice, this list
 *   of conditions and the following disclaimer.
 *
 * o Redistributions in binary form must reproduce the above copyright notice, this
 *   list of conditions and the following disclaimer in the documentation and/or
 *   other materials provided with the distribution.
 *
 * o Neither the name of NXP Semiconductor, Inc. nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
 * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/**
 * @file    MIMXRT1170_EVK_Bootloader.cpp
 * @brief   Application entry point.
 */
#include <stdio.h>
#include "board.h"
#include "peripherals.h"
#include "pin_mux.h"
#include "clock_config.h"
#include "MIMXRT1176_cm7.h"
#include "fsl_debug_console.h"
/* TODO: insert other include files here. */

/* Bootloader */
#define RAMAPP_ADDRESS 0x800
#define RAMAPP_STACK   (RAMAPP_ADDRESS + 0)
#define RAMAPP_RESET_HANDLER (RAMAPP_ADDRESS + 4)
#define SET_VECTOR_TABLE 1

#define DefROM_BIN_TOP    (0x30008000)
#define DefDST_RAM_TOP    (0x800)

typedef void(*pFunction)(void);
pFunction JumpToApplication;

int ROMtoRAM(uint32_t pROMADDR , uint32_t pRAMADDR, uint32_t u32BinSize)
{
	memset((void*)pRAMADDR, 0, u32BinSize);
    memcpy((void*)pRAMADDR, (void*)(pROMADDR), u32BinSize);
    /* Verify */
    if(memcmp((void*)(pROMADDR), (void*)pRAMADDR, u32BinSize) == 0) {
    	//true
    	return 1;
    }
    //false
    return 0;
}

void JumpToAPP(uint32_t pResetHandlerAddr, uint32_t pVTORAddr, uint32_t pStackAddr)
{
    uint32_t JumpAddress = *(__IO uint32_t*)pResetHandlerAddr;
    JumpToApplication = (pFunction)JumpAddress;

#if (SET_VECTOR_TABLE)
    SCB->VTOR = pVTORAddr; // ベクタテーブルを設定
#endif

    __set_MSP(*(__IO uint32_t*)pStackAddr);
    JumpToApplication();
}

/* Interrupt */
uint32_t delayCount;

extern "C" void SysTick_Handler(void)
{
    if(delayCount != 0x00)
    {
    	delayCount--;
    }
}

extern "C" void Systick_delay(uint32_t ms){
	SysTick->LOAD  = (SystemCoreClock/1000 & SysTick_LOAD_RELOAD_Msk) - 1;
	delayCount = ms;
	    while(delayCount!=0x00) {
	    	__asm volatile ("nop");
	    };
}


/* TODO: insert other definitions and declarations here. */

/*
 * @brief   Application entry point.
 */
#define main bootloader_main
extern "C" int main(void) {

    /* Init board hardware. */
    BOARD_InitBootPins();
    BOARD_InitBootClocks();
//    BOARD_InitBootPeripherals();
#ifndef BOARD_INIT_DEBUG_CONSOLE_PERIPHERAL
    /* Init FSL debug console. */
//    BOARD_InitDebugConsole();
#endif

    gpio_pin_config_t led_config = {kGPIO_DigitalOutput, 0, kGPIO_NoIntmode};
    GPIO_PinInit(GPIO3, 25U, &led_config);

    SysTick_Config(SystemCoreClock/1000-1);
    NVIC_SetPriority (SysTick_IRQn, 7);
    NVIC_EnableIRQ(SysTick_IRQn);

	//	PRINTF("LED OFF\n");
	GPIO_PinWrite(GPIO3, 25U, 0U);
	Systick_delay(125);

	//	PRINTF("LED ON\n");
	GPIO_PinWrite(GPIO3, 25U, 1U);
	Systick_delay(125);

	//	PRINTF("LED OFF\n");
	GPIO_PinWrite(GPIO3, 25U, 0U);
	Systick_delay(125);

	//	PRINTF("LED ON\n");
	GPIO_PinWrite(GPIO3, 25U, 1U);
	Systick_delay(125);

	//	PRINTF("LED OFF\n");
	GPIO_PinWrite(GPIO3, 25U, 0U);
	Systick_delay(125);

	//	PRINTF("LED ON\n");
	GPIO_PinWrite(GPIO3, 25U, 1U);
	Systick_delay(125);

	if( ROMtoRAM(0x30008000, 0x800, 0x1f800) ) {
//        NVIC_DisableIRQ();
//        ARM_MPU_Disable();
//        SCB_DisableDCache();
//        SCB_DisableICache();
		JumpToAPP(RAMAPP_RESET_HANDLER, RAMAPP_ADDRESS, RAMAPP_STACK);
	}

    return 0 ;
}
