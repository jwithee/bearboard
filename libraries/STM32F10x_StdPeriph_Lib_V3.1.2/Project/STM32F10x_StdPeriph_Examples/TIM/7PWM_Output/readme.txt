/**
  @page TIM_7PWM_Output TIM_7PWM_Output
  
  @verbatim
  ******************** (C) COPYRIGHT 2009 STMicroelectronics *******************
  * @file    TIM/7PWM_Output/readme.txt 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Description of the TIM 7PWM_Output example.
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

This example shows how to configure the TIM1 peripheral to generate 7 PWM signals 
with 4 different duty cycles.

TIM1CLK is fixed to 72 MHz, the TIM1 Prescaler is equal to 0 so the TIM1 counter
clock used is 72 MHz.

TIM1 frequency is defined as follow:
TIM1 frequency = TIM1CLK/(TIM1_Period + 1) = 17.57 KHz.

The TIM1 CCR1 register value is equal to 0x7FF, so the TIM1 Channel 1 and TIM1 
Channel 1N generate a PWM signal with a frequency equal to 17.57 KHz 
and a duty cycle equal to:
TIM1 Channel1 duty cycle = TIM1_CCR1 /( TIM1_Period + 1) = 50%.

The TIM1 CCR2 register value is equal to 0x5FF, so the TIM1 Channel 2 and TIM1
Channel 2N generate a PWM signal with a frequency equal to 17.57 KHz 
and a duty cycle equal to:
TIM1 Channel2 duty cycle = TIM1_CCR2 / ( TIM1_Period + 1)= 37.5%.

The TIM1 CCR3 register value is equal to 0x3FF, so the TIM1 Channel 3 and TIM1 
Channel 3N generate a PWM signal with a frequency equal to 17.57 KHz 
and a duty cycle equal to:
TIM1 Channel3 duty cycle = TIM1_CCR3 / ( TIM1_Period + 1) = 25%.

The TIM1 CCR4 register value is equal to 0x1FF, so the TIM1 Channel 4 
generate a PWM signal with a frequency equal to 17.57 KHz 
and a duty cycle equal to:
TIM1 Channel4 duty cycle = TIM1_CCR4 / ( TIM1_Period + 1) = 12.5%.

The TIM1 waveform can be displayed using an oscilloscope.

@par Directory contents 

  - TIM/7PWM_Output/stm32f10x_conf.h  Library Configuration file
  - TIM/7PWM_Output/stm32f10x_it.c    Interrupt handlers
  - TIM/7PWM_Output/stm32f10x_it.h    Interrupt handlers header file
  - TIM/7PWM_Output/main.c            Main program

@par Hardware and Software environment 

  - This example runs on STM32F10x Connectivity line, High-Density, Medium-Density 
    and Low-Density Devices.
  
  - This example has been tested with STMicroelectronics STM3210C-EVAL (STM32F10x 
    Connectivity line), STM3210E-EVAL (STM32F10x High-Density) and STM3210B-EVAL
    (STM32F10x Medium-Density) evaluation boards and can be easily tailored to
    any other supported device and development board.
    

  - STM3210C-EVAL Set-up 
    - Connect the TIM1 pins(TIM1 full remapped pins) to an oscilloscope to monitor the different waveforms:
      - TIM1_CH1  pin (PE.08)  
      - TIM1_CH1N pin (PE.09)  
      - TIM1_CH2  pin (PE.10)  
      - TIM1_CH2N pin (PE.11)  
      - TIM1_CH3  pin (PE.12)  
      - TIM1_CH3N pin (PE.13)
      - TIM1_CH4  pin (PE.14)      

  - STM3210E-EVAL and STM3210B-EVAL Set-up 
    - Connect the TIM1 pins to an oscilloscope to monitor the different waveforms:
      - TIM1_CH1  pin (PA.08)  
      - TIM1_CH1N pin (PB.13)  
      - TIM1_CH2  pin (PA.09)  
      - TIM1_CH2N pin (PB.14)  
      - TIM1_CH3  pin (PA.10)  
      - TIM1_CH3N pin (PB.15)
      - TIM1_CH4  pin (PA.11)    
  
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
