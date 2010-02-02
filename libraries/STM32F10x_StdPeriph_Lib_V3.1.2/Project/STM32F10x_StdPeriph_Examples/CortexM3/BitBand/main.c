/**
  ******************************************************************************
  * @file CortexM3/BitBand/main.c 
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
#include "stm32f10x.h"

/** @addtogroup STM32F10x_StdPeriph_Examples
  * @{
  */

/** @addtogroup CortexM3_BitBand
  * @{
  */ 

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
#define RAM_BASE       0x20000000
#define RAM_BB_BASE    0x22000000
 
/* Private macro -------------------------------------------------------------*/
#define  Var_ResetBit_BB(VarAddr, BitNumber)    \
          (*(__IO uint32_t *) (RAM_BB_BASE | ((VarAddr - RAM_BASE) << 5) | ((BitNumber) << 2)) = 0)
   
#define Var_SetBit_BB(VarAddr, BitNumber)       \
          (*(__IO uint32_t *) (RAM_BB_BASE | ((VarAddr - RAM_BASE) << 5) | ((BitNumber) << 2)) = 1)

#define Var_GetBit_BB(VarAddr, BitNumber)       \
          (*(__IO uint32_t *) (RAM_BB_BASE | ((VarAddr - RAM_BASE) << 5) | ((BitNumber) << 2)))
   
/* Private variables ---------------------------------------------------------*/

__IO uint32_t Var, VarAddr = 0, VarBitValue = 0;

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
   Var = 0x00005AA5;
   
  /* Clock configuration */
  RCC_Configuration();

/* A mapping formula shows how to reference each word in the alias region to a corresponding
   bit in the bit-band region. The mapping formula is:
   bit_word_addr = bit_band_base + (byte_offset x 32) + (bit_number + 4)

where:
   - bit_word_addr: is the address of the word in the alias memory region that maps to the
                    targeted bit.
   - bit_band_base is the starting address of the alias region
   - byte_offset is the number of the byte in the bit-band region that contains the targeted bit
   - bit_number is the bit position (0-7) of the targeted bit */

/* Get the variable address --------------------------------------------------*/ 
  VarAddr = (uint32_t)&Var; 

/* Modify variable bit using bit-band access ---------------------------------*/
  /* Modify Var variable bit 0 -----------------------------------------------*/
  Var_ResetBit_BB(VarAddr, 0);  /* Var = 0x00005AA4 */
  Var_SetBit_BB(VarAddr, 0);    /* Var = 0x00005AA5 */
  
  /* Modify Var variable bit 11 -----------------------------------------------*/
  Var_ResetBit_BB(VarAddr, 11);             /* Var = 0x000052A5 */
  /* Get Var variable bit 11 value */
  VarBitValue = Var_GetBit_BB(VarAddr, 11); /* VarBitValue = 0x00000000 */
  
  Var_SetBit_BB(VarAddr, 11);               /* Var = 0x00005AA5 */
  /* Get Var variable bit 11 value */
  VarBitValue = Var_GetBit_BB(VarAddr, 11);    /* VarBitValue = 0x00000001 */
  
  /* Modify Var variable bit 31 -----------------------------------------------*/
  Var_SetBit_BB(VarAddr, 31);               /* Var = 0x80005AA5 */
  /* Get Var variable bit 31 value */
  VarBitValue = Var_GetBit_BB(VarAddr, 31); /* VarBitValue = 0x00000001 */
    
  Var_ResetBit_BB(VarAddr, 31);             /* Var = 0x00005AA5 */
  /* Get Var variable bit 31 value */
  VarBitValue = Var_GetBit_BB(VarAddr, 31); /* VarBitValue = 0x00000000 */
        
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
