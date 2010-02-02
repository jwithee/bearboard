/**
  @page RCC_Example RCC_Example
  
  @verbatim
  ******************** (C) COPYRIGHT 2009 STMicroelectronics *******************
  * @file    RCC/readme.txt 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Description of the RCC Example.
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

This example shows how to configure the System clock(SYSCLK) to have different
frequencies: 24MHz, 36MHz, 48MHz, 56MHz and 72MHz (common frequencies that covers
the major of the applications). 
The SYSCLK frequency is selected by user in main.h file.

It shows how to use, for debug purpose, the RCC_GetClocksFreq function to retrieve
the current status and frequencies of different on chip clocks. You can see the
RCC_ClockFreq structure content, which hold the frequencies of different on chip
clocks, using your toolchain debugger.

This example handles also the High Speed External clock (HSE) failure detection:
when the HSE clock disappears (broken or disconnected external Quartz); HSE, PLL
are disabled (but no change on PLL config), HSI selected as system clock source
and an interrupt (NMI) is generated. In the NMI ISR, the HSE, HSE ready interrupt
are enabled and once HSE clock recover, the HSERDY interrupt is generated and in
the RCC ISR routine the system clock is reconfigured to its previous state (before
HSE clock failure). You can monitor the HSE clock on the MCO pin (PA.08).

Four LEDs are toggled with a timing defined by the Delay function.

@note To adjust the External High Speed oscillator (HSE) Startup Timeout value,
use HSEStartUp_TimeOut variable defined in the stm32f10x.h file.


@par Directory contents 

  - RCC/stm32f10x_conf.h     Library Configuration file
  - RCC/stm32f10x_it.c       Interrupt handlers
  - RCC/stm32f10x_it.h       Header for stm32f10x_it.c
  - RCC/main.h               Main header file
  - RCC/main.c               Main program


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
    - Use LED1, LED2, LED3 and LED4 connected respectively to PD.07, PD.13, PF.03
      and PD.04 pins
    
  - STM3210E-EVAL Set-up 
    - Use LED1, LED2, LED3 and LED4 connected respectively to PF.06, PF0.7, PF.08
      and PF.09 pins

  - STM3210B-EVAL Set-up  
    - Use LED1, LED2, LED3 and LED4 connected respectively to PC.06, PC.07, PC.08
      and PC.09 pins
   
@par How to use it ? 

In order to make the program work, you must do the following :
- Create a project and setup all project configuration
- Add the required Library files :
  - stm32f10x_gpio.c 
  - stm32f10x_flash.c 
  - stm32f10x_rcc.c 
  - stm32f10x_exti.c
  - misc.c
  - stm32f10x_usart.c
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
