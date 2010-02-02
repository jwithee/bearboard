/**
  @page I2C_EEPROM I2C_EEPROM
  
  @verbatim
  ******************** (C) COPYRIGHT 2009 STMicroelectronics *******************
  * @file    I2C/M24C08_EEPROM/readme.txt 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Description of the I2C and M24C08 EEPROM communication example.
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

This example provides a basic example of how to use the I2C software library and
an associate I2C EEPROM driver to communicate with an I2C EEPROM device (here the
example is interfacing with M24CXX EEPROMs where XX={01, 02, 04, 08, 16, 32, 64}.

I2C peripheral is configured in Master transmitter during write operation and in
Master receiver during read operation from I2C EEPROM. 

The peripheral used is I2C1 but can be configured by modifying the defines values
in i2c_ee.h file. The speed is set to 200kHz.

For E24C02 to E24C16 devices, one I2C EEPROM Block address where the program will 
write the buffer have to be selected from the four address available and defined 
in the i2c_ee.h file.

For E24C32 and E24C64 devices all the memory is accessible through the two-bytes 
addressing mode and need to define block addresses. In this case, only the physical 
address has to be defined (according to the address pins (E0,E1 and E2) connection).
This address is defined in i2c_ee.h (default is 0xA0: E0, E1 and E2 tied to ground). 
The EEPROM addresses where the program start the write and the read operations 
is defined in the main.c file. 

First, the content of Tx1_Buffer is written to the EEPROM_WriteAddress1 and the
written data are read. The written and the read buffers data are then compared.
Following the read operation, the program wait that the EEPROM reverts to its 
Standby state. A second write operation is, then, performed and this time, Tx2_Buffer
is written to EEPROM_WriteAddress2, which represents the address just after the last 
written one in the first write. After completion of the second write operation, the 
written data are read. The contents of the written and the read buffers are compared.


@par Directory contents 

  - I2C/EEPROM/stm32f10x_conf.h  Library Configuration file
  - I2C/EEPROM/stm32f10x_it.c    Interrupt handlers
  - I2C/EEPROM/stm32f10x_it.h    Interrupt handlers header file
  - I2C/EEPROM/main.c            Main program
  - I2C/EEPROM/i2c_ee.c          I2C EEPROM driver
  - I2C/EEPROM/i2c_ee.h          Header for the i2c_ee.c file

@par Hardware and Software environment 

  - This example runs on STM32F10x High-Density, STM32F10x Medium-Density,
    STM32F10x Low-Density and STM32F10x Connectivity-Line devices.
  
  - This example has been tested with STM3210C-EVAL (STM32F10x Connectivity-Line) 
    evaluation board (implemented EEPROM is E24C64) with no additional hardware.    
    This example has also been tested with STMicroelectronics STM3210E-EVAL 
    (STM32F10x High-Density) and STM3210B-EVAL (STM32F10x Medium-Density) evaluation 
    boards with addition of the hardware connection listed below, and can be easily 
    tailored to any other supported device and development board.

  - STM3210C-EVAL Set-up 
    - Make sure the Jumper JP9 "I2C_SCK" is connected on the board.
    - For write operations, make sure the jumper JP17 "ROM_WP" is connected on the
       board (If this jumper is not connected, the EEPROM will be write-protected).
    - No additional Hardware connections are needed.

  - STM3210E-EVAL, STM3210B-EVAL or any other platform Set-up 
    - Connect I2C1 SCL pin (PB.06) to I2C EEPROM SCL (pin6)
    - Connect I2C1 SDA pin (PB.07) to I2C EEPROM SDA (pin5)
    - Check that a pull-up resistor (4.7K) is connected on one I2C SDA pin
    - Check that a pull-up resistor (4.7K) is connected on one I2C SCL pin
    - Connect I2C EEPROM Vcc (pin8) to Vdd
    - Connect I2C EEPROM Vss (pin4) to Vss
    - For E24C08: Connect I2C EEPROM E2 (pin1) to Vss for E24C08
    - For E24C64/E24C32: Connect I2C EEPROM E0, E1 and E2 (pin1, pin2 and pin3) to Vss

    @note The pull-up resitors are already implemented on the STM3210B-EVAL and
          STM3210E-EVAL evaluation boards.


@par How to use it ? 

In order to make the program work, you must do the following :
- Create a project and setup all project configuration
- Add the required Library files :
  - stm32f10x_i2c.c 
  - stm32f10x_rcc.c 
  - stm32f10x_gpio.c
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
 - Connectivity-Line devices are STM32F105xx and STM32F107xx microcontrollers.
   
 * <h3><center>&copy; COPYRIGHT 2009 STMicroelectronics</center></h3>
 */
