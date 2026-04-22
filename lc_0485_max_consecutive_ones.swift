"""
LeetCode 0485 – Max Consecutive Ones
Difficulty: Easy
Link: https://leetcode.com/problems/max-consecutive-ones/
Topic: Array
"""

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var highest = 0
        var count = 0

        for num in nums {
            if num == 1 {
                count += 1
                highest = max(highest, count)
            } else {
                count = 0
            }
        }
        return highest
    }
}