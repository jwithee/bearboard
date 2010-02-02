/**
  @page SPI_Simplex_Interrupt SPI_Simplex_Interrupt
  
  @verbatim
  ******************** (C) COPYRIGHT 2009 STMicroelectronics *******************
  * @file    SPI/Simplex_Interrupt/readme.txt 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Description of the SPI Simplex_Interrupt Example.
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

This example provides a description of how to set a communication between two
SPIs in simplex mode and performs a data buffer transfer from SPI_MASTER to
SPI_SLAVE using TxE interrupt for master and RxNE interrupt for slave.
SPI_MASTER and SPI_SLAVE can be SPI1 and SPI2 or SPI3 and SPI2, depending on the
STMicroelectronics EVAL board you are using.

Both SPIs are configured with 8bit data frame and a 9Mbit/s communication speed.
The TxE interrupt is enabled for the master and the RxNE interrupt is enabled for
the slave.

Once both SPIs are enabled, first TxE interrupt is generated for the master
and in its interrupt service routine the first data is sent from SPI_MASTER_Buffer_Tx. 
Once this data is received by the slave the RxNE interrupt is generated and in
the routine this data is stored in the SPI_SLAVE_Buffer_Rx.

The same procedure is followed for the remaining SPI_MASTER_Buffer_Tx data.
Once all data buffer are received by the slave the TxE interrupt is disabled.
A comparison is done and TransferStatus variable gives the data transfer status
where it is PASSED if transmitted and received data are the same otherwise it is FAILED.


@par Directory contents 

  - SPI/Simplex_Interrupt/platform_config.h    Evaluation board specific configuration file
  - SPI/Simplex_Interrupt/stm32f10x_conf.h     Library Configuration file
  - SPI/Simplex_Interrupt/stm32f10x_it.c       Interrupt handlers
  - SPI/Simplex_Interrupt/stm32f10x_it.h       Header for stm32f10x_it.c
  - SPI/Simplex_Interrupt/main.c               Main program


@par Hardware and Software environment 

  - This example runs on STM32F10x Connectivity line, High-Density, Medium-Density 
    and Low-Density Devices.
  
  - This example has been tested with STMicroelectronics STM3210C-EVAL (STM32F10x 
    Connectivity line), STM3210E-EVAL (STM32F10x High-Density) and STM3210B-EVAL
    (STM32F10x Medium-Density) evaluation boards and can be easily tailored to
    any other supported device and development board.
    To select the STMicroelectronics evaluation board used to run the example, 
    uncomment the corresponding line in SPI/Simplex_Interrupt/platform_config.h file.  

  - STM3210C-EVAL Set-up 
    - Connect SPI3 SCK pin (PC.10) to SPI2 SCK pin (PB.13)
    - Connect SPI3 MOSI pin (PC.12) to SPI2 MISO pin (PB.14)
    @note In this case SPI3 pins are remapped by software.

  - STM3210E-EVAL Set-up 
    - Connect SPI1 SCK pin (PA.05) to SPI2 SCK pin (PB.13)
    - Connect SPI1 MOSI pin (PA.07) to SPI2 MISO pin (PB.14)
    @note The jumper 14 (USB Disconnect) must be set in position 1<->2 in order
          to not interfer with SPI2 MISO pin PB14.

  - STM3210B-EVAL Set-up 
    - Connect SPI1 SCK pin (PA.05) to SPI2 SCK pin (PB.13)
    - Connect SPI1 MOSI pin (PA.07) to SPI2 MISO pin (PB.14)

    
@par How to use it ? 

In order to make the program work, you must do the following :
- Create a project and setup all project configuration
- Add the required Library files :
  - stm32f10x_gpio.c 
  - stm32f10x_rcc.c 
  - stm32f10x_spi.c
  - misc.c 
  - system_stm32f10x.c (under Libraries\CMSIS\Core\CM3)
   
- Edit stm32f10x.h file to select the device you are working on.
- Edit SPI/Simplex_Interrupt/platform_config.h file to select the evaluation board you will use.

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
