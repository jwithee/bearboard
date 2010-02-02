/**
  @page FSMC_NOR FSMC_NOR
  
  @verbatim
  ******************** (C) COPYRIGHT 2009 STMicroelectronics *******************
  * @file    FSMC/NOR/readme.txt 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Description of the FSMC NOR Example.
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

This example provides a basic example of how to use the FSMC firmware library and
an associate driver to perform erase/read/write operations on the M29W128FL,
M29W128GL or S29GL128P NOR memories mounted on the STM3210E-EVAL board.

@par Directory contents 

  - FSMC/NOR/stm32f10x_conf.h  Library Configuration file
  - FSMC/NOR/stm32f10x_it.c    Interrupt handlers
  - FSMC/NOR/stm32f10x_it.h    Header for stm32f10x_it.c
  - FSMC/NOR/fsmc_nor.c        Driver for NOR memory
  - FSMC/NOR/fsmc_nor.h        Header for fsmc_nor.c 
  - FSMC/NOR/main.c            Main program

@par Hardware and Software environment 

  - This example runs only on STM32F10x High-Density Devices.
  
  - This example has been tested with STMicroelectronics STM3210E-EVAL (STM32F10x 
    High-Density) evaluation board.
    To select the STMicroelectronics evaluation board used to run the example, 
    uncomment the corresponding line in stm32_eval.h file (under Utilities\STM32_EVAL)
    
@par How to use it ? 

In order to make the program work, you must do the following:
- Create a project and setup all project configuration
- Add the required Library files:
  - stm32f10x_gpio.c 
  - stm32f10x_rcc.c 
  - stm32f10x_fsmc.c
  - stm32f10x_exti.c
  - misc.c
  - stm32f10x_usart.c
  - system_stm32f10x.c (under Libraries\CMSIS\Core\CM3)
  - stm32_eval.c (under Utilities\STM32_EVAL)
    
- Edit stm32f10x.h file to select the device you are working on (#define 
  STM32F10X_HD, in this case).
 - Edit stm32_eval.h file to select the evaluation board you will use.
   
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
