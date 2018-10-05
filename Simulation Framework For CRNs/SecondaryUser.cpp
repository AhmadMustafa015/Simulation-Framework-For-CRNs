#include "SecondaryUser.h"



SecondaryUser::SecondaryUser()
{
	NumberOfBand = 100;
	PFA = .1;
	PMD = .1;
}

SecondaryUser::SecondaryUser(int PFA, int PMD, int NumberOfBandint)
{

}


SecondaryUser::~SecondaryUser()
{
}

void SecondaryUser::scanningBands(std::vector<Band_Details> &Bands)
{
	bool falseAlarm = (rand() % 100) < (PFA * 100);
	bool missDetection = (rand() % 100) < (PMD * 100);
	//BandBeingScaned.push_back = Bands.bandNumber();
	for (unsigned int i = 0; i < Bands.size(); i++)
	{
		if (Bands[i].isEmpty()) //H0
		{
			bool falseAlarmSimulation = true && falseAlarm;				//probability of false alarm using and gate 
			emptyBands.push_back(Bands[i].bandNumber());
			if (falseAlarmSimulation) 									//there is false alarm
				NumFA++;												//Increase false alarm
		}
		else	//H1
		{
			bool missDetectionSimulation = true && missDetection;
			if (missDetectionSimulation)
			{
				emptyBands.push_back(Bands[i].bandNumber());
				numMD++;
			}
		}
	}
}
void SecondaryUser::SUsTransmitting()
{
	numOfBandsReqForSUs = 5 + (rand() % 10);							//number of su bands needed 5-15
	for (unsigned int i = 0; i < numOfBandsReqForSUs; i++)				//Su occupants the band
	{
		SUsOccupantes[i] = emptyBands[(rand() % emptyBands.size())];	//occupanting is randomly 
	}
}