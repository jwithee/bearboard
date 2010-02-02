/**
  @page TIM_DMA TIM_DMA
  
  @verbatim
  ******************** (C) COPYRIGHT 2009 STMicroelectronics *******************
  * @file    TIM/DMA/readme.txt 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Description of the TIM DMA example.
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

This example provides a description of how to use DMA with TIM1 Update request
to transfer Data from memory to TIM1 Capture Compare Register3.

TIM1CLK = 72 MHz, Prescaler = 0, TIM1 counter clock = 72 MHz 
The TIM1 Channel3 is configured to generate a complementary PWM signal with 
a frequency equal to: TIM1 counter clock / (TIM1_Period + 1) = 17.57 KHz

The TIM1 Channel3 is configured to generate a complementary PWM signal with 
a frequency equal to 17.578 KHz and a variable duty cycle that is changed 
by the DMA after a specific number of Update event. 
The number of this repetitive requests is defined by the TIM1 Repetion counter,
each 3 Update Requests, the TIM1 Channel3 Duty Cycle changes to the next new value
defined by the SRC_Buffer.

@par Directory contents 

  - TIM/DMA/stm32f10x_conf.h  Library Configuration file
  - TIM/DMA/stm32f10x_it.c    Interrupt handlers
  - TIM/DMA/stm32f10x_it.h    Interrupt handlers header file
  - TIM/DMA/main.c            Main program 

@par Hardware and Software environment 

 - This example runs on STM32F10x Connectivity line, High-Density, Medium-Density 
    and Low-Density Devices.
  
  - This example has been tested with STMicroelectronics STM3210C-EVAL (STM32F10x 
    Connectivity line), STM3210E-EVAL (STM32F10x High-Density) and STM3210B-EVAL
    (STM32F10x Medium-Density) evaluation boards and can be easily tailored to
    any other supported device and development board.

  - STM3210E-EVAL, STM3210B-EVAL and STM3210C-EVAL Set-up 
    - Connect the following pins to an oscilloscope to monitor the different 
      waveforms:  
        - TIM1 CH3  (PA.10)
        - TIM1 CH3N (PB.15)  
  
@par How to use it ? 

In order to make the program work, you must do the following:
- Create a project and setup all project configuration
- Add the required Library files:
  - stm32F10x_dma.c
  - stm32F10x_flash.c 
  - stm32F10x_gpio.c 
  - stm32F10x_rcc.c  
  - stm32F10x_tim.c  
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
