/**
  @page NVIC_VectorTable_Relocation NVIC_VectorTable_Relocation
  
  @verbatim
  ******************** (C) COPYRIGHT 2009 STMicroelectronics *******************
  * @file    NVIC/VectorTable_Relocation/readme.txt 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Description of the NVIC VectorTable_Relocation Example.
  ******************************************************************************
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  ******************************************************************************
   @endverbatim

@par Example Description 

This example describes how to set the CortexM3 vector table in a specific 
address other than default using the NVIC_SetVectorTable function from the 
misc.h/.c driver.

This can be used to build program which will be loaded into Flash memory by an
application previously programmed from the Flash memory base address. 
Such application can be In-Application Programming (IAP, through USART) or
Device Firmware Upgrade (DFU, through USB).

These applications are available for download from the ST microcontrollers 
website: www.st.com/stm32

The associated program implements a "Delay" function based on SysTick end of count
interrupt, and toggles four leds with timing defined by the "Delay" function.

When using the IAP to load your porgram, the vector table must be relocated at
address 0x08002000.

When using the DFU to load your porgram, the vector table must be relocated at
address 0x08003000.

@par Directory contents 

 - NVIC/VectorTable_Relocation/linker:
     - EWARMv5:                
        - stm32f10x_flash_offset.icf    ILINK command file template for EWARM5 
     - RIDE:                
        - stm32f10x_flash_offset.ld     Linker script for RIDE        
 - NVIC/VectorTable_Relocation/stm32f10x_conf.h     Library Configuration file 
 - NVIC/VectorTable_Relocation/stm32f10x_it.c       Interrupt handlers 
 - NVIC/VectorTable_Relocation/stm32f10x_it.h       Interrupt handlers header file 
 - NVIC/VectorTable_Relocation/main.c               Main program 
 - NVIC/VectorTable_Relocation/main.h               Header for main.c 


@par Hardware and Software environment 

  - This example runs on STM32F10x Connectivity line, High-Density, Medium-Density 
    and Low-Density Devices.
  
  - This example has been tested with STMicroelectronics STM3210C-EVAL (STM32F10x 
    Connectivity line), STM3210E-EVAL (STM32F10x High-Density) and STM3210B-EVAL
    (STM32F10x Medium-Density) evaluation boards and can be easily tailored to
    any other supported device and development board.
    To select the STMicroelectronics evaluation board used to run the example, 
    uncomment the corresponding line in stm32_eval.h file (under Utilities\STM32_EVAL)

  - STM3210C-EVAL Set-up 
    - Use LED1, LED2, LED3 and LED4 leds connected respectively to PD.07, PD.13, PF.03
      and PD.04 pins
    
  - STM3210E-EVAL Set-up 
    - Use LD1, LD2, LD3 and LD4 leds connected respectively to PF.06, PF0.7, PF.08
      and PF.09 pins

  - STM3210B-EVAL Set-up   
    - Use LD1, LD2, LD3 and LD4 leds connected respectively to PC.06, PC.07, PC.08
      and PC.09 pins
     
@par How to use it ? 

In order to make the program work, you must do the following :
- Create a project and setup all project configuration:
<ul>
    <li> RVMDK 
         - In the project option menu, select 'Target' window and enter 0x08002000 
           as IROM start address
         - In the project option menu, select 'Linker' window and enter 0x08002000 
           as R/O base address                    

    <li> EWARM5 
         - Use "stm32f10x_flash_offset.icf" as linker file

    <li> RIDE 
         - In the Application options -> script menu, set "Use Default Script File" 
           to "No" and use "stm32f10x_flash_offset.ld" as Script File. 
           This linker is configured for STM32 High-density devices. To use it with
           Medium-density devices, this linker should be updated as follows: 
              - Line39: RAM (xrw) : ORIGIN = 0x20000000, LENGTH = 20K
              - Line40: FLASH (rx) : ORIGIN = 0x8002000, LENGTH = 128K-0x2000
              - Line49: _estack = 0x20005000;
           

</ul>        
- Add the required Library files:
  - stm32f10x_gpio.c 
  - stm32f10x_rcc.c 
  - stm32f10x_exti.c  
  - misc.c 
  - stm32f10x_usart.c
  - system_stm32f10x.c (under Libraries\CMSIS\Core\CM3)
  - stm32_eval.c (under Utilities\STM32_EVAL)

- Edit stm32f10x.h file to select the device you are working on.
- Edit stm32_eval.h file to select the evaluation board you will use.
  
@b Tip: You can tailor the provided project template to run this example, for 
        more details please refer to "stm32f10x_stdperiph_lib_um.chm" user 
        manual; select "Peripheral Examples" then follow the instructions 
        provided in "How to proceed" section. 
        
- In the main.c and linker files, the vector table is relocated at address 0x08002000.
  You can modify this address depending on the requirement of your application.    
- Rebuild all files 
- Convert the program image to a binary file, *.bin, then you can download and
  run it using the IAP or DFU application.

@note
 - Low-density devices are STM32F101xx and STM32F103xx microcontrollers where
   the Flash memory density ranges between 16 and 32 Kbytes.
 - Medium-density devices are STM32F101xx and STM32F103xx microcontrollers where
   the Flash memory density ranges between 32 and 128 Kbytes.
 - High-density devices are STM32F101xx and STM32F103xx microcontrollers where
   the Flash memory density ranges between 256 and 512 Kbytes.
 - Connectivity line devices are STM32F105xx and STM32F107xx microcontrollers.
    
 * <h3><center>&copy; COPYRIGHT 2009 STMicroelectronics</center></h3>
 */
