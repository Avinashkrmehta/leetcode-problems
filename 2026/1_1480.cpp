// running-sum-of-1d-array
#include <vector>
using namespace std;  

class Solution {
public:
    vector<int> runningSum(vector<int>& nums) {
        vector<int> result;
        int currSum, i, j, prevSum = 0;
        
        for(i=0; i< nums.size(); i++){
            currSum = prevSum + nums[i];
            result.push_back(currSum);
            prevSum = currSum;
        }
        return result;
    }
};  