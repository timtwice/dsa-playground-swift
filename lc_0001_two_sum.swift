"""
LeetCode 0001 – Two Sum
Difficulty: Easy
Link: https://leetcode.com/problems/two-sum/
Topic: Array, Hash Table
"""

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var lookup : [Int: Int] = [:]

        for (i, num) in nums.enumerated() {
            if let index = lookup[target - num] {
                return [index, i]
            }
            lookup[num] = i
        }
        
        return []
    }
}