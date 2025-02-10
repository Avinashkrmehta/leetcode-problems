=begin
You are given an array prices where prices[i] is the price of a given stock on the ith day.
You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.
Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

Example 1:
Input: prices = [7,1,5,3,6,4]
Output: 5
Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.

Example 2:
Input: prices = [7,6,4,3,1]
Output: 0
Explanation: In this case, no transactions are done and the max profit = 0.
 
Constraints:

1 <= prices.length <= 105
0 <= prices[i] <= 104

=end

def max_profit(prices)
  min_price =  prices[0]
  max_profit = 0
  prices.each do |price|
    min_price = [min_price, price].min
    max_profit = [max_profit, price - min_price].max
  end
  max_profit
end

# Test cases
p max_profit([7,1,5,3,6,4]) #output = 5
p max_profit([7,6,4,3,1]) #output = 0
p max_profit([7,1,5,3,6,4, 10, 2, 8]) #output = 9

# Dry run of the code

# Test case: prices = [7, 1, 5, 3, 6, 4]
# Initial values: min_price = 7, max_profit = 0

# Iteration 1: price = 7
# min_price = min(7, 7) = 7
# max_profit = max(0, 7 - 7) = 0

# Iteration 2: price = 1
# min_price = min(7, 1) = 1
# max_profit = max(0, 1 - 1) = 0

# Iteration 3: price = 5
# min_price = min(1, 5) = 1
# max_profit = max(0, 5 - 1) = 4

# Iteration 4: price = 3
# min_price = min(1, 3) = 1
# max_profit = max(4, 3 - 1) = 4

# Iteration 5: price = 6
# min_price = min(1, 6) = 1
# max_profit = max(4, 6 - 1) = 5

# Iteration 6: price = 4
# min_price = min(1, 4) = 1
# max_profit = max(5, 4 - 1) = 5

# Final result: max_profit = 5


# Time complexity
# O(n)
# Space complexity
# O(1)
# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
# Path: ARRAY/BestTimeToBuyAndSellStock/BestTimeToBuyAndSellStock.rb
# Compare this snippet from ARRAY/TwoSum/TwoSum.rb:
# You can return the answer in any order.
# 


