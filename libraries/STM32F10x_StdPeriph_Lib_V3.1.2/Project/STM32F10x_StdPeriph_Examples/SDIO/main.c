/**
  ******************************************************************************
  * @file    SDIO/main.c 
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
#include "sdcard.h"

/** @addtogroup STM32F10x_StdPeriph_Examples
  * @{
  */

/** @addtogroup SDIO_Example
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
typedef enum {FAILED = 0, PASSED = !FAILED} TestStatus;

/* Private define ------------------------------------------------------------*/
#define BlockSize            512 /* Block Size in Bytes */
#define BufferWordsSize      (BlockSize >> 2)

#define NumberOfBlocks       2  /* For Multi Blocks operation (Read/Write) */
#define MultiBufferWordsSize ((BlockSize * NumberOfBlocks) >> 2)

/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
SD_CardInfo SDCardInfo;
uint32_t Buffer_Block_Tx[BufferWordsSize], Buffer_Block_Rx[BufferWordsSize];
uint32_t Buffer_MultiBlock_Tx[MultiBufferWordsSize], Buffer_MultiBlock_Rx[MultiBufferWordsSize];
volatile TestStatus EraseStatus = FAILED, TransferStatus1 = FAILED, TransferStatus2 = FAILED;
SD_Error Status = SD_OK;

/* Private function prototypes -----------------------------------------------*/
void RCC_Configuration(void);
void NVIC_Configuration(void);
void Fill_Buffer(uint32_t *pBuffer, uint16_t BufferLenght, uint32_t Offset);
TestStatus Buffercmp(uint32_t* pBuffer1, uint32_t* pBuffer2, uint16_t BufferLength);
TestStatus eBuffercmp(uint32_t* pBuffer, uint16_t BufferLength);

/* Private functions ---------------------------------------------------------*/

/**
  * @brief   Main program.
  * @param  None
  * @retval None
  */
int main(void)
{
  /* Clock Config */
  RCC_Configuration();

  /* Interrupt Config */
  NVIC_Configuration();

  /*-------------------------- SD Init ----------------------------- */
  Status = SD_Init();

  if (Status == SD_OK)
  {
    /*----------------- Read CSD/CID MSD registers ------------------*/
    Status = SD_GetCardInfo(&SDCardInfo);
  }

  if (Status == SD_OK)
  {
    /*----------------- Select Card --------------------------------*/
    Status = SD_SelectDeselect((uint32_t) (SDCardInfo.RCA << 16));
  }

  if (Status == SD_OK)
  {
    Status = SD_EnableWideBusOperation(SDIO_BusWide_4b);
  }

  /*------------------- Block Erase -------------------------------*/
  if (Status == SD_OK)
  {
    /* Erase NumberOfBlocks Blocks of WRITE_BL_LEN(512 Bytes) */
    Status = SD_Erase(0x00, (BlockSize * NumberOfBlocks));
  }

  /* Set Device Transfer Mode to DMA */
  if (Status == SD_OK)
  {  
    Status = SD_SetDeviceMode(SD_DMA_MODE);
  }

  if (Status == SD_OK)
  {
    Status = SD_ReadMultiBlocks(0x00, Buffer_MultiBlock_Rx, BlockSize, NumberOfBlocks);
  }

  if (Status == SD_OK)
  {
    EraseStatus = eBuffercmp(Buffer_MultiBlock_Rx, MultiBufferWordsSize);
  }
  
  /*------------------- Block Read/Write --------------------------*/
  /* Fill the buffer to send */
  Fill_Buffer(Buffer_Block_Tx, BufferWordsSize, 0xFFFF);


  if (Status == SD_OK)
  {
    /* Write block of 512 bytes on address 0 */
    Status = SD_WriteBlock(0x00, Buffer_Block_Tx, BlockSize);
  }

  if (Status == SD_OK)
  {
    /* Read block of 512 bytes from address 0 */
    Status = SD_ReadBlock(0x00, Buffer_Block_Rx, BlockSize);
  }

  if (Status == SD_OK)
  {
    /* Check the corectness of written dada */
    TransferStatus1 = Buffercmp(Buffer_Block_Tx, Buffer_Block_Rx, BufferWordsSize);
  }

  /*--------------- Multiple Block Read/Write ---------------------*/
  /* Fill the buffer to send */
  Fill_Buffer(Buffer_MultiBlock_Tx, MultiBufferWordsSize, 0x0);

  if (Status == SD_OK)
  {
    /* Write multiple block of many bytes on address 0 */
    Status = SD_WriteMultiBlocks(0x00, Buffer_MultiBlock_Tx, BlockSize, NumberOfBlocks);
  }

  if (Status == SD_OK)
  {
    /* Read block of many bytes from address 0 */
    Status = SD_ReadMultiBlocks(0x00, Buffer_MultiBlock_Rx, BlockSize, NumberOfBlocks);
  }

  if (Status == SD_OK)
  {
    /* Check the corectness of written dada */
    TransferStatus2 = Buffercmp(Buffer_MultiBlock_Tx, Buffer_MultiBlock_Rx, MultiBufferWordsSize);
  }

  /* Infinite loop */
  while (1)
  {}
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

/**
  * @brief  Configures SDIO IRQ channel.
  * @param  None
  * @retval None
  */
void NVIC_Configuration(void)
{
  NVIC_InitTypeDef NVIC_InitStructure;

  /* Configure the NVIC Preemption Priority Bits */
  NVIC_PriorityGroupConfig(NVIC_PriorityGroup_1);

  NVIC_InitStructure.NVIC_IRQChannel = SDIO_IRQn;
  NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
  NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
  NVIC_Init(&NVIC_InitStructure);
}

/**
  * @brief  Compares two buffers.
  * @param  pBuffer1, pBuffer2: buffers to be compared.
  *   : - BufferLength: buffer's length
  * @retval PASSED: pBuffer1 identical to pBuffer2
  *   FAILED: pBuffer1 differs from pBuffer2
  */
TestStatus Buffercmp(uint32_t* pBuffer1, uint32_t* pBuffer2, uint16_t BufferLength)
{
  while (BufferLength--)
  {
    if (*pBuffer1 != *pBuffer2)
    {
      return FAILED;
    }

    pBuffer1++;
    pBuffer2++;
  }

  return PASSED;
}

/**
  *   Function name : Fill_Buffer
  * @brief  Fills buffer with user predefined data.
  * @param  pBuffer: pointer on the Buffer to fill
  * @param  BufferLenght: size of the buffer to fill
  * @param  Offset: first value to fill on the Buffer
  * @retval None
  */
void Fill_Buffer(uint32_t *pBuffer, uint16_t BufferLenght, uint32_t Offset)
{
  uint16_t index = 0;

  /* Put in global buffer same values */
  for (index = 0; index < BufferLenght; index++ )
  {
    pBuffer[index] = index + Offset;
  }
}

/**
  *   Function name : eBuffercmp
  * @brief  Checks if a buffer has all its values are equal to zero.
  * @param  pBuffer: buffer to be compared.
  * @param  BufferLength: buffer's length
  * @retval PASSED: pBuffer values are zero
  *   FAILED: At least one value from pBuffer buffer is diffrent 
  *   from zero.
  */
TestStatus eBuffercmp(uint32_t* pBuffer, uint16_t BufferLength)
{
  while (BufferLength--)
  {
    if (*pBuffer != 0x00)
    {
      return FAILED;
    }

    pBuffer++;
  }

  return PASSED;
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
