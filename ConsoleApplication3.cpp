//This is a function is used for calculating throughput for each band 
//each band will have a cashed value for each time slot 
//dont use anything BUUT unisgend integers while working with vectors parameters as it will give you error 
//the command .push_back will add an element to the vector and expand the size of the vector 
// .size() command will deal with the size of the vector to use it as a parameter in the loops in calcualting 
// .begin () will make the pointer in the compiler begin at the first elemnt in the vector if zero or any postive integer
// .insert ==> is the command to put the information about the bands in it. 
// and it syntax is..... [ .insert(nameofthevector.begin() ,+vector),, where +vector is the data given from the SU


#include <iostream>
#include <vector> 

double numberoftimeslots =2000; // please set the time slots you desire 
vector <int> recentscanvectorforthroughput; // real time values for bands 1's or 0's 
vector <int> throughputcalculations; //// this will tak the recent time slot scan result added to the old ones to help calculations 
unsigned int bandswanttotestnumber = recentscanvectorforthroughput.size () ;
using namespace std;
unsigned int thevaluefromthesensing;
unsigned int oldvaluefromcash;
unsigned int newcashvalue;

int main()
{
	for (unsigned int i = 0; i < bandswanttotestnumber; i++) {
		throughputcalculations.push_back(0) ///intialzing all values for zero 
	};
	
	for (unsigned int j = 0; j < bandswanttotestnumber; j++) {

		thevaluefromthesensing = recentscanvectorforthroughput.at(j);

		oldvaluefromcash = throughputcalculations.at(j); 


		newcashvalue = (thevaluefromthesensing + oldvaluefromcash) / numberoftimeslots ;


			throughputcalculations.at(j) = newcashvalue;

			

	};
	cout << "througput for each band" << endl; 
	for (unsigned int f = 0; f < throughputcalculations.size(); f++) {
		cout << throughputcalculations[f] << "";///printing the througput results
	};

	
	cout << "througput" << endl; 






}



