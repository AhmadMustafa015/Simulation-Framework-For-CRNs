#pragma once
#include<vector>
#include"Band_Details.h"
#include<algorithm>
#include<iterator>
#include<numeric>
#include"Band_Details.h"
class FusionCenter
{
public:
	FusionCenter(int SUsN, int NBands, int maxSUBand);
	~FusionCenter();
	void getSUsIds(int ID);
	void getEmptyBands(const std::vector<int> &Bands); //band that did't have PUs in it
	void bandsOccupiedBySU(const std::vector<int> &suBand);
	void collision(const std::vector<int> &PU,const std::vector<Band_Details*> &SUOccupants);	//return int vector of collision vs su
	void majority();
	void clearVectors();
	void falseAlarm(const std::vector<int> &FAvsBand);
	void misDetection(const std::vector<int> &MDvsBand);
	//output
	std::vector<int> FaVsSUId;
	std::vector<int> MdVsSUId;
	std::vector<int> utilizationVsBand;
	std::vector<int> collisionVsSuN; //this vector for su vs collision
	std::vector<int> throughput;
private:
	int SuId;
	//int **emptyBands;
	//int **bandOccupied;
	int NumberOfSUs;
	int NumberOfBands;
	int maxSUsband;
	std::vector<std::vector<int>> emptyBands;
	std::vector<std::vector<int>> bandOccupied;
	
	bool appearsInVector(const int value , const std::vector<int> &searchIn);
	std::vector<int> majorityBands;
	
};

