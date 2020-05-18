#include <gtest/gtest.h>
#include <math.h>
#include <stdint.h>
#include "fff.h"
#include "adc.h"
#include "airSpeed.h"


#define INT_VALUE_1 132

#define DUMMY_FLOAT_VALUE	12.7f

#define MAX_ADC_VALUE 0xFFF

/***********************************************************************************************************************
 * Mocks
 **********************************************************************************************************************/

// every function I mock is here. In short, doing the following for a specific function makes the code under test call a fake object rather than it's real implementation, which allows you to test things like number of calls, order of calls, parameters... and force specific return arguments. If a function the code under test calls is not in this list, it's real implementation will be called, which is sometimes ok for functions that just do math on things but a problem with functions that try to talk to hardware.

FAKE_VOID_FUNC(MX_ADC3_Init);
FAKE_VOID_FUNC(HAL_ADC_MspInit, ADC_HandleTypeDef * );
FAKE_VALUE_FUNC(HAL_StatusTypeDef, HAL_ADC_Start, ADC_HandleTypeDef * );
FAKE_VALUE_FUNC(HAL_StatusTypeDef, HAL_ADC_PollForConversion, ADC_HandleTypeDef *,  uint32_t );
FAKE_VALUE_FUNC(uint32_t, HAL_ADC_GetValue, ADC_HandleTypeDef * );
FAKE_VALUE_FUNC(HAL_StatusTypeDef, HAL_ADC_Stop, ADC_HandleTypeDef * );

/***********************************************************************************************************************
 * Variables
 **********************************************************************************************************************/

ADC_HandleTypeDef hadc3; // this var is global in adc.c and extern in adc.h. Since the mocks have no knoweledge of the .c file, it must be defined here for test purposes.

/***********************************************************************************************************************
 * Test Fixtures
 **********************************************************************************************************************/

class ADC_Init : public ::testing::Test
{
	public:

		virtual void SetUp() // this function is run right before every text associated to the fixture "ADC_INIT" is run.
		{
			RESET_FAKE(MX_ADC3_Init);
			RESET_FAKE(HAL_ADC_MspInit);
		}

		virtual void TearDown() // this function is run right after every test associated to the fixture "ADC_INIT" is run.
		{
			FFF_RESET_HISTORY();
		}
};

class GetValue : public ::testing::Test
{
	public:

		virtual void SetUp()// this function is run right before every text associated to the fixture "GetValue" is run.
		{
			RESET_FAKE(HAL_ADC_Start);
			RESET_FAKE(HAL_ADC_PollForConversion);
			RESET_FAKE(HAL_ADC_GetValue);
			RESET_FAKE(HAL_ADC_Stop);
		}

		virtual void TearDown()// this function is run right after every test associated to the fixture "GetValue" is run.
		{
			FFF_RESET_HISTORY();
		}
};

/***********************************************************************************************************************
 * Tests
 **********************************************************************************************************************/



TEST_F(ADC_Init, InitCallsAppropriateAdcInit) { 

   	/***********************SETUP***********************/
	/********************DEPENDENCIES*******************/
	/********************STEPTHROUGH********************/

	airSpeed_Init();

	/**********************ASSERTS**********************/

    ASSERT_EQ(MX_ADC3_Init_fake.call_count, 1);

}

TEST_F(ADC_Init, InitCallsMspInitWithAppropriateArg) { 

   	/***********************SETUP***********************/

	memset(&hadc3, INT_VALUE_1, sizeof(ADC_HandleTypeDef));

	/********************DEPENDENCIES*******************/
	/********************STEPTHROUGH********************/

	airSpeed_Init();

	/**********************ASSERTS**********************/

	ASSERT_EQ(HAL_ADC_MspInit_fake.call_count, 1);
	ASSERT_TRUE(memcmp(HAL_ADC_MspInit_fake.arg0_val, &hadc3, sizeof(ADC_HandleTypeDef)) == 0);
}


