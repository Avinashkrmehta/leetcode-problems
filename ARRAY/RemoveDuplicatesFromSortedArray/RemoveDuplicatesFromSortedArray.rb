=begin
Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same. Then return the number of unique elements in nums.
Consider the number of unique elements of nums to be k, to get accepted, you need to do the following things:
Change the array nums such that the first k elements of nums contain the unique elements in the order they were present in nums initially. The remaining elements of nums are not important as well as the size of nums.
Return k.
Custom Judge:

The judge will test your solution with the following code:

int[] nums = [...]; // Input array
int[] expectedNums = [...]; // The expected answer with correct length

int k = removeDuplicates(nums); // Calls your implementation

assert k == expectedNums.length;
for (int i = 0; i < k; i++) {
    assert nums[i] == expectedNums[i];
}
If all assertions pass, then your solution will be accepted.


Example 1:

Input: nums = [1,1,2]
Output: 2, nums = [1,2,_]
Explanation: Your function should return k = 2, with the first two elements of nums being 1 and 2 respectively.
It does not matter what you leave beyond the returned k (hence they are underscores).
Example 2:

Input: nums = [0,0,1,1,1,2,2,3,3,4]
Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
Explanation: Your function should return k = 5, with the first five elements of nums being 0, 1, 2, 3, and 4 respectively.
It does not matter what you leave beyond the returned k (hence they are underscores).
 

Constraints:

- 1 <= nums.length <= 3 * 104
- 100 <= nums[i] <= 100
- nums is sorted in non-decreasing order.

=end

def remove_duplicates1(nums)
  nums.uniq!
  nums.length
end


def remove_duplicate3(nums)
  return 0 if nums.empty? # Early exit for empty arrays

  j = 1
  nums.each_with_index do |num, i|
    next if i == 0 # Skip the first element

    if num != nums[i - 1]
      nums[j] = num
      j += 1
    end
  end
  j
end

# Test cases
p remove_duplicates1([1,1,2]) #output = 2
p remove_duplicates1([0,0,1,1,1,2,2,3,3,4]) #output = 5

p remove_duplicate3([1,1,2]) #output = 2
p remove_duplicate3([0,0,1,1,1,2,2,3,3,4]) #output = 5

# Dry run for remove_duplicates1
# Input: [1, 1, 2]
# Step 1: nums.uniq! => [1, 2]
# Step 2: nums.length => 2
# Output: 2



# Dry run for remove_duplicate3
# Input: [1, 1, 2]
# Step 1: Check if nums is empty => false
# Step 2: Initialize j = 1
# Step 3: Iterate over nums with index
#   i = 0, skip
#   i = 1, nums[1] == nums[0] => skip
#   i = 2, nums[2] != nums[1] => nums[1] = nums[2], j = 2


# Output: 2
# Dry run for remove_duplicates1
# Input: [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
# Step 1: nums.uniq! => [0, 1, 2, 3, 4]
# Step 2: nums.length => 5
# Output: 5



# Dry run for remove_duplicate3
# Input: [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
# Step 1: Check if nums is empty => false
# Step 2: Initialize j = 1
# Step 3: Iterate over nums with index
#   i = 0, skip
#   i = 1, nums[1] == nums[0] => skip
#   i = 2, nums[2] != nums[1] => nums[1] = nums[2], j = 2
#   i = 3, nums[3] == nums[2] => skip
#   i = 4, nums[4] == nums[3] => skip
#   i = 5, nums[5] != nums[4] => nums[2] = nums[5], j = 3
#   i = 6, nums[6] == nums[5] => skip
#   i = 7, nums[7] != nums[6] => nums[3] = nums[7], j = 4
#   i = 8, nums[8] == nums[7] => skip
#   i = 9, nums[9] != nums[8] => nums[4] = nums[9], j = 5
# Output: 5



# Time complexity: O(n)
# Space complexity: O(1)
# https://leetcode.com/problems/remove-duplicates-from-sorted-array/
# https://leetcode.com/problems/remove-duplicates-from-sorted-array/solution/
# https://www.youtube.com/watch?v=I2tQ1NlJ8VU
# https://www.youtube.com/watch?v=0l6hVihV4Yc
# 


