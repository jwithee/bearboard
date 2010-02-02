/**
  @page HiTOP5_STM3210E HiTOP5.31 Project Template for STM32F10x High-density devices
  
  @verbatim
 ******************** (C) COPYRIGHT 2009 STMicroelectronics ********************
 * @file     readme.txt
 * @author   MCD Application Team
 * @version  V3.1.2
 * @date     09/28/2009
 * @brief    This sub-directory contains all the user-modifiable files needed
 *           to create a new project linked with the STM32F10x Standard Peripherals 
 *           Library and working with HiTOP software toolchain (version 5.31 and later).
 ********************************************************************************
 * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
 * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE TIME.
 * AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY DIRECT,
 * INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING FROM THE
 * CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE CODING
 * INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
 *******************************************************************************
 @endverbatim
 
 @par Directory contents

 - project .htp: A pre-configured project file with the provided library 
                 structure that produces an executable image with HiTOP
                
 - STM32F10x_hd.lsl  : This file is used to place program code (readonly)
                       in internal FLASH and data (readwrite, Stack and Heap)
                       in internal SRAM.
                       It contains also the vector table of the STM32 high-density
                       devices.
                       You can customize this file to your need.                    
                      
 
 - STM32F10xnor.lsl  : This file  used to place program code (readonly) in 
                       external NOR FLASH and data (readwrite, Stack and Heap)in 
                       internal SRAM.
                       It contains also the vector table of the STM32 high-density
                       devices. 
                       You can customize this file to your need. 
                       This file is used only with STM32 High-density devices.                                           

 - flash_nor.scr    :  This file is a HiTOP script allowing the FSMC configuration.
                       It should be executed before programming the NOR flash of the 
                       STM32 High-density devices.

- reset_appl.scr    : This file is a HiTOP script it performs a target reset.
   
- reset_go_main.scr : This file is a HiTOP script and it sets the Program Counter 
                      at the "main" instruction.

- StartupScript.scr : This file is a HiTOP script and it performs a target reset before loading 
                      The executable image.
- lnk               : This file is the HiTOP linker it invokes the STM32F10x_hd.lsl.

- linknor           : This file is the HiTOP linker it invokes the STM32F10xnor.lsl.         
                             
 @par How to use it ?

- Open the HiTOP toolchain.
- Browse to open the project.htp
- A "Download application" window is displayed, click "cancel".
- Rebuild all files: Project->Rebuild all
- Load project image : Click "ok" in the "Download application" window.
- Run the "RESET_GO_MAIN" script to set the PC at the "main"
- Run program: Debug->Go(F5).

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
