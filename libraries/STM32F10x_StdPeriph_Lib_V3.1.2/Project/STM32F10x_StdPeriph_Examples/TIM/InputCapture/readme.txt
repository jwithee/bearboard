/**
  @page TIM_Input_Capture TIM_Input_Capture 
  
  @verbatim
  ******************** (C) COPYRIGHT 2009 STMicroelectronics *******************
  * @file    TIM/InputCapture/readme.txt 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Description of the TIM InputCapture example.
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

This example shows how to use the TIM peripheral to measure the frequency of an external signal.

The TIMxCLK frequency is set to 72 MHz, the Prescaler is 0 so the TIM3 counter 
clock is 72 MHz. so the minimum frequency value to measure is 1100 Hz.
TIM3 is configured in Input Capture Mode: the external signal is connected to 
TIM3 Channel2 used as input pin.
To measure the frequency we use the TIM3 CC2 interrupt request,
so In the TIM3_IRQHandler routine, the frequency of the external signal is computed. 
The "Frequency" variable contains the external signal frequency:
Frequency = TIM3 counter clock / CAPTURE in Hz,
where the CAPTURE is the difference between two consecutive TIM3 captures. 


@par Directory contents 

  - TIM/InputCapture/stm32f10x_conf.h  Library Configuration file
  - TIM/InputCapture/stm32f10x_it.c    Interrupt handlers
  - TIM/InputCapture/stm32f10x_it.h    Interrupt handlers header file
  - TIM/InputCapture/main.c            Main program 

@par Hardware and Software environment 

  - This example runs on STM32F10x Connectivity line, High-Density, Medium-Density 
    and Low-Density Devices.
  
  - This example has been tested with STMicroelectronics STM3210C-EVAL (STM32F10x 
    Connectivity line), STM3210E-EVAL (STM32F10x High-Density) and STM3210B-EVAL
    (STM32F10x Medium-Density) evaluation boards and can be easily tailored to
    any other supported device and development board.

  - STM3210E-EVAL, STM3210B-EVAL  and STM3210C-EVAL Set-up 
    - Connect the external signal to measure to the TIM3 CH2 pin (PA.07).   
  
@par How to use it ? 

In order to make the program work, you must do the following:
- Create a project and setup all project configuration
- Add the required Library files:
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
