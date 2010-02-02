/**
  ******************************************************************************
  * @file    SPI/M25P64_FLASH/spi_flash.c 
  * @author  MCD Application Team
  * @version V3.1.2
  * @date    09/28/2009
  * @brief   This file provides a set of functions needed to manage the
  *          communication between SPI peripheral and SPI M25P64 FLASH.
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
#include "spi_flash.h"

/** @addtogroup STM32F10x_StdPeriph_Examples
  * @{
  */

/** @addtogroup SPI_M25P64_FLASH
  * @{
  */ 

/* Private typedef -----------------------------------------------------------*/
#define SPI_FLASH_PAGESIZE    256

/* Private define ------------------------------------------------------------*/

/* SPI Flash supported commands */
#define CMD_WRITE     0x02  /* Write to Memory instruction */
#define CMD_WRSR      0x01  /* Write Status Register instruction */
#define CMD_WREN      0x06  /* Write enable instruction */
#define CMD_READ      0x03  /* Read from Memory instruction */
#define CMD_RDSR      0x05  /* Read Status Register instruction  */
#define CMD_RDID      0x9F  /* Read identification */
#define CMD_SE        0xD8  /* Sector Erase instruction */
#define CMD_BE        0xC7  /* Bulk Erase instruction */

#define WIP_FLAG      0x01  /* Write In Progress (WIP) flag */

#define DUMMY_BYTE    0xA5


/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Initializes the peripherals used by the SPI FLASH driver.
  * @param  None
  * @retval None
  */
void SPI_FLASH_Init(void)
{
  SPI_InitTypeDef  SPI_InitStructure;
  GPIO_InitTypeDef GPIO_InitStructure;

  /* Enable SPI and GPIO clocks */
  RCC_APB2PeriphClockCmd(SPI_FLASH_CLK | SPI_FLASH_GPIO_CLK | SPI_FLASH_CS_GPIO_CLK, ENABLE);

  /* Configure SPI pins: SCK, MISO and MOSI */
  GPIO_InitStructure.GPIO_Pin = SPI_FLASH_PIN_SCK | SPI_FLASH_PIN_MISO | SPI_FLASH_PIN_MOSI;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_Init(SPI_FLASH_GPIO, &GPIO_InitStructure);

  /* Configure I/O for Flash Chip select */
  GPIO_InitStructure.GPIO_Pin = SPI_FLASH_CS;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
  GPIO_Init(SPI_FLASH_CS_GPIO, &GPIO_InitStructure);

  /* Deselect the FLASH: Chip Select high */
  SPI_FLASH_CS_HIGH();

  /* SPI configuration */
  SPI_InitStructure.SPI_Direction = SPI_Direction_2Lines_FullDuplex;
  SPI_InitStructure.SPI_Mode = SPI_Mode_Master;
  SPI_InitStructure.SPI_DataSize = SPI_DataSize_8b;
  SPI_InitStructure.SPI_CPOL = SPI_CPOL_High;
  SPI_InitStructure.SPI_CPHA = SPI_CPHA_2Edge;
  SPI_InitStructure.SPI_NSS = SPI_NSS_Soft;
  SPI_InitStructure.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_4;
  SPI_InitStructure.SPI_FirstBit = SPI_FirstBit_MSB;
  SPI_InitStructure.SPI_CRCPolynomial = 7;
  SPI_Init(SPI_FLASH, &SPI_InitStructure);

  /* Enable the SPI  */
  SPI_Cmd(SPI_FLASH, ENABLE);
}

/**
  * @brief  Erases the specified FLASH sector.
  * @param  SectorAddr: address of the sector to erase.
  * @retval None
  */
void SPI_FLASH_SectorErase(uint32_t SectorAddr)
{
  /* Send write enable instruction */
  SPI_FLASH_WriteEnable();

  /* Sector Erase */
  /* Select the FLASH: Chip Select low */
  SPI_FLASH_CS_LOW();
  /* Send Sector Erase instruction */
  SPI_FLASH_SendByte(CMD_SE);
  /* Send SectorAddr high nibble address byte */
  SPI_FLASH_SendByte((SectorAddr & 0xFF0000) >> 16);
  /* Send SectorAddr medium nibble address byte */
  SPI_FLASH_SendByte((SectorAddr & 0xFF00) >> 8);
  /* Send SectorAddr low nibble address byte */
  SPI_FLASH_SendByte(SectorAddr & 0xFF);
  /* Deselect the FLASH: Chip Select high */
  SPI_FLASH_CS_HIGH();

  /* Wait the end of Flash writing */
  SPI_FLASH_WaitForWriteEnd();
}

