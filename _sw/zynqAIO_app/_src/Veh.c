#define VEH_C

/****************** Includes ********************/

#include "Veh.h"
#include "DevInp.h"
#include "xil_printf.h"

/******************* Defines ********************/

/******************** Types *********************/

/***************** Private Data *****************/

/****************** Prototypes ******************/

/**************** Implementation ****************/

// Initialize vehicle layer
uint8_t Veh_init( void )
{
  uint8_t retVal_u8 = 0;

  // Configure channel instances
  Veh_s.channelYaw_s.prm_s.lo_us_u16          = 1110;
  Veh_s.channelYaw_s.prm_s.hi_us_u16          = 1870;
  Veh_s.channelYaw_s.prm_s.deadBand_perml_u16 = 50;
  Veh_s.channelYaw_s.prm_s.flgPosOnly_u8      = 0;
  Veh_s.channelYaw_s.prm_s.flgReverse_u8      = 0;
  if( retVal_u8 == 0 ) retVal_u8 += channel_init( &Veh_s.channelYaw_s );

  Veh_s.channelPit_s.prm_s.lo_us_u16          = 1200;
  Veh_s.channelPit_s.prm_s.hi_us_u16          = 1887;
  Veh_s.channelPit_s.prm_s.deadBand_perml_u16 = 20;
  Veh_s.channelPit_s.prm_s.flgPosOnly_u8      = 0;
  Veh_s.channelPit_s.prm_s.flgReverse_u8      = 1;
  if( retVal_u8 == 0 ) retVal_u8 += channel_init( &Veh_s.channelPit_s );

  Veh_s.channelRol_s.prm_s.lo_us_u16          = 1167;
  Veh_s.channelRol_s.prm_s.hi_us_u16          = 1876;
  Veh_s.channelRol_s.prm_s.deadBand_perml_u16 = 20;
  Veh_s.channelRol_s.prm_s.flgPosOnly_u8      = 0;
  Veh_s.channelRol_s.prm_s.flgReverse_u8      = 1;
  if( retVal_u8 == 0 ) retVal_u8 += channel_init( &Veh_s.channelRol_s );

  Veh_s.channelThr_s.prm_s.lo_us_u16          = 1093;
  Veh_s.channelThr_s.prm_s.hi_us_u16          = 1746;
  Veh_s.channelThr_s.prm_s.deadBand_perml_u16 = 100;
  Veh_s.channelThr_s.prm_s.flgPosOnly_u8      = 1;
  Veh_s.channelThr_s.prm_s.flgReverse_u8      = 0;
  if( retVal_u8 == 0 ) retVal_u8 += channel_init( &Veh_s.channelThr_s );

  // Configure ARM instance
  Veh_s.arm_s.prm_s.yawThres_perml_s16 = -900;
  Veh_s.arm_s.prm_s.pitThres_perml_s16 =  900;
  Veh_s.arm_s.prm_s.rolThres_perml_s16 =  900;
  Veh_s.arm_s.prm_s.tiCyc_us_u16       =  125;
  Veh_s.arm_s.prm_s.tiArmDly_ms_u16    =   70; // TODO - Fix loop time
  arm_init( &Veh_s.arm_s );

  // Configure exponential instances
  Veh_s.expoYaw_s.prm_s.expo_perc_u8 = 10;
  if( retVal_u8 == 0 ) retVal_u8 += expo_init( &Veh_s.expoYaw_s );

  Veh_s.expoPit_s.prm_s.expo_perc_u8 = 5;
  if( retVal_u8 == 0 ) retVal_u8 += expo_init( &Veh_s.expoPit_s );

  Veh_s.expoRol_s.prm_s.expo_perc_u8 = 5;
  if( retVal_u8 == 0 ) retVal_u8 += expo_init( &Veh_s.expoRol_s );

  // Configure rate desired instances
  Veh_s.rateYaw_s.prm_s.rateMax_degps_u16 = 500;
  if( retVal_u8 == 0 ) retVal_u8 += rateDes_init( &Veh_s.rateYaw_s );

  Veh_s.ratePit_s.prm_s.rateMax_degps_u16 = 500;
  if( retVal_u8 == 0 ) retVal_u8 += rateDes_init( &Veh_s.ratePit_s );

  Veh_s.rateRol_s.prm_s.rateMax_degps_u16 = 500;
  if( retVal_u8 == 0 ) retVal_u8 += rateDes_init( &Veh_s.rateRol_s );

  // Configure PID instances
  Veh_s.pidYaw_s.prm_s.kp_perml_u16 = 1000;
  Veh_s.pidYaw_s.prm_s.ki_perml_u16 = 0;
  Veh_s.pidYaw_s.prm_s.kd_perml_u16 = 0;
  if( retVal_u8 == 0 ) retVal_u8 += pid_init( &Veh_s.pidYaw_s );

  Veh_s.pidPit_s.prm_s.kp_perml_u16 = 1000;
  Veh_s.pidPit_s.prm_s.ki_perml_u16 = 0;
  Veh_s.pidPit_s.prm_s.kd_perml_u16 = 0;
  if( retVal_u8 == 0 ) retVal_u8 += pid_init( &Veh_s.pidYaw_s );

  Veh_s.pidRol_s.prm_s.kp_perml_u16 = 1000;
  Veh_s.pidRol_s.prm_s.ki_perml_u16 = 0;
  Veh_s.pidRol_s.prm_s.kd_perml_u16 = 0;
  if( retVal_u8 == 0 ) retVal_u8 += pid_init( &Veh_s.pidYaw_s );

  return retVal_u8;
}

