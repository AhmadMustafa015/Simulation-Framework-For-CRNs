//This is a function is used for calculating False Alarm 
//each SU will have a cashed value for each time slot 
//dont use anything BUUT unisgend integers while working with vectors parameters as it will give you error 
//the command .push_back will add an element to the vector and expand the size of the vector 
// .size() command will deal with the size of the vector to use it as a parameter in the loops in calcualting 
// .begin () will make the pointer in the compiler begin at the first elemnt in the vector if zero or any postive integer
// .insert ==> is the command to put the information about the bands in it. 
// and it syntax is..... [ .insert(nameofthevector.begin() ,+vector),, where +vector is the data given from the SU


#include <iostream>
#include <vector> 

double NumberOfTimeSlots =2000; // please set the time slots you desire 
vector <int> RecentScanVectorForFalseAlarm; // real time values for bands 1's or 0's 
vector <int> FalseAlarm; //// this will tak the recent time slot scan result added to the old ones to help calculations 
unsigned int FaultyBands = RecentScanVectorForFalseAlarm.size () ;
using namespace std;
unsigned int thevaluefromthesensing;
unsigned int oldvaluefromcash;
unsigned int newcashvalue;

int main()
{
	for (unsigned int i = 0; i < FaultyBands; i++) {
		FalseAlarm.push_back(0) //intialzing all values for zero 
	};
	
	for (unsigned int j = 0; j < FaultyBands; j++) {

		thevaluefromthesensing = RecentScanVectorForFalseAlarm.at(j);

		oldvaluefromcash = FalseAlarm.at(j);


		newcashvalue = (thevaluefromthesensing + oldvaluefromcash) / numberoftimeslots ;


		FalseAlarm.at(j) = newcashvalue;

	};

	//printing SU False Alarm  Calculations results


	cout << "False  Alarm" << endl; 
	for (unsigned int f = 0; f < FalseAlarm.size(); f++) {
		cout << FalseAlarm[f] << "";
	};

	







}



