#include "gps.hpp"

class MockGps : public Gps {
	public:

		MOCK_METHOD0(Init, void());
		MOCK_METHOD0(BeginMeasuring, void());
		MOCK_METHOD1(GetResult, void(GpsData_t *Data));
};
