/**
  @page BKP_Backup_Data BKP_Backup_Data
  
  @verbatim
  ******************** (C) COPYRIGHT 2009 STMicroelectronics *******************
  * @file    BKP/Backup_Data/readme.txt 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Description of the BKP Backup_Data Example.
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

This example shows how to store user data in the Backup data registers.
As the Backup (BKP) domain still powered by VBAT when VDD is switched off, its
contents are not lost if a battery is connected to VBAT pin.

The program behaves as follows:

1. After startup the program checks if the board has been powered up. If yes, 
the values in the BKP data registers are checked:
   - if a battery is connected to the VBAT pin, the values in the BKP data registers
     are retained
   - if no battery is connected to the VBAT pin, the values in the BKP data registers
     are lost
     
2. After an external reset, the BKP data registers contents are not checked.

Four LEDs are used to monitor the system state as follows:
1. LD3 on / LD1 on: a Power On Reset occurred and the values in the BKP data
   registers are correct
   
2. LD3 on / LD2 on: a Power On Reset occurred and the values in the BKP data
   registers are not correct or they have not yet been programmed (if it is the
   first time the program is executed)
   
3. LD3 off / LD1 off / LD2 off: no Power On Reset occurred

4. LD4 on: program running

@par Directory contents 

  - BKP/Backup_Data/stm32f10x_conf.h     Library Configuration file
  - BKP/Backup_Data/stm32f10x_it.c       Interrupt handlers
  - BKP/Backup_Data/stm32f10x_it.h       Header for stm32f10x_it.c
  - BKP/Backup_Data/main.c               Main program

@par Hardware and Software environment 

  - This example runs on STM32F10x Connectivity line, High-Density, Medium-Density 
    and Low-Density Devices.
  
  - This example has been tested with STMicroelectronics STM3210C-EVAL (STM32F10x 
    Connectivity line), STM3210E-EVAL (STM32F10x High-Density) and STM3210B-EVAL
    (STM32F10x Medium-Density) evaluation boards and can be easily tailored to
    any other supported device and development board.
    To select the STMicroelectronics evaluation board used to run the example, 
    uncomment the corresponding line in stm32_eval.h file (under Utilities\STM32_EVAL)

  - STM3210C-EVAL Set-up 
    - Use LD1, LD2, LD3 and LD4 leds connected respectively to PD.07, PD.13, PF.03
      and PD.04 pins  
    - Use 3V battery on VBAT pin (set jumper JP24 in position 1-2)  

  - STM3210E-EVAL Set-up 
    - Use LD1, LD2, LD3 and LD4 leds connected respectively to PF.06, PF0.7, 
      PF.08 and PF.09 pins
    - Use 3V battery on VBAT pin (set jumper JP1 in position 1-2)  

  - STM3210B-EVAL Set-up  
    - Use LD1, LD2, LD3 and LD4 leds connected respectively to PC.06, PC.07, 
      PC.08 and PC.09 pins
    - Use 3V battery on VBAT pin (set jumper JP11 in position 1-2)  
        
@par How to use it ? 

In order to make the program work, you must do the following :
- Create a project and setup all project configuration
- Add the required Library files :
  - stm32f10x_pwr.c 
  - stm32f10x_bkp.c 
  - stm32f10x_gpio.c 
  - stm32f10x_rcc.c
  - stm32f10x_exti.c 
  - misc.c
  - stm32f10x_usart.c
  - system_stm32f10x.c (under Libraries\CMSIS\Core\CM3)
  - stm32_eval.c (under Utilities\STM32_EVAL)

- Edit stm32f10x.h file to select the device you are working on.
- Edit stm32_eval.h file to select the evaluation board you will use.
  
@b Tip: You can tailor the provided project template to run this example, for 
        more details please refer to "stm32f10x_stdperiph_lib_um.chm" user 
        manual; select "Peripheral Examples" then follow the instructions 
        provided in "How to proceed" section.   
- Link all compiled files and load your image into target memory
- Run the example in standalone mode (without debugger connection)
- Power on/off the board and check that the BKP contents are not lost
   
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
