/**
  @page TIM_TimeBase TIM_TimeBase
  
  @verbatim
  ******************** (C) COPYRIGHT 2009 STMicroelectronics *******************
  * @file    TIM/TimeBase/readme.txt 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Description of the TIM Time Base example.
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

This example shows how to configure the TIM peripheral in Output Compare Timing 
mode with the corresponding Interrupt requests for each channel in order to generate
4 different time bases.

The TIMxCLK frequency is set to 36 MHz, the Prescaler is 4 so the TIM2 counter
clock is 7.2 MHz. 

The TIM2 CC1 register value is equal to 49152, 
CC1 update rate = TIM2 counter clock / CCR1_Val = 146.48 Hz,
so the TIM2 Channel 1 generates an interrupt each 6.8ms

The TIM2 CC2 register is equal to 32768, 
CC2 update rate = TIM2 counter clock / CCR2_Val = 219.7 HzHz
so the TIM2 Channel 2 generates an interrupt each 4.55ms

The TIM2 CC3 register is equal to 16384, 
CC3 update rate = TIM2 counter clock / CCR3_Val = 439.4Hz
so the TIM2 Channel 3 generates an interrupt each 2.27ms

The TIM2 CC4 register is equal to 8192, 
CC4 update rate = TIM2 counter clock / CCR4_Val =  878.9 Hz
so the TIM2 Channel 4 generates an interrupt each 1.13ms.

When the counter value reaches the Output compare registers values, the Output 
Compare interrupts are generated and, in the handler routine, 4 pins(PC.06, PC.07,
PC.08 and  PC.09) are toggled with the following frequencies: 

- PC.06: 73.24Hz (CC1)
- PC.07: 109.8Hz (CC2)
- PC.08: 219.7Hz (CC3) 
- PC.09: 439.4Hz (CC4)

@par Directory contents 

  - TIM/TimeBase/stm32f10x_conf.h  Library Configuration file
  - TIM/TimeBase/stm32f10x_it.c    Interrupt handlers
  - TIM/TimeBase/stm32f10x_it.h    Interrupt handlers header file
  - TIM/TimeBase/main.c            Main program 

@par Hardware and Software environment 

  - This example runs on STM32F10x Connectivity line, High-Density, Medium-Density 
    and Low-Density Devices.
  
  - This example has been tested with STMicroelectronics STM3210C-EVAL (STM32F10x 
    Connectivity line), STM3210E-EVAL (STM32F10x High-Density) and STM3210B-EVAL
    (STM32F10x Medium-Density) evaluation boards and can be easily tailored to
    any other supported device and development board.

  - STM3210E-EVAL, STM3210B-EVAL and STM3210C-EVAL Set-up 
    - Connect an oscilloscope on PC.06, PC.07, PC.08 and  PC.09 to show the 
      different Time Base signals.  
  
@par How to use it ? 

In order to make the program work, you must do the following:
- Create a project and setup all project configuration
- Add the required Library files:
  - stm32f10x_flash.c 
  - stm32f10x_gpio.c  
  - stm32f10x_rcc.c 
  - stm32f10x_tim.c
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
