=begin

Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
You may assume that each input would have exactly one solution, and you may not use the same element twice.
You can return the answer in any order.

Example 1:

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
Example 2:

Input: nums = [3,2,4], target = 6
Output: [1,2]
Example 3:

Input: nums = [3,3], target = 6
Output: [0,1]
 

Constraints:

- 2 <= nums.length <= 104
- 109 <= nums[i] <= 109
- 109 <= target <= 109

=end

#BRUTE FORCE
def two_sum_1(nums, target)
  nums.each_with_index do |value, index|
      nums.each_with_index do |val, ind|
          if index < ind
              return [index, ind] if value + val == target
          end
      end
  end
end

#OPTIMIZED SOLUTION
def two_sum_2(nums, target)
  hash = {}
  nums.each_with_index do |num, index|
      complement = target - num
      if hash.key?(complement)
          return [hash[complement],index]
      end
      hash[num] = index
      []
  end
end

# Test cases
p two_sum_1([2,7,11,15], 9) #output =  [0,1]
p two_sum_1([3,2,4], 6) #output =  [1,2]
p two_sum_1([3,3], 6) #output =  [0,1]
p two_sum_2([2,7,11,15], 9) #output =  [0,1]


# Time complexity: O(n)
# Space complexity: O(n)
# https://leetcode.com/problems/two-sum/



# Dry run for two_sum_1 method
# Example: nums = [2, 7, 11, 15], target = 9
# Iteration 1: value = 2, index = 0
#   - Inner Iteration 1: val = 2, ind = 0 (index < ind is false)
#   - Inner Iteration 2: val = 7, ind = 1 (index < ind is true, 2 + 7 == 9, return [0, 1])

# Dry run for two_sum_2 method
# Example: nums = [2, 7, 11, 15], target = 9
# Iteration 1: num = 2, index = 0
#   - complement = 9 - 2 = 7
#   - hash = {2 => 0}
# Iteration 2: num = 7, index = 1
#   - complement = 9 - 7 = 2
#   - hash.key?(2) is true, return [0, 1]