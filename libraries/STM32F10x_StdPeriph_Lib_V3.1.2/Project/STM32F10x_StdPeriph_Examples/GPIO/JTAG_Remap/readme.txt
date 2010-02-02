/**
  @page GPIO_JTAG_Remap GPIO_JTAG_Remap
  
  @verbatim
  ******************** (C) COPYRIGHT 2009 STMicroelectronics *******************
  * @file    GPIO/JTAG_Remap/readme.txt 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Description of the GPIO JTAG Remap Example.
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

This example provides a short description of how to use the JTAG IOs as standard 
GPIOs and gives a configuration sequence. 

First, the SWJ-DP is disabled. The SWJ-DP pins are configured as output push-pull.
Five LEDs connected to the PA.13(JTMS/SWDAT), PA.14(JTCK/SWCLK), PA.15(JTDI), 
PB.03(JTDO) and PB.04(JTRST) pins are toggled in an infinite loop.

Note that once the JTAG IOs are disabled, the connection with the host debugger is
lost and cannot be re-established as long as the JTAG IOs remain disabled. 

To avoid this situation, a specified pin is connected to a push-button that is used
to disable or not the JTAG IOs:
 1. push-button pressed at reset: JTAG IOs disabled	and LED1 turned on
 2. push-button not pressed at reset: JTAG IOs unchanged and LED2 turned on

Before starting this example, you should disconnect your tool chain debugging probe
and run the example in standalone mode.

@par Directory contents 

  - GPIO/JTAG_Remap/stm32f10x_conf.h     Library Configuration file
  - GPIO/JTAG_Remap/stm32f10x_it.c       Interrupt handlers
  - GPIO/JTAG_Remap/stm32f10x_it.h       Header for stm32f10x_it.c
  - GPIO/JTAG_Remap/main.c               Main program

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
    - Connect five leds to pins PA.13, PA.14, PA.15, PB.03 and PB.04. 
    - Use the Key push-button connected to pin PB.09 (EXTI Line9).
    - Use LD1 and LD2 connected respectively to PC.06 and PC.07

  - STM3210E-EVAL Set-up 
    - Connect five leds to pins PA.13, PA.14, PA.15, PB.03 and PB.04. 
    - Use the Key push-button connected to pin PG.08 (EXTI Line8).
    - Use LD1 and LD2 connected respectively to PC.06 and PC.07
    
  - STM3210B-EVAL Set-up  
    - Connect five leds to pins PA.13, PA.14, PA.15, PB.03 and PB.04. 
    - Use the Key push-button connected to pin PB.09 (EXTI Line9).
    - Use LD1 and LD2 connected respectively to PC.06 and PC.07
 
@par How to use it ? 

In order to make the program work, you must do the following:
- Create a project and setup all project configuration
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