// Vehicle layer
void Veh( void )
{
  // Convert control input value to physical [0.1 %]
  Veh_s.channelYaw_s.inp_s.in_us_u16 = DevInp_s.outp_s.yaw_us_u16;
  Veh_s.channelPit_s.inp_s.in_us_u16 = DevInp_s.outp_s.pit_us_u16;
  Veh_s.channelRol_s.inp_s.in_us_u16 = DevInp_s.outp_s.rol_us_u16;
  Veh_s.channelThr_s.inp_s.in_us_u16 = DevInp_s.outp_s.thr_us_u16;
  channel( &Veh_s.channelYaw_s );
  channel( &Veh_s.channelPit_s );
  channel( &Veh_s.channelRol_s );
  channel( &Veh_s.channelThr_s );
  // TODO: improve channel by using mid calibration point
  // TODO: improve channel so output of 100 % on all channels is possible (remove some us from parameter)

  // Check for arm condition
  Veh_s.arm_s.inp_s.flgCon_u8     = DevInp_s.outp_s.flgCon_u8;
  Veh_s.arm_s.inp_s.yaw_perml_s16 = Veh_s.channelYaw_s.outp_s.out_perml_s16;
  Veh_s.arm_s.inp_s.pit_perml_s16 = Veh_s.channelPit_s.outp_s.out_perml_s16;
  Veh_s.arm_s.inp_s.rol_perml_s16 = Veh_s.channelRol_s.outp_s.out_perml_s16;
  Veh_s.arm_s.inp_s.thr_perml_s16 = Veh_s.channelThr_s.outp_s.out_perml_s16;
  arm( &Veh_s.arm_s );

  // DEBUG
  static uint8_t flgArmOld_u8 = 0;
  if( (flgArmOld_u8 == 0) && (Veh_s.arm_s.outp_s.flgArmed_u8 != 0) )
  {
    xil_printf( "!!! ARMED !!!\n" );
  }
  flgArmOld_u8 = Veh_s.arm_s.outp_s.flgArmed_u8;

  // Apply expo to channels
  Veh_s.expoYaw_s.inp_s.in_perml_s16 = Veh_s.channelYaw_s.outp_s.out_perml_s16;
  Veh_s.expoPit_s.inp_s.in_perml_s16 = Veh_s.channelPit_s.outp_s.out_perml_s16;
  Veh_s.expoRol_s.inp_s.in_perml_s16 = Veh_s.channelRol_s.outp_s.out_perml_s16;
  expo( &Veh_s.expoYaw_s );
  expo( &Veh_s.expoPit_s );
  expo( &Veh_s.expoRol_s );

  // Convert to desired rotation rate
  Veh_s.rateYaw_s.inp_s.in_perml_s16 = Veh_s.expoYaw_s.outp_s.out_perml_s16;
  Veh_s.ratePit_s.inp_s.in_perml_s16 = Veh_s.expoPit_s.outp_s.out_perml_s16;
  Veh_s.rateRol_s.inp_s.in_perml_s16 = Veh_s.expoRol_s.outp_s.out_perml_s16;
  rateDes( &Veh_s.rateYaw_s );
  rateDes( &Veh_s.ratePit_s );
  rateDes( &Veh_s.rateRol_s );

  // PID controller for rotation rate
  Veh_s.pidYaw_s.inp_s.sp_degps_s16  = Veh_s.rateYaw_s.outp_s.rate_degps_s16;
  Veh_s.pidPit_s.inp_s.sp_degps_s16  = Veh_s.ratePit_s.outp_s.rate_degps_s16;
  Veh_s.pidRol_s.inp_s.sp_degps_s16  = Veh_s.rateRol_s.outp_s.rate_degps_s16;
  Veh_s.pidYaw_s.inp_s.act_degps_s16 = DevInp_s.outp_s.yaw_degps_s16;
  Veh_s.pidPit_s.inp_s.act_degps_s16 = DevInp_s.outp_s.pit_degps_s16;
  Veh_s.pidRol_s.inp_s.act_degps_s16 = DevInp_s.outp_s.rol_degps_s16;
  Veh_s.pidYaw_s.inp_s.flgClrIntg_u8 = Veh_s.arm_s.outp_s.flgArmed_u8;
  Veh_s.pidPit_s.inp_s.flgClrIntg_u8 = Veh_s.arm_s.outp_s.flgArmed_u8;
  Veh_s.pidRol_s.inp_s.flgClrIntg_u8 = Veh_s.arm_s.outp_s.flgArmed_u8;
  pid( &Veh_s.pidYaw_s );
  pid( &Veh_s.pidPit_s );
  pid( &Veh_s.pidRol_s );

  // TODO: Move this to module
  // YAW
  int16_t fl_s16 = 0;
  int16_t fr_s16 = 0;
  int16_t rl_s16 = 0;
  int16_t rr_s16 = 0;
  // YAW
  fl_s16 -= Veh_s.pidYaw_s.outp_s.out_degps_s16 / 4;
  fr_s16 += Veh_s.pidYaw_s.outp_s.out_degps_s16 / 4;
  rl_s16 += Veh_s.pidYaw_s.outp_s.out_degps_s16 / 4;
  rr_s16 -= Veh_s.pidYaw_s.outp_s.out_degps_s16 / 4;
  // Pitch
  fl_s16 += Veh_s.pidPit_s.outp_s.out_degps_s16 / 4;
  fr_s16 += Veh_s.pidPit_s.outp_s.out_degps_s16 / 4;
  rl_s16 -= Veh_s.pidPit_s.outp_s.out_degps_s16 / 4;
  rr_s16 -= Veh_s.pidPit_s.outp_s.out_degps_s16 / 4;
  // Roll
  fl_s16 += Veh_s.pidRol_s.outp_s.out_degps_s16 / 4;
  fr_s16 -= Veh_s.pidRol_s.outp_s.out_degps_s16 / 4;
  rl_s16 += Veh_s.pidRol_s.outp_s.out_degps_s16 / 4;
  rr_s16 -= Veh_s.pidRol_s.outp_s.out_degps_s16 / 4;
  // Throttle
  fl_s16 += Veh_s.channelThr_s.outp_s.out_perml_s16;
  fr_s16 += Veh_s.channelThr_s.outp_s.out_perml_s16;
  rl_s16 += Veh_s.channelThr_s.outp_s.out_perml_s16;
  rr_s16 += Veh_s.channelThr_s.outp_s.out_perml_s16;
  // Min limit
  if( fl_s16 < 0 ) fl_s16 = 0;
  if( fr_s16 < 0 ) fr_s16 = 0;
  if( rl_s16 < 0 ) rl_s16 = 0;
  if( rr_s16 < 0 ) rr_s16 = 0;
  // Max limit
  if( fl_s16 > 1999 ) fl_s16 = 1999;
  if( fr_s16 > 1999 ) fr_s16 = 1999;
  if( rl_s16 > 1999 ) rl_s16 = 1999;
  if( rr_s16 > 1999 ) rr_s16 = 1999;
  // Final adjust
  if( 0 == Veh_s.channelThr_s.outp_s.out_perml_s16 )
  {
    // Overwrite hard zero for zero throttle
    fl_s16 = 0;
    fr_s16 = 0;
    rl_s16 = 0;
    rr_s16 = 0;
  }
  else
  {
    // Shift to DSHOT minimum motor request value for all others
    fl_s16 += 48;
    fr_s16 += 48;
    rl_s16 += 48;
    rr_s16 += 48;
  }

  // Output signals to DevOutp layer
  Veh_s.outp_s.flgArmed_u8 = Veh_s.arm_s.outp_s.flgArmed_u8;
  Veh_s.outp_s.rawDataFrntLeft_u16 = fl_s16;
  Veh_s.outp_s.rawDataFrntRght_u16 = fr_s16;
  Veh_s.outp_s.rawDataRearLeft_u16 = rl_s16;
  Veh_s.outp_s.rawDataRearRght_u16 = rr_s16;

}

// EOF