/**
  * @brief  Erases the entire FLASH.
  * @param  None
  * @retval None
  */
void SPI_FLASH_BulkErase(void)
{
  /* Send write enable instruction */
  SPI_FLASH_WriteEnable();

  /* Bulk Erase */
  /* Select the FLASH: Chip Select low */
  SPI_FLASH_CS_LOW();
  /* Send Bulk Erase instruction  */
  SPI_FLASH_SendByte(CMD_BE);
  /* Deselect the FLASH: Chip Select high */
  SPI_FLASH_CS_HIGH();

  /* Wait the end of Flash writing */
  SPI_FLASH_WaitForWriteEnd();
}

/**
  * @brief  Writes more than one byte to the FLASH with a single WRITE cycle 
  *  (Page WRITE sequence).
  * @note   The number of byte can't exceed the FLASH page size.
  * @param  pBuffer: pointer to the buffer  containing the data to be written
  *   to the FLASH.
  * @param  WriteAddr: FLASH's internal address to write to.
  * @param  NumByteToWrite: number of bytes to write to the FLASH, must be equal
  *   or less than "SPI_FLASH_PAGESIZE" value.
  * @retval None
  */
void SPI_FLASH_PageWrite(uint8_t* pBuffer, uint32_t WriteAddr, uint16_t NumByteToWrite)
{
  /* Enable the write access to the FLASH */
  SPI_FLASH_WriteEnable();

  /* Select the FLASH: Chip Select low */
  SPI_FLASH_CS_LOW();
  /* Send "Write to Memory " instruction */
  SPI_FLASH_SendByte(CMD_WRITE);
  /* Send WriteAddr high nibble address byte to write to */
  SPI_FLASH_SendByte((WriteAddr & 0xFF0000) >> 16);
  /* Send WriteAddr medium nibble address byte to write to */
  SPI_FLASH_SendByte((WriteAddr & 0xFF00) >> 8);
  /* Send WriteAddr low nibble address byte to write to */
  SPI_FLASH_SendByte(WriteAddr & 0xFF);

  /* while there is data to be written on the FLASH */
  while (NumByteToWrite--)
  {
    /* Send the current byte */
    SPI_FLASH_SendByte(*pBuffer);
    /* Point on the next byte to be written */
    pBuffer++;
  }

  /* Deselect the FLASH: Chip Select high */
  SPI_FLASH_CS_HIGH();

  /* Wait the end of Flash writing */
  SPI_FLASH_WaitForWriteEnd();
}

/**
  * @brief  Writes block of data to the FLASH. In this function, the number of
  *   WRITE cycles are reduced, using Page WRITE sequence.
  * @param  pBuffer: pointer to the buffer  containing the data to be written
  *   to the FLASH.
  * @param  WriteAddr: FLASH's internal address to write to.
  * @param  NumByteToWrite: number of bytes to write to the FLASH.
  * @retval None
  */