TEST_F(GetValue, AllconversionFuncsCalledInCorrectOrder) { 

   	/***********************SETUP***********************/

	float dummyAirspeed = DUMMY_FLOAT_VALUE;

	/********************DEPENDENCIES*******************/
	/********************STEPTHROUGH********************/

	airSpeed_GetAirSpeed(&dummyAirspeed);

	/**********************ASSERTS**********************/

    ASSERT_EQ(fff.call_history[0], (void *)HAL_ADC_Start);
    ASSERT_EQ(fff.call_history[1], (void *)HAL_ADC_PollForConversion);
    ASSERT_EQ(fff.call_history[2], (void *)HAL_ADC_GetValue);
    ASSERT_EQ(fff.call_history[3], (void *)HAL_ADC_Stop);
}

TEST_F(GetValue, AllconversionFuncsCalledWithCorrectParams) { 

   	/***********************SETUP***********************/

	float dummyAirspeed = DUMMY_FLOAT_VALUE;

	/********************DEPENDENCIES*******************/
	/********************STEPTHROUGH********************/

	airSpeed_GetAirSpeed(&dummyAirspeed);

	/**********************ASSERTS**********************/

	ASSERT_TRUE(memcmp(HAL_ADC_Start_fake.arg0_val, &hadc3, sizeof(ADC_HandleTypeDef)) == 0);
	ASSERT_TRUE(memcmp(HAL_ADC_PollForConversion_fake.arg0_val, &hadc3, sizeof(ADC_HandleTypeDef)) == 0);
	/* TODO: POLL FOR CONVERSION HAS A SECOND ARGUMENT: TIMEOUT, I DO NOT KNOW WHAT ITS VALUE SHOULD BE SO IT IS NOT TESTED HERE.*/
	ASSERT_TRUE(memcmp(HAL_ADC_GetValue_fake.arg0_val, &hadc3, sizeof(ADC_HandleTypeDef)) == 0);
	ASSERT_TRUE(memcmp(HAL_ADC_Stop_fake.arg0_val, &hadc3, sizeof(ADC_HandleTypeDef)) == 0);
}

TEST_F(GetValue, IfAnyConversionFuncsDoNotReturnHal_OKGetAirspeedShouldReturnFailed) { 

   	/***********************SETUP***********************/

	float dummyAirspeed = DUMMY_FLOAT_VALUE;

	/********************DEPENDENCIES*******************/

	HAL_ADC_Start_fake.return_val = HAL_ERROR;
	HAL_ADC_PollForConversion_fake.return_val = HAL_OK;
	/* TODO: maybe timeouts should be handled differently?*/
	HAL_ADC_Stop_fake.return_val = HAL_TIMEOUT;

	/********************STEPTHROUGH********************/

	airSpeedState_t state = airSpeed_GetAirSpeed(&dummyAirspeed);

	/**********************ASSERTS**********************/

	ASSERT_EQ(state, AIR_SPEED_FAILED);
}

TEST_F(GetValue, MaxAirSpeedIsAssociatedWithMaxAdcValue) { 

   	/***********************SETUP***********************/

   	float allowableErrorBound = 0.5f;	// it is unreasonable to expect that a floating point calculation will returrn exactly the right value, so we give it some error bound.

	float returnedAirspeed;
	uint32_t adcValue = MAX_ADC_VALUE;

	float expectedDiffPressure = 2500.0f; // Pascals (Datasheet value)
	float expectedAirspeed =  sqrtf(2.0f * expectedDiffPressure / AIR_DENSITY_M_PER_KG_CUBED);

	/********************DEPENDENCIES*******************/

	HAL_ADC_Start_fake.return_val = HAL_OK;
	HAL_ADC_PollForConversion_fake.return_val = HAL_OK;
	HAL_ADC_GetValue_fake.return_val = adcValue;
	HAL_ADC_Stop_fake.return_val = HAL_OK;

	/********************STEPTHROUGH********************/

	airSpeedState_t state = airSpeed_GetAirSpeed(&returnedAirspeed);

	/**********************ASSERTS**********************/

	ASSERT_EQ(state, AIR_SPEED_SUCCEEDED);

	ASSERT_NEAR(returnedAirspeed, expectedAirspeed, allowableErrorBound);
}

