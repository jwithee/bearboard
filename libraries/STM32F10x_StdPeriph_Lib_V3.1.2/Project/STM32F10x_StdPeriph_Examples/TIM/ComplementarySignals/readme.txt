/**
  @page TIM_ComplementarySignals TIM_ComplementarySignals
  
  @verbatim
  ******************** (C) COPYRIGHT 2009 STMicroelectronics *******************
  * @file    TIM/ComplementarySignals/readme.txt 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Description of the TIM ComplementarySignals example.
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

This example shows how to configure the TIM1 peripheral to generate three 
complementary TIM1 signals, to insert a defined dead time value, to use the break 
feature and to lock the desired parameters.

TIM1CLK is fixed to 72 MHz, the TIM1 Prescaler is equal to 0 so the TIM1 counter
clock used is 72 MHz.

TIM1 frequency is defined as follow:
TIM1 frequency = TIM1 counter clock / (TIM1_Period + 1) = 1.098 KHz.

The Three Duty cycles are computed as the following description: 

- TIM1 Channel1 duty cycle = TIM1_CCR1 / (TIM1_Period + 1) = 50% 
- TIM1 Channel1N duty cycle = (TIM1_Period - TIM1_CCR1) / (TIM1_Period + 1) = 50%

- TIM1 Channel2 duty cycle = TIM1_CCR2 / (TIM1_Period + 1) = 25%
- TIM1 Channel2N duty cycle = (TIM1_Period - TIM1_CCR1) / (TIM1_Period + 1) = 75% 

- TIM1 Channel3 duty cycle = TIM1_CCR3 / TIM1_Period = 12.5% 
- TIM1 Channel3N duty cycle = (TIM1_Period - TIM1_CCR3) / (TIM1_Period + 1) = 87.5%

A dead time of 1.62 us is inserted between the different complementary signals, 
and the Lock level 1 is selected.
The break Polarity is used at High level.

The TIM1 waveform can be displayed using an oscilloscope.

@par Directory contents 

  - TIM/ComplementarySignals/stm32f10x_conf.h  Library Configuration file
  - TIM/ComplementarySignals/stm32f10x_it.c    Interrupt handlers
  - TIM/ComplementarySignals/stm32f10x_it.h    Interrupt handlers header file
  - TIM/ComplementarySignals/main.c            Main program

@par Hardware and Software environment 

  - This example runs on STM32F10x Connectivity line, High-Density, Medium-Density 
    and Low-Density Devices.
  
  - This example has been tested with STMicroelectronics STM3210C-EVAL (STM32F10x 
    Connectivity line), STM3210E-EVAL (STM32F10x High-Density) and STM3210B-EVAL
    (STM32F10x Medium-Density) evaluation boards and can be easily tailored to
    any other supported device and development board.
    

  - STM3210C-EVAL Set-up 
    - Connect the TIM1 pins(TIM1 full remapped pins) to an oscilloscope to monitor the different waveforms:
      - TIM1_CH1  pin (PE.09)
      - TIM1_CH1N pin (PE.08)  
      - TIM1_CH2  pin (PE.11)  
      - TIM1_CH1N pin (PE.10)
      - TIM1_CH3  pin (PE.13)  
      - TIM1_CH3N pin (PE.12)  
    - Connect the TIM1 break pin TIM1_BKIN pin (PE.15) to the GND. To generate a 
      break event, switch this pin level from 0V to 3.3V. 

  - STM3210E-EVAL and STM3210B-EVAL Set-up 
    - Connect the TIM1 pins to an oscilloscope to monitor the different waveforms:
      - TIM1_CH1  pin (PA.08)  
      - TIM1_CH1N pin (PB.13)  
      - TIM1_CH2  pin (PA.09)  
      - TIM1_CH2N pin (PB.14)  
      - TIM1_CH3  pin (PA.10)  
      - TIM1_CH3N pin (PB.15)

    - Connect the TIM1 break pin TIM1_BKIN pin (PB.12) to the GND. To generate a 
      break event, switch this pin level from 0V to 3.3V.  
  
@par How to use it ? 

In order to make the program work, you must do the following:
- Create a project and setup all project configuration
- Add the required Library files:
  - stm32f10x_tim.c 
  - stm32f10x_gpio.c 
  - stm32f10x_rcc.c
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
