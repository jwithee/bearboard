/**
  ******************************************************************************
  * @file    SPI/M25P64_FLASH/spi_flash.h 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   Header for spi_flash.c file.
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __SPI_FLASH_H
#define __SPI_FLASH_H

/* Includes ------------------------------------------------------------------*/
#include "stm32f10x.h"

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Uncomment the line corresponding to the STMicroelectronics evaluation board
   used to run the example */
#if !defined (USE_STM3210B_EVAL) &&  !defined (USE_STM3210E_EVAL)
 //#define USE_STM3210B_EVAL
 //#define USE_STM3210E_EVAL
#endif

/* Defines for the SPI and GPIO pins used to drive the SPI Flash */
#define SPI_FLASH                 SPI1
#define SPI_FLASH_CLK             RCC_APB2Periph_SPI1
#define SPI_FLASH_GPIO            GPIOA
#define SPI_FLASH_GPIO_CLK        RCC_APB2Periph_GPIOA  
#define SPI_FLASH_PIN_SCK         GPIO_Pin_5
#define SPI_FLASH_PIN_MISO        GPIO_Pin_6
#define SPI_FLASH_PIN_MOSI        GPIO_Pin_7

#if defined (USE_STM3210B_EVAL)
 #define SPI_FLASH_CS             GPIO_Pin_4
 #define SPI_FLASH_CS_GPIO        GPIOA
 #define SPI_FLASH_CS_GPIO_CLK    RCC_APB2Periph_GPIOA
#elif defined (USE_STM3210E_EVAL)
 #define SPI_FLASH_CS             GPIO_Pin_2 
 #define SPI_FLASH_CS_GPIO        GPIOB 
 #define SPI_FLASH_CS_GPIO_CLK    RCC_APB2Periph_GPIOB
#endif

/* Exported macro ------------------------------------------------------------*/
/* Select SPI FLASH: Chip Select pin low  */
#define SPI_FLASH_CS_LOW()       GPIO_ResetBits(SPI_FLASH_CS_GPIO, SPI_FLASH_CS)
/* Deselect SPI FLASH: Chip Select pin high */
#define SPI_FLASH_CS_HIGH()      GPIO_SetBits(SPI_FLASH_CS_GPIO, SPI_FLASH_CS)

/* Exported functions --------------------------------------------------------*/
/*----- High layer function -----*/
void SPI_FLASH_Init(void);
void SPI_FLASH_SectorErase(uint32_t SectorAddr);
void SPI_FLASH_BulkErase(void);
void SPI_FLASH_PageWrite(uint8_t* pBuffer, uint32_t WriteAddr, uint16_t NumByteToWrite);
void SPI_FLASH_BufferWrite(uint8_t* pBuffer, uint32_t WriteAddr, uint16_t NumByteToWrite);
void SPI_FLASH_BufferRead(uint8_t* pBuffer, uint32_t ReadAddr, uint16_t NumByteToRead);
uint32_t SPI_FLASH_ReadID(void);
void SPI_FLASH_StartReadSequence(uint32_t ReadAddr);

/*----- Low layer function -----*/
uint8_t SPI_FLASH_ReadByte(void);
uint8_t SPI_FLASH_SendByte(uint8_t byte);
uint16_t SPI_FLASH_SendHalfWord(uint16_t HalfWord);
void SPI_FLASH_WriteEnable(void);
void SPI_FLASH_WaitForWriteEnd(void);

#endif /* __SPI_FLASH_H */

/******************* (C) COPYRIGHT 2009 STMicroelectronics *****END OF FILE****/
