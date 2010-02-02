/**
  @page USART_Interrupt USART_Interrupt
  
  @verbatim
  ******************** (C) COPYRIGHT 2009 STMicroelectronics *******************
  * @file    USART/Interrupt/readme.txt 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Description of the USART Interrupts Example.
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

This example provides a basic communication between USARTy and USARTz using 
interrupts. USARTy and USARTz can be USART1 and USART2 or USART2 and USART3, 
depending on the STMicroelectronics EVAL board you are using.

USARTz sends TxBuffer2 to USARTy which sends TxBuffer1 to USARTz. The data received 
by USARTy and USARTz are stored respectively in RxBuffer1 and RxBuffer2. The data
transfer is managed in USARTy_IRQHandler and USARTz_IRQHandler in stm32f10x_it.c file.

USARTy and USARTz configured as follow:
  - BaudRate = 9600 baud  
  - Word Length = 8 Bits
  - One Stop Bit
  - No parity
  - Hardware flow control disabled (RTS and CTS signals)
  - Receive and transmit enabled       

        
@par Directory contents 

  - USART/Interrupt/platform_config.h    Evaluation board specific configuration file
  - USART/Interrupt/stm32f10x_conf.h     Library Configuration file
  - USART/Interrupt/stm32f10x_it.h       Interrupt handlers header file
  - USART/Interrupt/stm32f10x_it.c       Interrupt handlers
  - USART/Interrupt/main.c               Main program


@par Hardware and Software environment 

  - This example runs on STM32F10x Connectivity line, High-Density, Medium-Density 
    and Low-Density Devices.
  
  - This example has been tested with STMicroelectronics STM3210C-EVAL (STM32F10x 
    Connectivity line), STM3210E-EVAL (STM32F10x High-Density) and STM3210B-EVAL
    (STM32F10x Medium-Density) evaluation boards and can be easily tailored to
    any other supported device and development board.
    To select the STMicroelectronics evaluation board used to run the example, 
    uncomment the corresponding line in USART/Interrupt/platform_config.h file

  - STM3210C-EVAL Set-up 
    - Connect USART2 Tx pin (PD.05) to USART3 Rx pin (PC.11)
    - Connect USART2 Rx pin (PD.06) to USART3 Tx pin	(PC.10)
      @note In this case USART3 Tx and Rx pins are remapped by software.
            Make sure that jumpers JP19 and JP18 are open.
              
  - STM3210E-EVAL Set-up 
    - Connect a null-modem female/female RS232 cable between CN12 (USART1) and 
      CN8 (USART2).
    
  - STM3210B-EVAL Set-up
    - Connect a null-modem female/female RS232 cable between CN6 (USART1) and 
      CN5 (USART2).
      @note In this case USART2 Tx and Rx pins are remapped by software on PD.05
            and PD.06 respectively. 
  
@par How to use it ? 

In order to make the program work, you must do the following :
- Create a project and setup all project configuration
- Add the required Library files :
  - stm32f10x_gpio.c
  - stm32f10x_rcc.c 
  - stm32f10x_usart.c 
  - misc.c
  - system_stm32f10x.c (under Libraries\CMSIS\Core\CM3)
    
- Edit stm32f10x.h file to select the device you are working on.
- Edit USART/Interrupt/platform_config.h file to select the evaluation board you will use.
  
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
