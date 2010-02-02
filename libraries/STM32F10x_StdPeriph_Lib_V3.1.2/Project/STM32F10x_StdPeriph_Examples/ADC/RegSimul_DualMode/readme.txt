/**
  @page ADC_RegSimul_DualMode ADC_RegSimul_DualMode
  
  @verbatim
  ******************** (C) COPYRIGHT 2009 STMicroelectronics *******************
  * @file    ADC/RegSimul_DualMode/readme.txt 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Description of the ADC regular simultaneous dual mode Example.
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

This example describes how to use ADC1 and ADC2 in regular simultaneous dual mode.
ADC1 is configured to convert channel14 and channel17 regular channels continuously.
ADC2 is configured to convert channel11 and channel12 regular channels continuously.
The connection between internal Vref and channel17 is enabled for ADC1.

Once the regular channels conversion is started by software, channel14 is converted
on ADC1 and channel11 is converted on ADC2 on the same time. The 32bits conversion 
result is then stored on ADC1 DR register. The DMA will transfer this data which
will be stored ADC_DualConvertedValueTab table. Consecutively to those conversion,
channel17 is converted on ADC1 and channel12 on ADC2. The combined conversion
result is also transfered by DMA to the same destination buffer. 

The same procedure is repeated until the specified number of data to be transfered
by DMA is reached.

The ADC1 clock is set to 14 MHz.

@par Directory contents 

  - ADC/RegSimul_DualMode/stm32f10x_conf.h  Library Configuration file
  - ADC/RegSimul_DualMode/stm32f10x_it.c    Interrupt handlers
  - ADC/RegSimul_DualMode/stm32f10x_it.h    Interrupt handlers header file
  - ADC/RegSimul_DualMode/main.c            Main program

@par Hardware and Software environment 

  - This example runs on STM32F10x Connectivity line, High-Density, Medium-Density 
    and Low-Density Devices.
  
  - This example has been tested with STMicroelectronics STM3210C-EVAL (STM32F10x 
    Connectivity line), STM3210E-EVAL (STM32F10x High-Density) and STM3210B-EVAL
    (STM32F10x Medium-Density) evaluation boards and can be easily tailored to
    any other supported device and development board.

  - STM3210C-EVAL Set-up 
    - Connect a known voltage, between 0-3.3V, to ADC Channel14 mapped on pin 
      PC.04 (potentiometer RV1), ADC Channel11 mapped on pin PC.01 and ADC 
      Channel12 mapped on pin PC.02.
      
  - STM3210E-EVAL Set-up 
    - Connect a known voltage, between 0-3.3V, to ADC Channel14 mapped on pin 
      PC.04 (potentiometer RV1), ADC Channel11 mapped on pin PC.01 and ADC 
      Channel12 mapped on pin PC.02.

  - STM3210B-EVAL Set-up 
    - Connect a known voltage, between 0-3.3V, to ADC Channel14 mapped on pin 
      PC.04 (potentiometer RV1), ADC Channel11 mapped on pin PC.01 and ADC 
      Channel12 mapped on pin PC.02.          
      
@par How to use it ? 

In order to make the program work, you must do the following :
- Create a project and setup all project configuration
- Add the required Library files :
  - stm32f10x_adc.c 
  - stm32f10x_dma.c
  - stm32f10x_flash.c 
  - stm32f10x_gpio.c 
  - stm32f10x_rcc.c 
       
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
