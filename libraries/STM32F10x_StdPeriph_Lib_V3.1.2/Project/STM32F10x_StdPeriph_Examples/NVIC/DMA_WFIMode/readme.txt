/**
  @page NVIC_DMA_WFIMode NVIC_DMA_WFIMode
  
  @verbatim
  ******************** (C) COPYRIGHT 2009 STMicroelectronics *******************
  * @file    NVIC/DMA_WFIMode/readme.txt 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Description of the NVIC DMA in WFI mode Example.
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

This example shows how to enters the system to WFI mode with DMA transfer enabled
and wake-up from this mode by the DMA End of Transfer interrupt.

In the associated software, the system clock is set to 72 MHz, the DMA1 Channely
is configured to transfer 10 data from the EVAL COM1 USART data register to a 
predefined buffer, DST_Buffer, and to generate an interrupt at the end of the 
transfer.
The EVAL COM1 USART receives data from Hyperterminal.
A LED1 is toggled with a frequency depending on the system clock, this is used 
to indicate whether the MCU is in WFI or RUN mode. 

A falling edge on the selected EXTI Line will put the core in the WFI mode, 
causing the led pin to stop toggling.
To wake-up from WFI mode you have to send the sequence (0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
from the Hyperterminal to the EVAL COM1 USART. These bytes will be transferred 
by the DMA from the EVAL COM1 receive data register to the predefined buffer, 
then generates an interrupt which exits the system from WFI mode. 
The LED1 restarts toggling and a LED2 will toggle if the buffer is correctly 
received else a LED3 is toggled.


@par Directory contents 

  - NVIC/DMA_WFIMode/stm32f10x_conf.h     Library Configuration file
  - NVIC/DMA_WFIMode/stm32f10x_it.c       Interrupt handlers
  - NVIC/DMA_WFIMode/stm32f10x_it.h       Interrupt handlers header file
  - NVIC/DMA_WFIMode/main.c               Main program


@par Hardware and Software environment 

  - This example runs on STM32F10x Connectivity line, High-Density, Medium-Density 
    and Low-Density Devices.
  
  - This example has been tested with STMicroelectronics STM3210C-EVAL (STM32F10x 
    Connectivity line), STM3210E-EVAL (STM32F10x High-Density) and STM3210B-EVAL
    (STM32F10x Medium-Density) evaluation boards and can be easily tailored to
    any other supported device and development board.
    To select the STMicroelectronics evaluation board used to run the example, 
    uncomment the corresponding line in stm32_eval.h file
    
  - STM3210C-EVAL Set-up 
    - Use LED1, LED2, LED3 and LED4 connected respectively to PD.07, PD.13, PF.03
      and PD.04 pins
    - The USART2 signals (Rx, Tx) must be connected to a DB9 connector using a RS232
      transceiver.
    - Connect a null-modem female/female RS232 cable between the DB9 connector,
      CN6 on STM3210C-EVAL board, and PC serial port.   
    - Hyperterminal configuration:
       - Word Length = 8 Bits
       - One Stop Bit
       - No parity
       - BaudRate = 115200 baud
       - flow control: None 
    - Use the Key push-button connected to pin PB.09 (EXTI Line9). 
    
  - STM3210E-EVAL Set-up 
    - Use LED1, LED2, LED3 and LED4 leds connected respectively to PF.06, PF0.7, PF.08
      and PF.09 pins
    - The USART1 signals (Rx, Tx) must be connected to a DB9 connector using a RS232
      transceiver.
    - Connect a null-modem female/female RS232 cable between the DB9 connector,
      CN12 on STM3210E-EVAL board, and PC serial port.   
    - Hyperterminal configuration:
       - Word Length = 8 Bits
       - One Stop Bit
       - No parity
       - BaudRate = 115200 baud
       - flow control: None 
    - Use the Key push-button connected to pin PG.08 (EXTI Line8).   

  - STM3210B-EVAL Set-up   
    - Use LED1, LED2, LED3 and LED4 leds connected respectively to PC.06, PC.07, PC.08
      and PC.09 pins
    - The USART1 signals (Rx, Tx) must be connected to a DB9 connector using a RS232
      transceiver.
    - Connect a null-modem female/female RS232 cable between the DB9 connector, 
      CN6 on STM3210B-EVAL board, and PC serial port.   
    - Hyperterminal configuration:
       - Word Length = 8 Bits
       - One Stop Bit
       - No parity
       - BaudRate = 115200 baud
       - flow control: None   
    - Use the Key push-button connected to pin PB.09 (EXTI Line9).
     
@par How to use it ? 

In order to make the program work, you must do the following :
- Create a project and setup all project configuration
- Add the required Library files :
  - stm32f10x_exti.c 
  - stm32f10x_gpio.c 
  - stm32f10x_rcc.c 
  - stm32f10x_dma.c 
  - stm32f10x_usart.c
  - misc.c  
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
