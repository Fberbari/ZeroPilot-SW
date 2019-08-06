#ifndef AIR_SPEED_H
#define AIR_SPEED_H

#ifdef __cplusplus
extern "C" {
#endif

/***********************************************************************************************************************
 * Definitions
 **********************************************************************************************************************/

typedef enum airSpeedState
{
	AIR_SPEED_SUCCEEDED,
	AIR_SPEED_FAILED

}airSpeedState_t;

#define AIR_DENSITY_M_PER_KG_CUBED 1.2f	// TODO density was taken to be a constant value. For max accuracy, we could use temperature and pressure readings to calculate it.

/***********************************************************************************************************************
 * Prototypes
 **********************************************************************************************************************/

/**
* Should be called exactly once before attempting to do anything with this module.
*
**/
void airSpeed_Init(void);

/**
* Gives the airspeed of the aircraft in m/s at the time of calling.
* In case of a return value of failed, the result stored in airSpeed will be meaningless.
*
*@param[out]		airSpeed		airspeed in m/s
* @return			Succeeded or Failed			
**/
airSpeedState_t airSpeed_GetAirSpeed(float *airSpeed);

#ifdef __cplusplus
}
#endif

#endif /* AIR_SPEED_H */
