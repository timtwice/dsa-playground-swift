"""
LeetCode 0136 – Single Number
Difficulty: Easy
Link: https://leetcode.com/problems/single-number/
Topic: Array, Bit Manipulation
"""

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var result = 0

        for num in nums {
            result ^= num
        }

        return result
    }
}

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var lookup = Set<Int>()

        for num in nums {
            if lookup.contains(num) {
                lookup.remove(num)
            } else {
                lookup.insert(num)
            }
        }

        return lookup.first!
    }
}