// 1512. Number of Good Pairs
#include <vector>
using namespace std;


class Solution {
public:
    int numIdenticalPairs(vector<int>& nums) {
        int counter = 0;
        for(int i=0; i<nums.size(); i++){
            for(int j=i+1; j<nums.size(); j++){
                if(nums[i] == nums[j]){
                    counter += 1;
                }
            }
        }
        return counter;
    }
};