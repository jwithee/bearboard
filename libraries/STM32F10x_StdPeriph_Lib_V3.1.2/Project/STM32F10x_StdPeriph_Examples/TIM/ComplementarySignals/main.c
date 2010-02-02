/**
  ******************************************************************************
  * @file TIM/ComplementarySignals/main.c 
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

/** @addtogroup STM32F10x_StdPeriph_Examples
  * @{
  */

/** @addtogroup TIM_ComplementarySignals
  * @{
  */ 

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;
TIM_OCInitTypeDef  TIM_OCInitStructure;
TIM_BDTRInitTypeDef TIM_BDTRInitStructure;
uint16_t CCR1_Val = 32767;
uint16_t CCR2_Val = 16383;
uint16_t CCR3_Val = 8191;

/* Private function prototypes -----------------------------------------------*/
void RCC_Configuration(void);
void GPIO_Configuration(void);

/* Private functions ---------------------------------------------------------*/

/**
  * @brief   Main program
  * @param  None
  * @retval None
  */
int main(void)
{
  /* System Clocks Configuration */
  RCC_Configuration();

  /* GPIO Configuration */
  GPIO_Configuration();

  /* -----------------------------------------------------------------------
  TIM1 Configuration to:

  1/ Generate 3 complementary PWM signals with 3 different duty cycles:
  TIM1CLK = 72 MHz, Prescaler = 0, TIM1 counter clock = 72 MHz
  TIM1 frequency = TIM1CLK/(TIM1_Period + 1) = 1.098 KHz

  TIM1 Channel1 duty cycle = TIM1->CCR1 / TIM1_Period = 50% 
  TIM1 Channel1N duty cycle = (TIM1_Period - TIM1_CCR1) / (TIM1_Period + 1) = 50%

  TIM1 Channel2 duty cycle = TIM1_CCR2 / TIM1_Period = 25%
  TIM1 Channel2N duty cycle = (TIM1_Period - TIM1_CCR1) / (TIM1_Period + 1) = 75% 

  TIM1 Channel3 duty cycle = TIM1_CCR3 / TIM1_Period = 12.5% 
  TIM1 Channel3N duty cycle = (TIM1_Period - TIM1_CCR3) / (TIM1_Period + 1) = 87.5% 

  2/ Insert a dead time equal to 1.62 us
  3/ Configure the break feature, active at High level, and using the automatic 
     output enable feature
  4/ Use the Locking parametres level1. 
  ----------------------------------------------------------------------- */

  /* Time Base configuration */
  TIM_TimeBaseStructure.TIM_Prescaler = 0;
  TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
  TIM_TimeBaseStructure.TIM_Period = 65535;
  TIM_TimeBaseStructure.TIM_ClockDivision = 0;
  TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;

  TIM_TimeBaseInit(TIM1, &TIM_TimeBaseStructure);

  /* Channel 1, 2,3 and 4 Configuration in PWM mode */
  TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM2;
  TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
  TIM_OCInitStructure.TIM_OutputNState = TIM_OutputNState_Enable;
  TIM_OCInitStructure.TIM_Pulse = CCR1_Val;
  TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_Low;
  TIM_OCInitStructure.TIM_OCNPolarity = TIM_OCNPolarity_Low;
  TIM_OCInitStructure.TIM_OCIdleState = TIM_OCIdleState_Set;
  TIM_OCInitStructure.TIM_OCNIdleState = TIM_OCIdleState_Reset;

  TIM_OC1Init(TIM1, &TIM_OCInitStructure);

  TIM_OCInitStructure.TIM_Pulse = CCR2_Val;
  TIM_OC2Init(TIM1, &TIM_OCInitStructure);

  TIM_OCInitStructure.TIM_Pulse = CCR3_Val;
  TIM_OC3Init(TIM1, &TIM_OCInitStructure);

  /* Automatic Output enable, Break, dead time and lock configuration*/
  TIM_BDTRInitStructure.TIM_OSSRState = TIM_OSSRState_Enable;
  TIM_BDTRInitStructure.TIM_OSSIState = TIM_OSSIState_Enable;
  TIM_BDTRInitStructure.TIM_LOCKLevel = TIM_LOCKLevel_1;
  TIM_BDTRInitStructure.TIM_DeadTime = 117;
  TIM_BDTRInitStructure.TIM_Break = TIM_Break_Enable;
  TIM_BDTRInitStructure.TIM_BreakPolarity = TIM_BreakPolarity_High;
  TIM_BDTRInitStructure.TIM_AutomaticOutput = TIM_AutomaticOutput_Enable;

  TIM_BDTRConfig(TIM1, &TIM_BDTRInitStructure);

  /* TIM1 counter enable */
  TIM_Cmd(TIM1, ENABLE);

  /* Main Output Enable */
  TIM_CtrlPWMOutputs(TIM1, ENABLE);

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
     initialize the PLL and update the SystemFrequency variable. */
  SystemInit();

  /* TIM1, GPIOA, GPIOB, GPIOE and AFIO clocks enable */
  RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1 | RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOE|
                         RCC_APB2Periph_GPIOB |RCC_APB2Periph_AFIO, ENABLE);
}

/**
  * @brief  Configure the TIM1 Pins.
  * @param  None
  * @retval None
  */
void GPIO_Configuration(void)
{
  GPIO_InitTypeDef GPIO_InitStructure;

#ifdef STM32F10X_CL
  /* GPIOE Configuration: Channel 1/1N, 2/2N, 3/3N as alternate function push-pull */
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9|GPIO_Pin_11|GPIO_Pin_13|
                                GPIO_Pin_8|GPIO_Pin_10|GPIO_Pin_12;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;

  GPIO_Init(GPIOE, &GPIO_InitStructure);

  /* GPIOE Configuration: BKIN pin */
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_15;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;

  GPIO_Init(GPIOE, &GPIO_InitStructure);

  /* TIM1 Full remapping pins */
  GPIO_PinRemapConfig(GPIO_FullRemap_TIM1, ENABLE); 

#else
  /* GPIOA Configuration: Channel 1, 2 and 3 as alternate function push-pull */
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8 | GPIO_Pin_9 | GPIO_Pin_10;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_Init(GPIOA, &GPIO_InitStructure);

  /* GPIOB Configuration: Channel 1N, 2N and 3N as alternate function push-pull */
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_13 | GPIO_Pin_14 | GPIO_Pin_15;
  GPIO_Init(GPIOB, &GPIO_InitStructure);

  /* GPIOB Configuration: BKIN pin */
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_12;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
  GPIO_Init(GPIOB, &GPIO_InitStructure);  
#endif
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

  while (1)
  {}
}
#endif

/**
  * @}
  */ 

/**
  * @}
  */ 

/******************* (C) COPYRIGHT 2009 STMicroelectronics *****END OF FILE****/
