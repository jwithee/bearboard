/**
  ******************************************************************************
  * @file    NVIC/Priority/main.c 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Main program body
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
#include "stm32f10x.h"
#include "stm32_eval.h"

/** @addtogroup STM32F10x_StdPeriph_Examples
  * @{
  */

/** @addtogroup NVIC_Priority
  * @{
  */ 

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
NVIC_InitTypeDef NVIC_InitStructure;
bool PreemptionOccured = FALSE; 
uint8_t PreemptionPriorityValue = 0; 

/* Private function prototypes -----------------------------------------------*/
void RCC_Configuration(void);
void Delay(__IO uint32_t nCount);

/* Private functions ---------------------------------------------------------*/

/**
  * @brief   Main program.
  * @param  None
  * @retval None
  */
int main(void)
{
  /* Configure the system clocks */
  RCC_Configuration();

  /* Initialize LED1..LED4, Key and Wakeup Buttons mounted on STM3210X-EVAL 
     board */       
  STM_EVAL_LEDInit(LED1);
  STM_EVAL_LEDInit(LED2);
  STM_EVAL_LEDInit(LED3);
  STM_EVAL_LEDInit(LED4);
  STM_EVAL_PBInit(Button_KEY, Mode_EXTI);
  STM_EVAL_PBInit(Button_WAKEUP, Mode_EXTI); 

  /* Configure one bit for preemption priority */
  NVIC_PriorityGroupConfig(NVIC_PriorityGroup_1);
  
  /* Enable the WAKEUP_BUTTON_IRQn Interrupt */
  NVIC_InitStructure.NVIC_IRQChannel = WAKEUP_BUTTON_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = PreemptionPriorityValue;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
  
  /* Enable the KEY_BUTTON_IRQn Interrupt */
  NVIC_InitStructure.NVIC_IRQChannel = KEY_BUTTON_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
  
  /* Configure the SysTick Handler Priority: Preemption priority and subpriority */
  NVIC_SetPriority(SysTick_IRQn, (!PreemptionPriorityValue << 0x03));
  
  while (1)
  {
    if(PreemptionOccured != FALSE)
    {
      STM_EVAL_LEDToggle(LED1);
      Delay(0x5FFFF);
      STM_EVAL_LEDToggle(LED2);
      Delay(0x5FFFF);
      STM_EVAL_LEDToggle(LED3);
      Delay(0x5FFFF);
      STM_EVAL_LEDToggle(LED4);
      Delay(0x5FFFF); 
    }
  }
}

/**
  * @brief  Configures the different system clocks
  * @param  None
  * @retval None
  */
void RCC_Configuration(void)
{
  /* Setup the microcontroller system. Initialize the Embedded Flash Interface,  
     initialize the PLL and update the SystemFrequency variable. */
  SystemInit();
}

/**
  * @brief  Inserts a delay time.
  * @param  nCount: specifies the delay time length.
  * @retval None
  */
void Delay(__IO uint32_t nCount)
{
  for(; nCount != 0; nCount--);
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
