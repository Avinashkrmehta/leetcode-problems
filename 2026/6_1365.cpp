// 1365. How Many Numbers Are Smaller Than the Current Number
#include <vector>
#include <algorithm>
using namespace std;


class Solution {
public:
    vector<int> smallerNumbersThanCurrent(vector<int>& nums) {
        // vector<int> result;
        // for(int i=0; i<nums.size(); i++){
        //     int counter = 0;
        //     for(int j=0; j<nums.size(); j++){
        //         if(nums[i] > nums[j]){
        //             counter += 1;
        //         }
        //     }
        //     result.push_back(counter);
        // }
        // return result;
        vector<int> arr = nums;
        vector<int> sol;
        sort(arr.begin(), arr.end());
        for(int i = 0; i < nums.size(); i++){
            for(int j = 0; j < arr.size(); j++){
                if(nums[i] == arr[j]){
                    sol.push_back(j);
                    break;
                }
            }
        }
        return sol;    
    }
};