TEST_F(GetValue, ZeroAirSpeedIsAssociatedWithCorrespondingAdcValue) { 

   	/***********************SETUP***********************/

   	float allowableErrorBound = 0.5f;	// it is unreasonable to expect that a floating point calculation will returrn exactly the right value, so we give it some error bound.

	float returnedAirspeed;
	uint32_t adcValue = 0.5 * MAX_ADC_VALUE;

	float expectedAirspeed =  0.0f;

	/********************DEPENDENCIES*******************/

	HAL_ADC_Start_fake.return_val = HAL_OK;
	HAL_ADC_PollForConversion_fake.return_val = HAL_OK;
	HAL_ADC_GetValue_fake.return_val = adcValue;
	HAL_ADC_Stop_fake.return_val = HAL_OK;

	/********************STEPTHROUGH********************/

	airSpeedState_t state = airSpeed_GetAirSpeed(&returnedAirspeed);

	/**********************ASSERTS**********************/

	ASSERT_EQ(state, AIR_SPEED_SUCCEEDED);

	ASSERT_NEAR(returnedAirspeed, expectedAirspeed, allowableErrorBound);
}

TEST_F(GetValue, ZeroAirSpeedIsAssociatedWithSlightlyBelowCorrectAdcValue) { 


	// the voltage read from the adc has some error. If the aircraft is not moving, but the adc receives a voltage corresponding to slightly below 0 airspeed, the software must know to correct it to 0 (and not give a negative airspeed)

   	/***********************SETUP***********************/

   	float allowableErrorBound = 0.5f;	// it is unreasonable to expect that a floating point calculation will returrn exactly the right value, so we give it some error bound.

	float returnedAirspeed;

	uint32_t reasonableSensorError = 0.05 * MAX_ADC_VALUE;
	uint32_t adcValue = (0.5 * MAX_ADC_VALUE) - reasonableSensorError;

	float expectedAirspeed =  0.0f;

	/********************DEPENDENCIES*******************/

	HAL_ADC_Start_fake.return_val = HAL_OK;
	HAL_ADC_PollForConversion_fake.return_val = HAL_OK;
	HAL_ADC_GetValue_fake.return_val = adcValue;
	HAL_ADC_Stop_fake.return_val = HAL_OK;

	/********************STEPTHROUGH********************/

	airSpeedState_t state = airSpeed_GetAirSpeed(&returnedAirspeed);

	/**********************ASSERTS**********************/

	ASSERT_EQ(state, AIR_SPEED_SUCCEEDED);

	ASSERT_NEAR(returnedAirspeed, expectedAirspeed, allowableErrorBound);
}

TEST_F(GetValue, VeryIncorrectAdcValueCausesModuleToReturnFailed) { 

	// the sensor should never return a voltage much less than half of maximum, thee readings corresponding to maximum differential pressure, which is impossible for our application. If it does (with a value larger than the acceptable error allowed in the previous test), something is broken, and the reading should not be trusted. The module should return failed rather than a negative or 0 airspeed.

   	/***********************SETUP***********************/

	float dummyAirspeed;

	uint32_t unreasonableSensorError = 0.1 * MAX_ADC_VALUE;
	uint32_t adcValue = (0.5 * MAX_ADC_VALUE) - unreasonableSensorError;

	/********************DEPENDENCIES*******************/

	HAL_ADC_Start_fake.return_val = HAL_OK;
	HAL_ADC_PollForConversion_fake.return_val = HAL_OK;
	HAL_ADC_GetValue_fake.return_val = adcValue;
	HAL_ADC_Stop_fake.return_val = HAL_OK;

	/********************STEPTHROUGH********************/

	airSpeedState_t state = airSpeed_GetAirSpeed(&dummyAirspeed);

	/**********************ASSERTS**********************/

	ASSERT_EQ(state, AIR_SPEED_FAILED);
}