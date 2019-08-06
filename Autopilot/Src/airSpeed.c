#include "airSpeed.h"
#include "adc.h"


/***********************************************************************************************************************
 * Definitions
 **********************************************************************************************************************/

#define MAX_12_BIT_VALUE 0xFFF
#define DIFF_PRESSURE_SENSOR_ERROR 0.4f		// from the datasheet (with some added margin to account for adc)

/***********************************************************************************************************************
 * Prototypes
 **********************************************************************************************************************/

static float GetDifferentialPressureFromRawAdc(uint32_t adcData);

static float ConvertDiffPressureToAirspeed(float diffPressureKpa);

/***********************************************************************************************************************
 * Code
 **********************************************************************************************************************/

void airSpeed_Init(void)
{
	MX_ADC3_Init();
	HAL_ADC_MspInit(&hadc3);
}

airSpeedState_t airSpeed_GetAirSpeed(float *airSpeed)
{
	HAL_StatusTypeDef status;

	status = HAL_ADC_Start(&hadc3);

	if (status != HAL_OK)
	{
		return AIR_SPEED_FAILED;
	}

	status = HAL_ADC_PollForConversion(&hadc3, 55);

	if (status != HAL_OK)
	{
		return AIR_SPEED_FAILED;
	}

	uint32_t rawAdcData = HAL_ADC_GetValue(&hadc3);

	status = HAL_ADC_Stop(&hadc3);

	if (status != HAL_OK)
	{
		return AIR_SPEED_FAILED;
	}

	float diffPressureKpa = GetDifferentialPressureFromRawAdc(rawAdcData);

	if (diffPressureKpa < 0.0f)
	{
		if( fabs(diffPressureKpa) < DIFF_PRESSURE_SENSOR_ERROR)
		{
			diffPressureKpa = 0.0f;
		}

		else
		{
			return AIR_SPEED_FAILED;
		}
	}

	*airSpeed = ConvertDiffPressureToAirspeed(diffPressureKpa);

	return AIR_SPEED_SUCCEEDED;
}

static float GetDifferentialPressureFromRawAdc(uint32_t adcData)
{
	// Vout = Vs * (0.2*(P) + 0.5) This is the equation given in the datasheet.

	float diffPressureKpa = ( (float) ( (float) adcData / (float) MAX_12_BIT_VALUE ) - 0.5f) / 0.2f;

	return diffPressureKpa;
}

static float ConvertDiffPressureToAirspeed(float diffPressureKpa)
{
	// Speed = sqrt((2 * diffPress) / density) Bernoulli's equation

	float speedMPerS = sqrtf( 2.0f * (1000.0f * diffPressureKpa) / AIR_DENSITY_M_PER_KG_CUBED);

	return speedMPerS;
}