void SPI_FLASH_BufferWrite(uint8_t* pBuffer, uint32_t WriteAddr, uint16_t NumByteToWrite)
{
  uint8_t NumOfPage = 0, NumOfSingle = 0, Addr = 0, count = 0, temp = 0;

  Addr = WriteAddr % SPI_FLASH_PAGESIZE;
  count = SPI_FLASH_PAGESIZE - Addr;
  NumOfPage =  NumByteToWrite / SPI_FLASH_PAGESIZE;
  NumOfSingle = NumByteToWrite % SPI_FLASH_PAGESIZE;

  if (Addr == 0) /* WriteAddr is SPI_FLASH_PAGESIZE aligned  */
  {
    if (NumOfPage == 0) /* NumByteToWrite < SPI_FLASH_PAGESIZE */
    {
      SPI_FLASH_PageWrite(pBuffer, WriteAddr, NumByteToWrite);
    }
    else /* NumByteToWrite > SPI_FLASH_PAGESIZE */
    {
      while (NumOfPage--)
      {
        SPI_FLASH_PageWrite(pBuffer, WriteAddr, SPI_FLASH_PAGESIZE);
        WriteAddr +=  SPI_FLASH_PAGESIZE;
        pBuffer += SPI_FLASH_PAGESIZE;
      }

      SPI_FLASH_PageWrite(pBuffer, WriteAddr, NumOfSingle);
    }
  }
  else /* WriteAddr is not SPI_FLASH_PAGESIZE aligned  */
  {
    if (NumOfPage == 0) /* NumByteToWrite < SPI_FLASH_PAGESIZE */
    {
      if (NumOfSingle > count) /* (NumByteToWrite + WriteAddr) > SPI_FLASH_PAGESIZE */
      {
        temp = NumOfSingle - count;

        SPI_FLASH_PageWrite(pBuffer, WriteAddr, count);
        WriteAddr +=  count;
        pBuffer += count;

        SPI_FLASH_PageWrite(pBuffer, WriteAddr, temp);
      }
      else
      {
        SPI_FLASH_PageWrite(pBuffer, WriteAddr, NumByteToWrite);
      }
    }
    else /* NumByteToWrite > SPI_FLASH_PAGESIZE */
    {
      NumByteToWrite -= count;
      NumOfPage =  NumByteToWrite / SPI_FLASH_PAGESIZE;
      NumOfSingle = NumByteToWrite % SPI_FLASH_PAGESIZE;

      SPI_FLASH_PageWrite(pBuffer, WriteAddr, count);
      WriteAddr +=  count;
      pBuffer += count;

      while (NumOfPage--)
      {
        SPI_FLASH_PageWrite(pBuffer, WriteAddr, SPI_FLASH_PAGESIZE);
        WriteAddr +=  SPI_FLASH_PAGESIZE;
        pBuffer += SPI_FLASH_PAGESIZE;
      }

      if (NumOfSingle != 0)
      {
        SPI_FLASH_PageWrite(pBuffer, WriteAddr, NumOfSingle);
      }
    }
  }
}

/**
  * @brief  Reads a block of data from the FLASH.
  * @param  pBuffer: pointer to the buffer that receives the data read from the FLASH.
  * @param  ReadAddr: FLASH's internal address to read from.
  * @param  NumByteToRead: number of bytes to read from the FLASH.
  * @retval None
  */
void SPI_FLASH_BufferRead(uint8_t* pBuffer, uint32_t ReadAddr, uint16_t NumByteToRead)
{
  /* Select the FLASH: Chip Select low */
  SPI_FLASH_CS_LOW();

  /* Send "Read from Memory " instruction */
  SPI_FLASH_SendByte(CMD_READ);

  /* Send ReadAddr high nibble address byte to read from */
  SPI_FLASH_SendByte((ReadAddr & 0xFF0000) >> 16);
  /* Send ReadAddr medium nibble address byte to read from */
  SPI_FLASH_SendByte((ReadAddr& 0xFF00) >> 8);
  /* Send ReadAddr low nibble address byte to read from */
  SPI_FLASH_SendByte(ReadAddr & 0xFF);

  while (NumByteToRead--) /* while there is data to be read */
  {
    /* Read a byte from the FLASH */
    *pBuffer = SPI_FLASH_SendByte(DUMMY_BYTE);
    /* Point to the next location where the byte read will be saved */
    pBuffer++;
  }

  /* Deselect the FLASH: Chip Select high */
  SPI_FLASH_CS_HIGH();
}

/**
  * @brief  Reads FLASH identification.
  * @param  None
  * @retval FLASH identification
  */
uint32_t SPI_FLASH_ReadID(void)
{
  uint32_t Temp = 0, Temp0 = 0, Temp1 = 0, Temp2 = 0;

  /* Select the FLASH: Chip Select low */
  SPI_FLASH_CS_LOW();

  /* Send "RDID " instruction */
  SPI_FLASH_SendByte(0x9F);

  /* Read a byte from the FLASH */
  Temp0 = SPI_FLASH_SendByte(DUMMY_BYTE);

  /* Read a byte from the FLASH */
  Temp1 = SPI_FLASH_SendByte(DUMMY_BYTE);

  /* Read a byte from the FLASH */
  Temp2 = SPI_FLASH_SendByte(DUMMY_BYTE);

  /* Deselect the FLASH: Chip Select high */
  SPI_FLASH_CS_HIGH();

  Temp = (Temp0 << 16) | (Temp1 << 8) | Temp2;

  return Temp;
}

/**
  * @brief  Initiates a read data byte (READ) sequence from the Flash.
  *   This is done by driving the /CS line low to select the device, then the READ
  *   instruction is transmitted followed by 3 bytes address. This function exit
  *   and keep the /CS line low, so the Flash still being selected. With this
  *   technique the whole content of the Flash is read with a single READ instruction.
  * @param  ReadAddr: FLASH's internal address to read from.
  * @retval None
  */
