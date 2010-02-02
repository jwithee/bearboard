/**
  @page TIM_Parallel_Synchro TIM_Parallel_Synchro
  
  @verbatim
  ******************** (C) COPYRIGHT 2009 STMicroelectronics *******************
  * @file    TIM/Parallel_Synchro/readme.txt 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Description of the TIM Parallel_Synchro example.
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

This example shows how to synchronize TIM peripherals in parallel mode.
In this example three timers are used:

Timers synchronisation in parallel mode:

1/TIM2 is configured as Master Timer:
 - PWM Mode is used
 - The TIM2 Update event is used as Trigger Output 
 
2/TIM3 and TIM4 are slaves for TIM2,
 - PWM Mode is used
 - The ITR1(TIM2) is used as input trigger for both slaves 
 - Gated mode is used, so starts and stops of slaves counters are controlled 
   by the Master trigger output signal(update event).

The TIMxCLK is fixed to 72 MHz, the TIM2 counter clock is 72 MHz.
The Master Timer TIM2 is running at TIM2 frequency:
TIM2 frequency = TIM2 counter clock/ (TIM2 period + 1) = 281.250 KHz 
and the duty cycle is equal to TIM2_CCR1/(TIM2_ARR + 1) = 25%.

The TIM3 is running at:
(TIM2 frequency)/ (TIM3 period + 1) = 28.1250 KHz and a duty cycle equal to 
TIM3_CCR1/(TIM3_ARR + 1) = 30%

The TIM4 is running at:
(TIM2 frequency)/ (TIM4 period + 1) = 56.250 KHz and a duty cycle equal to 
TIM4_CCR1/(TIM4_ARR + 1) = 60%

@par Directory contents 

  - TIM/Parallel_Synchro/stm32f10x_conf.h  Library Configuration file
  - TIM/Parallel_Synchro/stm32f10x_it.c    Interrupt handlers
  - TIM/Parallel_Synchro/stm32f10x_it.h    Interrupt handlers header file
  - TIM/Parallel_Synchro/main.c            Main program
 
@par Hardware and Software environment 

  - This example runs on STM32F10x Connectivity line, High-Density, Medium-Density 
    and Low-Density Devices.
  
  - This example has been tested with STMicroelectronics STM3210C-EVAL (STM32F10x 
    Connectivity line), STM3210E-EVAL (STM32F10x High-Density) and STM3210B-EVAL
    (STM32F10x Medium-Density) evaluation boards and can be easily tailored to
    any other supported device and development board.

  - STM3210C-EVAL Set-up 
    - Connect the pins to an oscilloscope to monitor the different waveforms:
      - TIM2 CH1 (PA.00)
      - TIM3 CH1 (PC.06) Remapped pin
      - TIM4 CH1 (PB.06) 

  - STM3210E-EVAL and STM3210B-EVAL Set-up 
    - Connect the pins to an oscilloscope to monitor the different waveforms:
      - TIM2 CH1 (PA.00)
      - TIM3 CH1 (PA.06) 
      - TIM4 CH1 (PB.06) 
  
@par How to use it ? 

In order to make the program work, you must do the following:
- Create a project and setup all project configuration
- Add the required Library files:
  - stm32f10x_gpio.c 
  - stm32f10x_rcc.c 
  - stm32f10x_tim.c 
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
