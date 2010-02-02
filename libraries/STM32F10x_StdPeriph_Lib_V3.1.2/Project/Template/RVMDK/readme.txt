/**
  @page rvmdk RVMDK Project Template
  
  @verbatim
 ******************** (C) COPYRIGHT 2009 STMicroelectronics ********************
 * @file      readme.txt
 * @author    MCD Application Team
 * @version   V3.1.2
 * @date      09/28/2009
 * @brief     This sub-directory contains all the user-modifiable files needed 
 *            to create a new project linked with the STM32F10x Standard Peripheral  
 *            Library and working with RealView Microcontroller Development Kit(RVMDK)
 *            software toolchain (Version 3.50 and later).
 *******************************************************************************
 * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
 * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE TIME.
 * AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY DIRECT,
 * INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING FROM THE
 * CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE CODING
 * INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
 *******************************************************************************
 @endverbatim
 
 @par Directory contents
 
 - Project.Uv2/.Opt: A pre-configured project file with the provided library structure
                     that produces an executable image with RVMDK.
              
@note the @subpage note file contains the needed steps to follow when using the 
default startup file provided by RVMDK when creating new projects.
      
 @par How to use it ?
 
 - Open the Project.Uv2 project
 - In the build toolbar select the project config:
     - STM3210C-EVAL: to configure the project for STM32 Connectivity line devices
     @note The needed define symbols for this config are already declared in the
           preprocessor section: USE_STDPERIPH_DRIVER, STM32F10X_CL, USE_STM3210C_EVAL

     - STM3210B-EVAL: to configure the project for STM32 Medium-density devices
     @note The needed define symbols for this config are already declared in the
           preprocessor section: USE_STDPERIPH_DRIVER, STM32F10X_MD, USE_STM3210B_EVAL

     - STM3210E-EVAL: to configure the project for STM32 High-density devices
     @note The needed define symbols for this config are already declared in the
           preprocessor section: USE_STDPERIPH_DRIVER, STM32F10X_HD, USE_STM3210E_EVAL

 - Rebuild all files: Project->Rebuild all target files
 - Load project image: Debug->Start/Stop Debug Session
 - Run program: Debug->Run (F5)

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
