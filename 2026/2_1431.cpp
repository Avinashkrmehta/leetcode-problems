// kids-with-the-greatest-number-of-candies
#include <vector>
using namespace std;

class Solution {
public:
    vector<bool> kidsWithCandies(vector<int>& candies, int extraCandies) {
        vector<bool> result;
        int max = maxElement(candies);
        for(int i=0; i<candies.size(); i++){
            if((candies[i] + extraCandies)  >= max){
                result.push_back(true);
            }else{
                result.push_back(false);
            }   
                
        }
        return result;
    }

    int maxElement(vector<int>& array){
        int max = 0;
        for(int i=0; i< array.size(); i++){
            if(array[i] > max)
                max = array[i];
        }
        return max;
    }
};