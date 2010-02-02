/**
  ******************************************************************************
  * @file    FSMC/NOR_CodeExecute/main.c 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Main program body.
  ******************************************************************************
  * @copy
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2009 STMicroelectronics</center></h2>
  */ 

/* Includes ------------------------------------------------------------------*/
#include "fsmc_nor.h"

/** @addtogroup STM32F10x_StdPeriph_Examples
  * @{
  */

/** @addtogroup FSMC_NOR_CodeExecute
  * @{
  */ 

/* Private typedef -----------------------------------------------------------*/
typedef  void (*pFunction)(void);

/* Private define ------------------------------------------------------------*/
#define ApplicationAddress       ((uint32_t)0x64000000)

/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
pFunction Jump_To_Application;
__IO uint32_t JumpAddress;

/* Private function prototypes -----------------------------------------------*/
void RCC_Configuration(void);

/* Private functions ---------------------------------------------------------*/

/**
  * @brief   Main program.
  * @param  None
  * @retval None
  */
int main(void)
{
  /* System Clocks Configuration */
  RCC_Configuration();

  /* FSMC nOR configuration  **************************************************/
  /* Enable the FSMC Clock */
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_FSMC, ENABLE);

  /* Configure FSMC Bank1 NOR/SRAM2 */
  FSMC_NOR_Init();

  /* Jump to code loaded in NOR memory and execute it *************************/
  JumpAddress = *(__IO uint32_t*) (ApplicationAddress + 4);
  Jump_To_Application = (pFunction) JumpAddress;

  /* Initialize user application's Stack Pointer */
  __set_MSP(*(__IO uint32_t*) ApplicationAddress); 

  Jump_To_Application();

  while (1)
  {
  }
}

/**
  * @brief  Configures the different system clocks.
  * @param  None
  * @retval None
  */
void RCC_Configuration(void)
{   
  /* Setup the microcontroller system. Initialize the Embedded Flash Interface,  
     initialize the PLL and update th SystemFrequency variable. */
  SystemInit();
}

#ifdef  USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/**
  * @}
  */ 

/**
  * @}
  */ 

/******************* (C) COPYRIGHT 2009 STMicroelectronics *****END OF FILE****/
