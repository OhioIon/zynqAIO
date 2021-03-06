#ifndef IIC_H
#define IIC_H

#ifdef IIC_C
#define IIC_SCOPE
#else
#define IIC_SCOPE extern
#endif

/****************** Includes ********************/

#include <stdint.h>
#include <stdbool.h>

#include <xiicps.h>

/******************* Defines ********************/

/****************** Public Data *****************/

IIC_SCOPE XIicPs eeprom_s;
IIC_SCOPE XIicPs mpu6000Iic_s;

/******************* Interface ******************/

IIC_SCOPE uint8_t iic_init( void );

IIC_SCOPE void iic_24aa02_send( uint8_t *bufOut_pu8, uint8_t ByteCnt_u8 );
IIC_SCOPE void iic_24aa02_recv( uint8_t *bufIn_pu8 , uint8_t ByteCnt_u8 );

IIC_SCOPE void iic_mpu6000_send( uint8_t *bufOut_pu8, uint8_t ByteCnt_u8 );
IIC_SCOPE void iic_mpu6000_recv( uint8_t *bufIn_pu8 , uint8_t ByteCnt_u8 );
IIC_SCOPE bool iic_mpu6000_busy( void );

#endif // IIC_H
