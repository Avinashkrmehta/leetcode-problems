// 1470. Shuffle the Array
#include <vector>
using namespace std;

class Solution {
public:
    vector<int> shuffle(vector<int>& nums, int n) {
        // vector<int> result(2*n);
        // for(int i=0; i<n; i++){
        //     // result.push_back(nums[i]);
        //      result[2*i] = nums[i];
        //     // result.push_back(nums[i+n]);
        //     result[2*i+1] = nums[i+n];
        // }
        // return result;
        for (int i = 0; i < n; i++) {
            nums[i] |= (nums[i + n] << 10);  // pack two numbers
        }

        int idx = 2 * n - 1;
        for (int i = n - 1; i >= 0; i--) {
            nums[idx--] = nums[i] >> 10;      // y
            nums[idx--] = nums[i] & 1023;     // x
        }
        return nums;

    }
};