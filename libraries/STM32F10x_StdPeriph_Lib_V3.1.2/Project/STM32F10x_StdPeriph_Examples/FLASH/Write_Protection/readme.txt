/**
  @page FLASH_Write_Protection FLASH_Write_Protection
  
  @verbatim
  ******************** (C) COPYRIGHT 2009 STMicroelectronics *******************
  * @file    FLASH/Write_Protection/readme.txt 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Description of the FLASH Write_Protection Example.
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

This example provides a description of how to enable and disable the write protection
for the STM32F10x FLASH:

- Enable Write protection: 
To enable the Write Protection, uncomment the line "#define WriteProtection_Enable"
in main.c file.
  
To protect a set of pages, the user has to call the function FLASH_EnableWriteProtection.
The parameter of this function will define the number of pages to be protected.
To load the new option byte values, a system Reset is necessary, for this, the
function NVIC_SystemReset() is used.
 
- Disable Write protection:
To disable the Write Protection, uncomment the line "#define WriteProtection_Disable"
in main.c file.

To disable the write protection of the STM32F10x Flash, an erase of the Option 
Bytes is necessary. This operation is done by the function FLASH_EraseOptionBytes.
To load the new option byte values, a system Reset is necessary, for this, the
function NVIC_SystemReset() is used.

If the desired pages are not write protected, an erase and a write operation are
performed.

@par Directory contents 

  - FLASH/Write_Protection/stm32f10x_conf.h     Library Configuration file
  - FLASH/Write_Protection/stm32f10x_it.h       Interrupt handlers header file
  - FLASH/Write_Protection/stm32f10x_it.c       Interrupt handlers
  - FLASH/Write_Protection/main.c               Main program

@par Hardware and Software environment 

  - This example runs on STM32F10x Connectivity line, High-Density, Medium-Density 
    and Low-Density Devices.
  
  - This example has been tested with STMicroelectronics STM3210C-EVAL (STM32F10x 
    Connectivity line), STM3210E-EVAL (STM32F10x High-Density) and STM3210B-EVAL
    (STM32F10x Medium-Density) evaluation boards and can be easily tailored to
    any other supported device and development board.  
  
@par How to use it ? 

In order to make the program work, you must do the following:
- Create a project and setup all project configuration
- Add the required Library files:
  - stm32F10x_flash.c
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
