/**
  @page DMA_FLASH_RAM DMA_FLASH_RAM
  
  @verbatim
  ******************** (C) COPYRIGHT 2009 STMicroelectronics *******************
  * @file    DMA/FLASH_RAM/readme.txt 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Description of the DMA FLASH to RAM example.
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

This example provides a description of how to use a DMA channel to transfer 
a word data buffer from FLASH memory to embedded SRAM memory.

DMA1 Channel6 is configured to transfer the contents of a 32-word data buffer
stored in Flash memory to the reception buffer declared in RAM.

The start of transfer is triggered by software. DMA1 Channel6 memory-to-memory
transfer is enabled. Source and destination addresses incrementing is also enabled.
The transfer is started by setting the Channel enable bit for DMA1 Channel6.
At the end of the transfer a Transfer Complete interrupt is generated since it
is enabled. Once interrupt is generated, the remaining data to be transferred is
read which must be equal to 0. The Transfer Complete Interrupt pending bit is
then cleared. A comparison between the source and destination buffers is done to
check that all data have been correctly transferred.


@par Directory contents 

  - DMA/FLASH_RAM/stm32f10x_conf.h  Library Configuration file
  - DMA/FLASH_RAM/stm32f10x_it.c    Interrupt handlers
  - DMA/FLASH_RAM/stm32f10x_it.h    Interrupt handlers header file
  - DMA/FLASH_RAM/main.c            Main program


@par Hardware and Software environment 

  - This example runs on STM32F10x Connectivity line, High-Density, Medium-Density 
    and Low-Density Devices.
  
  - This example has been tested with STMicroelectronics STM3210C-EVAL (STM32F10x 
    Connectivity line), STM3210E-EVAL (STM32F10x High-Density) and STM3210B-EVAL
    (STM32F10x Medium-Density) evaluation boards and can be easily tailored to
    any other supported device and development board.


@par How to use it ? 

In order to make the program work, you must do the following :
- Create a project and setup all project configuration
- Add the required Library files :
  - stm32f10x_dma.c 
  - stm32f10x_rcc.c 
  - stm32f10x_flash.c 
  - misc.c
  - system_stm32f10x.c (under Libraries\CMSIS\Core\CM3)
  
- Edit stm32f10x.h file to select the device you are working on.
  
@b Tip: You can tailor the provided project template to run this example, for 
        more details please refer to "stm32f10x_stdperiph_lib_um.chm" user 
        manual; select "Peripheral Examples" then follow the instructions 
        provided in "How to proceed" section.   
- Link all compiled files and load your image into target memory
- Run the example

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