void SPI_FLASH_StartReadSequence(uint32_t ReadAddr)
{
  /* Select the FLASH: Chip Select low */
  SPI_FLASH_CS_LOW();

  /* Send "Read from Memory " instruction */
  SPI_FLASH_SendByte(CMD_READ);

  /* Send the 24-bit address of the address to read from ---------------------*/
  /* Send ReadAddr high nibble address byte */
  SPI_FLASH_SendByte((ReadAddr & 0xFF0000) >> 16);
  /* Send ReadAddr medium nibble address byte */
  SPI_FLASH_SendByte((ReadAddr& 0xFF00) >> 8);
  /* Send ReadAddr low nibble address byte */
  SPI_FLASH_SendByte(ReadAddr & 0xFF);
}

/**
  * @brief  Reads a byte from the SPI Flash.
  * @note   This function must be used only if the Start_Read_Sequence function
  *   has been previously called.
  * @param  None
  * @retval Byte Read from the SPI Flash.
  */
uint8_t SPI_FLASH_ReadByte(void)
{
  return (SPI_FLASH_SendByte(DUMMY_BYTE));
}

/**
  * @brief  Sends a byte through the SPI interface and return the byte received
  *   from the SPI bus.
  * @param  byte: byte to send.
  * @retval The value of the received byte.
  */
uint8_t SPI_FLASH_SendByte(uint8_t byte)
{
  /* Loop while DR register in not emplty */
  while (SPI_I2S_GetFlagStatus(SPI_FLASH, SPI_I2S_FLAG_TXE) == RESET);

  /* Send byte through the SPI1 peripheral */
  SPI_I2S_SendData(SPI_FLASH, byte);

  /* Wait to receive a byte */
  while (SPI_I2S_GetFlagStatus(SPI_FLASH, SPI_I2S_FLAG_RXNE) == RESET);

  /* Return the byte read from the SPI bus */
  return SPI_I2S_ReceiveData(SPI_FLASH);
}

/**
  * @brief  Sends a Half Word through the SPI interface and return the Half Word
  *   received from the SPI bus.
  * @param  HalfWord: Half Word to send.
  * @retval The value of the received Half Word.
  */
uint16_t SPI_FLASH_SendHalfWord(uint16_t HalfWord)
{
  /* Loop while DR register in not emplty */
  while (SPI_I2S_GetFlagStatus(SPI_FLASH, SPI_I2S_FLAG_TXE) == RESET);

  /* Send Half Word through the SPI_FLASH peripheral */
  SPI_I2S_SendData(SPI_FLASH, HalfWord);

  /* Wait to receive a Half Word */
  while (SPI_I2S_GetFlagStatus(SPI_FLASH, SPI_I2S_FLAG_RXNE) == RESET);

  /* Return the Half Word read from the SPI bus */
  return SPI_I2S_ReceiveData(SPI_FLASH);
}

/**
  * @brief  Enables the write access to the FLASH.
  * @param  None
  * @retval None
  */
void SPI_FLASH_WriteEnable(void)
{
  /* Select the FLASH: Chip Select low */
  SPI_FLASH_CS_LOW();

  /* Send "Write Enable" instruction */
  SPI_FLASH_SendByte(CMD_WREN);

  /* Deselect the FLASH: Chip Select high */
  SPI_FLASH_CS_HIGH();
}

/**
  * @brief  Polls the status of the Write In Progress (WIP) flag in the FLASH's
  *   status register and loop until write opertaion has completed.
  * @param  None
  * @retval None
  */
void SPI_FLASH_WaitForWriteEnd(void)
{
  uint8_t flashstatus = 0;

  /* Select the FLASH: Chip Select low */
  SPI_FLASH_CS_LOW();

  /* Send "Read Status Register" instruction */
  SPI_FLASH_SendByte(CMD_RDSR);

  /* Loop as long as the memory is busy with a write cycle */
  do
  {
    /* Send a dummy byte to generate the clock needed by the FLASH
    and put the value of the status register in FLASH_Status variable */
    flashstatus = SPI_FLASH_SendByte(DUMMY_BYTE);

  }
  while ((flashstatus & WIP_FLAG) == SET); /* Write in progress */

  /* Deselect the FLASH: Chip Select high */
  SPI_FLASH_CS_HIGH();
}

/**
  * @}
  */ 

/**
  * @}
  */ 

/******************* (C) COPYRIGHT 2009 STMicroelectronics *****END OF FILE****/
