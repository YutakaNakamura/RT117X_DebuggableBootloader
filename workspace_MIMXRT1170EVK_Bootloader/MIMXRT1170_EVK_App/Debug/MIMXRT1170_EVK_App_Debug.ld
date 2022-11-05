/*
 * GENERATED FILE - DO NOT EDIT
 * Copyright (c) 2008-2013 Code Red Technologies Ltd,
 * Copyright 2015, 2018-2019 NXP
 * (c) NXP Semiconductors 2013-2022
 * Generated linker script file for MIMXRT1176xxxxx
 * Created from linkscript.ldt by FMCreateLinkLibraries
 * Using Freemarker v2.3.30
 * MCUXpresso IDE v11.6.0 [Build 8187] [2022-07-13] on 2022/11/06 1:03:01
 */

INCLUDE "MIMXRT1170_EVK_App_Debug_library.ld"
INCLUDE "MIMXRT1170_EVK_App_Debug_memory.ld"

ENTRY(ResetISR)

SECTIONS
{
     .text_Flash2 : ALIGN(4)
    {
       FILL(0xff)
        *(.text_Flash2) /* for compatibility with previous releases */
        *(.text_BOARD_FLASH) /* for compatibility with previous releases */
        *(.text.$Flash2)
        *(.text.$BOARD_FLASH)
        *(.text_Flash2.*) /* for compatibility with previous releases */
        *(.text_BOARD_FLASH.*) /* for compatibility with previous releases */
        *(.text.$Flash2.*)
        *(.text.$BOARD_FLASH.*)
        *(.rodata.$Flash2)
        *(.rodata.$BOARD_FLASH)
        *(.rodata.$Flash2.*)
        *(.rodata.$BOARD_FLASH.*)            } > BOARD_FLASH

    /* MAIN TEXT SECTION */
    .text : ALIGN(4)
    {
        FILL(0xff)
        __vectors_start__ = ABSOLUTE(.) ;
        KEEP(*(.isr_vector))
        /* Global Section Table */
        . = ALIGN(4) ;
        __section_table_start = .;
        __data_section_table = .;
        LONG((LOADADDR(.data_RAM) - LOADADDR(.text)) + __base_SRAM_ITC_cm7_APP);
        LONG(    ADDR(.data_RAM));
        LONG(  SIZEOF(.data_RAM));
        LONG((LOADADDR(.data_RAM2) - LOADADDR(.text)) + __base_SRAM_ITC_cm7_APP);
        LONG(    ADDR(.data_RAM2));
        LONG(  SIZEOF(.data_RAM2));
        LONG((LOADADDR(.data) - LOADADDR(.text)) + __base_SRAM_ITC_cm7_APP);
        LONG(    ADDR(.data));
        LONG(  SIZEOF(.data));
        LONG((LOADADDR(.data_RAM4) - LOADADDR(.text)) + __base_SRAM_ITC_cm7_APP);
        LONG(    ADDR(.data_RAM4));
        LONG(  SIZEOF(.data_RAM4));
        LONG((LOADADDR(.data_RAM5) - LOADADDR(.text)) + __base_SRAM_ITC_cm7_APP);
        LONG(    ADDR(.data_RAM5));
        LONG(  SIZEOF(.data_RAM5));
        LONG((LOADADDR(.data_RAM6) - LOADADDR(.text)) + __base_SRAM_ITC_cm7_APP);
        LONG(    ADDR(.data_RAM6));
        LONG(  SIZEOF(.data_RAM6));
        LONG((LOADADDR(.data_RAM7) - LOADADDR(.text)) + __base_SRAM_ITC_cm7_APP);
        LONG(    ADDR(.data_RAM7));
        LONG(  SIZEOF(.data_RAM7));
        LONG((LOADADDR(.data_RAM8) - LOADADDR(.text)) + __base_SRAM_ITC_cm7_APP);
        LONG(    ADDR(.data_RAM8));
        LONG(  SIZEOF(.data_RAM8));
        LONG((LOADADDR(.data_RAM9) - LOADADDR(.text)) + __base_SRAM_ITC_cm7_APP);
        LONG(    ADDR(.data_RAM9));
        LONG(  SIZEOF(.data_RAM9));
        LONG((LOADADDR(.data_RAM10) - LOADADDR(.text)) + __base_SRAM_ITC_cm7_APP);
        LONG(    ADDR(.data_RAM10));
        LONG(  SIZEOF(.data_RAM10));
        LONG((LOADADDR(.data_RAM11) - LOADADDR(.text)) + __base_SRAM_ITC_cm7_APP);
        LONG(    ADDR(.data_RAM11));
        LONG(  SIZEOF(.data_RAM11));
        __data_section_table_end = .;
        __bss_section_table = .;
        LONG(    ADDR(.bss_RAM));
        LONG(  SIZEOF(.bss_RAM));
        LONG(    ADDR(.bss_RAM2));
        LONG(  SIZEOF(.bss_RAM2));
        LONG(    ADDR(.bss));
        LONG(  SIZEOF(.bss));
        LONG(    ADDR(.bss_RAM4));
        LONG(  SIZEOF(.bss_RAM4));
        LONG(    ADDR(.bss_RAM5));
        LONG(  SIZEOF(.bss_RAM5));
        LONG(    ADDR(.bss_RAM6));
        LONG(  SIZEOF(.bss_RAM6));
        LONG(    ADDR(.bss_RAM7));
        LONG(  SIZEOF(.bss_RAM7));
        LONG(    ADDR(.bss_RAM8));
        LONG(  SIZEOF(.bss_RAM8));
        LONG(    ADDR(.bss_RAM9));
        LONG(  SIZEOF(.bss_RAM9));
        LONG(    ADDR(.bss_RAM10));
        LONG(  SIZEOF(.bss_RAM10));
        LONG(    ADDR(.bss_RAM11));
        LONG(  SIZEOF(.bss_RAM11));
        __bss_section_table_end = .;
        __section_table_end = . ;
        /* End of Global Section Table */

        *(.after_vectors*)

       *(.text*)
       *(.rodata .rodata.* .constdata .constdata.*)
       . = ALIGN(4);
            /* C++ constructors etc */
            . = ALIGN(4);
            KEEP(*(.init))
            
            . = ALIGN(4);
            __preinit_array_start = .;
            KEEP (*(.preinit_array))
            __preinit_array_end = .;
            
            . = ALIGN(4);
            __init_array_start = .;
            KEEP (*(SORT(.init_array.*)))
            KEEP (*(.init_array))
            __init_array_end = .;
            
            KEEP(*(.fini));
            
            . = ALIGN(4);
            KEEP (*crtbegin.o(.ctors))
            KEEP (*(EXCLUDE_FILE (*crtend.o) .ctors))
            KEEP (*(SORT(.ctors.*)))
            KEEP (*crtend.o(.ctors))
            
            . = ALIGN(4);
            KEEP (*crtbegin.o(.dtors))
            KEEP (*(EXCLUDE_FILE (*crtend.o) .dtors))
            KEEP (*(SORT(.dtors.*)))
            KEEP (*crtend.o(.dtors))
            . = ALIGN(4);
            /* End C++ */
    } > SRAM_ITC_cm7_APP AT> BOARD_FLASH_APP
 
    _etext = .;
        
    /* DATA section for SRAM_DTC_cm7_APP */

    .data_RAM : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM = .) ;
        PROVIDE(__start_data_SRAM_DTC_cm7_APP = .) ;
        *(.ramfunc.$RAM)
        *(.ramfunc.$SRAM_DTC_cm7_APP)
        *(.data.$RAM)
        *(.data.$SRAM_DTC_cm7_APP)
        *(.data.$RAM.*)
        *(.data.$SRAM_DTC_cm7_APP.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM = .) ;
        PROVIDE(__end_data_SRAM_DTC_cm7_APP = .) ;
     } > SRAM_DTC_cm7_APP AT>BOARD_FLASH_APP

    /* DATA section for SRAM_DTC_cm7_BOOT */

    .data_RAM2 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM2 = .) ;
        PROVIDE(__start_data_SRAM_DTC_cm7_BOOT = .) ;
        *(.ramfunc.$RAM2)
        *(.ramfunc.$SRAM_DTC_cm7_BOOT)
        *(.data.$RAM2)
        *(.data.$SRAM_DTC_cm7_BOOT)
        *(.data.$RAM2.*)
        *(.data.$SRAM_DTC_cm7_BOOT.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM2 = .) ;
        PROVIDE(__end_data_SRAM_DTC_cm7_BOOT = .) ;
     } > SRAM_DTC_cm7_BOOT AT>BOARD_FLASH_APP

    /* DATA section for SRAM_ITC_cm7_BOOT */

    .data_RAM4 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM4 = .) ;
        PROVIDE(__start_data_SRAM_ITC_cm7_BOOT = .) ;
        *(.ramfunc.$RAM4)
        *(.ramfunc.$SRAM_ITC_cm7_BOOT)
        *(.data.$RAM4)
        *(.data.$SRAM_ITC_cm7_BOOT)
        *(.data.$RAM4.*)
        *(.data.$SRAM_ITC_cm7_BOOT.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM4 = .) ;
        PROVIDE(__end_data_SRAM_ITC_cm7_BOOT = .) ;
     } > SRAM_ITC_cm7_BOOT AT>BOARD_FLASH_APP

    /* DATA section for SRAM_OC1 */

    .data_RAM5 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM5 = .) ;
        PROVIDE(__start_data_SRAM_OC1 = .) ;
        *(.ramfunc.$RAM5)
        *(.ramfunc.$SRAM_OC1)
        *(.data.$RAM5)
        *(.data.$SRAM_OC1)
        *(.data.$RAM5.*)
        *(.data.$SRAM_OC1.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM5 = .) ;
        PROVIDE(__end_data_SRAM_OC1 = .) ;
     } > SRAM_OC1 AT>BOARD_FLASH_APP

    /* DATA section for SRAM_OC2 */

    .data_RAM6 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM6 = .) ;
        PROVIDE(__start_data_SRAM_OC2 = .) ;
        *(.ramfunc.$RAM6)
        *(.ramfunc.$SRAM_OC2)
        *(.data.$RAM6)
        *(.data.$SRAM_OC2)
        *(.data.$RAM6.*)
        *(.data.$SRAM_OC2.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM6 = .) ;
        PROVIDE(__end_data_SRAM_OC2 = .) ;
     } > SRAM_OC2 AT>BOARD_FLASH_APP

    /* DATA section for SRAM_OC_ECC1 */

    .data_RAM7 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM7 = .) ;
        PROVIDE(__start_data_SRAM_OC_ECC1 = .) ;
        *(.ramfunc.$RAM7)
        *(.ramfunc.$SRAM_OC_ECC1)
        *(.data.$RAM7)
        *(.data.$SRAM_OC_ECC1)
        *(.data.$RAM7.*)
        *(.data.$SRAM_OC_ECC1.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM7 = .) ;
        PROVIDE(__end_data_SRAM_OC_ECC1 = .) ;
     } > SRAM_OC_ECC1 AT>BOARD_FLASH_APP

    /* DATA section for SRAM_OC_ECC2 */

    .data_RAM8 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM8 = .) ;
        PROVIDE(__start_data_SRAM_OC_ECC2 = .) ;
        *(.ramfunc.$RAM8)
        *(.ramfunc.$SRAM_OC_ECC2)
        *(.data.$RAM8)
        *(.data.$SRAM_OC_ECC2)
        *(.data.$RAM8.*)
        *(.data.$SRAM_OC_ECC2.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM8 = .) ;
        PROVIDE(__end_data_SRAM_OC_ECC2 = .) ;
     } > SRAM_OC_ECC2 AT>BOARD_FLASH_APP

    /* DATA section for SRAM_OC_cm7 */

    .data_RAM9 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM9 = .) ;
        PROVIDE(__start_data_SRAM_OC_cm7 = .) ;
        *(.ramfunc.$RAM9)
        *(.ramfunc.$SRAM_OC_cm7)
        *(.data.$RAM9)
        *(.data.$SRAM_OC_cm7)
        *(.data.$RAM9.*)
        *(.data.$SRAM_OC_cm7.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM9 = .) ;
        PROVIDE(__end_data_SRAM_OC_cm7 = .) ;
     } > SRAM_OC_cm7 AT>BOARD_FLASH_APP

    /* DATA section for BOARD_SDRAM */

    .data_RAM10 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM10 = .) ;
        PROVIDE(__start_data_BOARD_SDRAM = .) ;
        *(.ramfunc.$RAM10)
        *(.ramfunc.$BOARD_SDRAM)
        *(.data.$RAM10)
        *(.data.$BOARD_SDRAM)
        *(.data.$RAM10.*)
        *(.data.$BOARD_SDRAM.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM10 = .) ;
        PROVIDE(__end_data_BOARD_SDRAM = .) ;
     } > BOARD_SDRAM AT>BOARD_FLASH_APP

    /* DATA section for NCACHE_REGION */

    .data_RAM11 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM11 = .) ;
        PROVIDE(__start_data_NCACHE_REGION = .) ;
        *(.ramfunc.$RAM11)
        *(.ramfunc.$NCACHE_REGION)
        *(.data.$RAM11)
        *(.data.$NCACHE_REGION)
        *(.data.$RAM11.*)
        *(.data.$NCACHE_REGION.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM11 = .) ;
        PROVIDE(__end_data_NCACHE_REGION = .) ;
     } > NCACHE_REGION AT>BOARD_FLASH_APP

    /* MAIN DATA SECTION */
    .uninit_RESERVED (NOLOAD) : ALIGN(4)
    {
        _start_uninit_RESERVED = .;
        KEEP(*(.bss.$RESERVED*))
       . = ALIGN(4) ;
        _end_uninit_RESERVED = .;
    } > SRAM_ITC_cm7_APP AT> SRAM_ITC_cm7_APP

    /* Main DATA section (SRAM_ITC_cm7_APP) */
    .data : ALIGN_WITH_INPUT
    {
       FILL(0xff)
       _data = . ;
       PROVIDE(__start_data_RAM3 = .) ;
       PROVIDE(__start_data_SRAM_ITC_cm7_APP = .) ;
       *(vtable)
       *(.ramfunc*)
       KEEP(*(CodeQuickAccess))
       KEEP(*(DataQuickAccess))
       *(RamFunction)
       *(.data*)
       . = ALIGN(4) ;
       _edata = . ;
       PROVIDE(__end_data_RAM3 = .) ;
       PROVIDE(__end_data_SRAM_ITC_cm7_APP = .) ;
    } > SRAM_ITC_cm7_APP AT>BOARD_FLASH_APP

    /* BSS section for SRAM_DTC_cm7_APP */
    .bss_RAM : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM = .) ;
       PROVIDE(__start_bss_SRAM_DTC_cm7_APP = .) ;
       *(.bss.$RAM)
       *(.bss.$SRAM_DTC_cm7_APP)
       *(.bss.$RAM.*)
       *(.bss.$SRAM_DTC_cm7_APP.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM = .) ;
       PROVIDE(__end_bss_SRAM_DTC_cm7_APP = .) ;
    } > SRAM_DTC_cm7_APP AT> SRAM_DTC_cm7_APP

    /* BSS section for SRAM_DTC_cm7_BOOT */
    .bss_RAM2 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM2 = .) ;
       PROVIDE(__start_bss_SRAM_DTC_cm7_BOOT = .) ;
       *(.bss.$RAM2)
       *(.bss.$SRAM_DTC_cm7_BOOT)
       *(.bss.$RAM2.*)
       *(.bss.$SRAM_DTC_cm7_BOOT.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM2 = .) ;
       PROVIDE(__end_bss_SRAM_DTC_cm7_BOOT = .) ;
    } > SRAM_DTC_cm7_BOOT AT> SRAM_DTC_cm7_BOOT

    /* BSS section for SRAM_ITC_cm7_BOOT */
    .bss_RAM4 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM4 = .) ;
       PROVIDE(__start_bss_SRAM_ITC_cm7_BOOT = .) ;
       *(.bss.$RAM4)
       *(.bss.$SRAM_ITC_cm7_BOOT)
       *(.bss.$RAM4.*)
       *(.bss.$SRAM_ITC_cm7_BOOT.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM4 = .) ;
       PROVIDE(__end_bss_SRAM_ITC_cm7_BOOT = .) ;
    } > SRAM_ITC_cm7_BOOT AT> SRAM_ITC_cm7_BOOT

    /* BSS section for SRAM_OC1 */
    .bss_RAM5 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM5 = .) ;
       PROVIDE(__start_bss_SRAM_OC1 = .) ;
       *(.bss.$RAM5)
       *(.bss.$SRAM_OC1)
       *(.bss.$RAM5.*)
       *(.bss.$SRAM_OC1.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM5 = .) ;
       PROVIDE(__end_bss_SRAM_OC1 = .) ;
    } > SRAM_OC1 AT> SRAM_OC1

    /* BSS section for SRAM_OC2 */
    .bss_RAM6 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM6 = .) ;
       PROVIDE(__start_bss_SRAM_OC2 = .) ;
       *(.bss.$RAM6)
       *(.bss.$SRAM_OC2)
       *(.bss.$RAM6.*)
       *(.bss.$SRAM_OC2.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM6 = .) ;
       PROVIDE(__end_bss_SRAM_OC2 = .) ;
    } > SRAM_OC2 AT> SRAM_OC2

    /* BSS section for SRAM_OC_ECC1 */
    .bss_RAM7 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM7 = .) ;
       PROVIDE(__start_bss_SRAM_OC_ECC1 = .) ;
       *(.bss.$RAM7)
       *(.bss.$SRAM_OC_ECC1)
       *(.bss.$RAM7.*)
       *(.bss.$SRAM_OC_ECC1.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM7 = .) ;
       PROVIDE(__end_bss_SRAM_OC_ECC1 = .) ;
    } > SRAM_OC_ECC1 AT> SRAM_OC_ECC1

    /* BSS section for SRAM_OC_ECC2 */
    .bss_RAM8 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM8 = .) ;
       PROVIDE(__start_bss_SRAM_OC_ECC2 = .) ;
       *(.bss.$RAM8)
       *(.bss.$SRAM_OC_ECC2)
       *(.bss.$RAM8.*)
       *(.bss.$SRAM_OC_ECC2.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM8 = .) ;
       PROVIDE(__end_bss_SRAM_OC_ECC2 = .) ;
    } > SRAM_OC_ECC2 AT> SRAM_OC_ECC2

    /* BSS section for SRAM_OC_cm7 */
    .bss_RAM9 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM9 = .) ;
       PROVIDE(__start_bss_SRAM_OC_cm7 = .) ;
       *(.bss.$RAM9)
       *(.bss.$SRAM_OC_cm7)
       *(.bss.$RAM9.*)
       *(.bss.$SRAM_OC_cm7.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM9 = .) ;
       PROVIDE(__end_bss_SRAM_OC_cm7 = .) ;
    } > SRAM_OC_cm7 AT> SRAM_OC_cm7

    /* BSS section for BOARD_SDRAM */
    .bss_RAM10 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM10 = .) ;
       PROVIDE(__start_bss_BOARD_SDRAM = .) ;
       *(.bss.$RAM10)
       *(.bss.$BOARD_SDRAM)
       *(.bss.$RAM10.*)
       *(.bss.$BOARD_SDRAM.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM10 = .) ;
       PROVIDE(__end_bss_BOARD_SDRAM = .) ;
    } > BOARD_SDRAM AT> BOARD_SDRAM

    /* BSS section for NCACHE_REGION */
    .bss_RAM11 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM11 = .) ;
       PROVIDE(__start_bss_NCACHE_REGION = .) ;
       *(.bss.$RAM11)
       *(.bss.$NCACHE_REGION)
       *(.bss.$RAM11.*)
       *(.bss.$NCACHE_REGION.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM11 = .) ;
       PROVIDE(__end_bss_NCACHE_REGION = .) ;
    } > NCACHE_REGION AT> NCACHE_REGION

    /* MAIN BSS SECTION */
    .bss : ALIGN(4)
    {
        _bss = .;
        PROVIDE(__start_bss_RAM3 = .) ;
        PROVIDE(__start_bss_SRAM_ITC_cm7_APP = .) ;
        *(.bss*)
        *(COMMON)
        . = ALIGN(4) ;
        _ebss = .;
        PROVIDE(__end_bss_RAM3 = .) ;
        PROVIDE(__end_bss_SRAM_ITC_cm7_APP = .) ;
        PROVIDE(end = .);
    } > SRAM_ITC_cm7_APP AT> SRAM_ITC_cm7_APP

    /* NOINIT section for SRAM_DTC_cm7_APP */
    .noinit_RAM (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM = .) ;
       PROVIDE(__start_noinit_SRAM_DTC_cm7_APP = .) ;
       *(.noinit.$RAM)
       *(.noinit.$SRAM_DTC_cm7_APP)
       *(.noinit.$RAM.*)
       *(.noinit.$SRAM_DTC_cm7_APP.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM = .) ;
       PROVIDE(__end_noinit_SRAM_DTC_cm7_APP = .) ;
    } > SRAM_DTC_cm7_APP AT> SRAM_DTC_cm7_APP

    /* NOINIT section for SRAM_DTC_cm7_BOOT */
    .noinit_RAM2 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM2 = .) ;
       PROVIDE(__start_noinit_SRAM_DTC_cm7_BOOT = .) ;
       *(.noinit.$RAM2)
       *(.noinit.$SRAM_DTC_cm7_BOOT)
       *(.noinit.$RAM2.*)
       *(.noinit.$SRAM_DTC_cm7_BOOT.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM2 = .) ;
       PROVIDE(__end_noinit_SRAM_DTC_cm7_BOOT = .) ;
    } > SRAM_DTC_cm7_BOOT AT> SRAM_DTC_cm7_BOOT

    /* NOINIT section for SRAM_ITC_cm7_BOOT */
    .noinit_RAM4 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM4 = .) ;
       PROVIDE(__start_noinit_SRAM_ITC_cm7_BOOT = .) ;
       *(.noinit.$RAM4)
       *(.noinit.$SRAM_ITC_cm7_BOOT)
       *(.noinit.$RAM4.*)
       *(.noinit.$SRAM_ITC_cm7_BOOT.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM4 = .) ;
       PROVIDE(__end_noinit_SRAM_ITC_cm7_BOOT = .) ;
    } > SRAM_ITC_cm7_BOOT AT> SRAM_ITC_cm7_BOOT

    /* NOINIT section for SRAM_OC1 */
    .noinit_RAM5 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM5 = .) ;
       PROVIDE(__start_noinit_SRAM_OC1 = .) ;
       *(.noinit.$RAM5)
       *(.noinit.$SRAM_OC1)
       *(.noinit.$RAM5.*)
       *(.noinit.$SRAM_OC1.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM5 = .) ;
       PROVIDE(__end_noinit_SRAM_OC1 = .) ;
    } > SRAM_OC1 AT> SRAM_OC1

    /* NOINIT section for SRAM_OC2 */
    .noinit_RAM6 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM6 = .) ;
       PROVIDE(__start_noinit_SRAM_OC2 = .) ;
       *(.noinit.$RAM6)
       *(.noinit.$SRAM_OC2)
       *(.noinit.$RAM6.*)
       *(.noinit.$SRAM_OC2.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM6 = .) ;
       PROVIDE(__end_noinit_SRAM_OC2 = .) ;
    } > SRAM_OC2 AT> SRAM_OC2

    /* NOINIT section for SRAM_OC_ECC1 */
    .noinit_RAM7 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM7 = .) ;
       PROVIDE(__start_noinit_SRAM_OC_ECC1 = .) ;
       *(.noinit.$RAM7)
       *(.noinit.$SRAM_OC_ECC1)
       *(.noinit.$RAM7.*)
       *(.noinit.$SRAM_OC_ECC1.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM7 = .) ;
       PROVIDE(__end_noinit_SRAM_OC_ECC1 = .) ;
    } > SRAM_OC_ECC1 AT> SRAM_OC_ECC1

    /* NOINIT section for SRAM_OC_ECC2 */
    .noinit_RAM8 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM8 = .) ;
       PROVIDE(__start_noinit_SRAM_OC_ECC2 = .) ;
       *(.noinit.$RAM8)
       *(.noinit.$SRAM_OC_ECC2)
       *(.noinit.$RAM8.*)
       *(.noinit.$SRAM_OC_ECC2.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM8 = .) ;
       PROVIDE(__end_noinit_SRAM_OC_ECC2 = .) ;
    } > SRAM_OC_ECC2 AT> SRAM_OC_ECC2

    /* NOINIT section for SRAM_OC_cm7 */
    .noinit_RAM9 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM9 = .) ;
       PROVIDE(__start_noinit_SRAM_OC_cm7 = .) ;
       *(.noinit.$RAM9)
       *(.noinit.$SRAM_OC_cm7)
       *(.noinit.$RAM9.*)
       *(.noinit.$SRAM_OC_cm7.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM9 = .) ;
       PROVIDE(__end_noinit_SRAM_OC_cm7 = .) ;
    } > SRAM_OC_cm7 AT> SRAM_OC_cm7

    /* NOINIT section for BOARD_SDRAM */
    .noinit_RAM10 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM10 = .) ;
       PROVIDE(__start_noinit_BOARD_SDRAM = .) ;
       *(.noinit.$RAM10)
       *(.noinit.$BOARD_SDRAM)
       *(.noinit.$RAM10.*)
       *(.noinit.$BOARD_SDRAM.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM10 = .) ;
       PROVIDE(__end_noinit_BOARD_SDRAM = .) ;
    } > BOARD_SDRAM AT> BOARD_SDRAM

    /* NOINIT section for NCACHE_REGION */
    .noinit_RAM11 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM11 = .) ;
       PROVIDE(__start_noinit_NCACHE_REGION = .) ;
       *(.noinit.$RAM11)
       *(.noinit.$NCACHE_REGION)
       *(.noinit.$RAM11.*)
       *(.noinit.$NCACHE_REGION.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM11 = .) ;
       PROVIDE(__end_noinit_NCACHE_REGION = .) ;
    } > NCACHE_REGION AT> NCACHE_REGION

    /* DEFAULT NOINIT SECTION */
    .noinit (NOLOAD): ALIGN(4)
    {
        _noinit = .;
        PROVIDE(__start_noinit_RAM3 = .) ;
        PROVIDE(__start_noinit_SRAM_ITC_cm7_APP = .) ;
        *(.noinit*)
         . = ALIGN(4) ;
        _end_noinit = .;
       PROVIDE(__end_noinit_RAM3 = .) ;
       PROVIDE(__end_noinit_SRAM_ITC_cm7_APP = .) ;        
    } > SRAM_ITC_cm7_APP AT> SRAM_ITC_cm7_APP

    /*
     * for exception handling/unwind - some Newlib functions (in common
     * with C++ and STDC++) use this.
     */
    .ARM.extab : ALIGN(4)
    {
        *(.ARM.extab* .gnu.linkonce.armextab.*)
    } > SRAM_ITC_cm7_APP AT> BOARD_FLASH_APP

    .ARM.exidx : ALIGN(4)
    {
        __exidx_start = .;
        *(.ARM.exidx* .gnu.linkonce.armexidx.*)
        __exidx_end = .;
    } > SRAM_ITC_cm7_APP AT> BOARD_FLASH_APP

    /* Reserve and place Heap within memory map */
    _HeapSize = 0x1000;
    .heap :  ALIGN(4)
    {
        _pvHeapStart = .;
        . += _HeapSize;
        . = ALIGN(4);
        _pvHeapLimit = .;
    } > SRAM_DTC_cm7_APP

     _StackSize = 0x1000;
     /* Reserve space in memory for Stack */
    .heap2stackfill  :
    {
        . += _StackSize;
    } > SRAM_DTC_cm7_APP
    /* Locate actual Stack in memory map */
    .stack ORIGIN(SRAM_DTC_cm7_APP) + LENGTH(SRAM_DTC_cm7_APP) - _StackSize - 0:  ALIGN(4)
    {
        _vStackBase = .;
        . = ALIGN(4);
        _vStackTop = . + _StackSize;
    } > SRAM_DTC_cm7_APP

    /* Provide basic symbols giving location and size of main text
     * block, including initial values of RW data sections. Note that
     * these will need extending to give a complete picture with
     * complex images (e.g multiple Flash banks).
     */
    _image_start = LOADADDR(.text);
    _image_end = LOADADDR(.data) + SIZEOF(.data);
    _image_size = _image_end - _image_start;
    /* Provide symbols for MIMXRT1170 parts for boot header generation code
     * to set image to be plain load image or XIP.
     * Config : Plain load image = true
     */
    _image_load_offset = __vectors_start__ - _image_start;
    _boot_loadaddr = ORIGIN(SRAM_ITC_cm7_APP);
    _boot_size = LENGTH(SRAM_ITC_cm7_APP);
}