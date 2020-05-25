#ifndef GPS_HPP
#define	GPS_HPP

#include <stdint.h>

typedef struct{

    long double latitude;  // 8 Bytes
    long double longitude; // 8 Bytes
    float utcTime;     // 4 Bytes. Time in seconds since 00:00 (midnight)
    float groundSpeed; // in m/s
    int altitude; // in m
    int16_t heading; // in degrees. Should be between 0-360 at all times, but using integer just in case
    uint8_t numSatellites;    // 1 Byte
    uint8_t fixStatus; // 0 = no fix, 1 = gps fix, 2 = differential gps fix (DGPS) (other codes are possible)

    bool dataIsNew; // true if data has been refreshed since the previous time GetResult was called, false otherwise.

} GpsData_t;

class Gps
{
	public:

		virtual void Init() = 0;

        virtual void Begin_Measuring();

        virtual void GetResult(GpsData_t *Data);
};

#endif
