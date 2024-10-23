//: [Previous](@previous)

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numToIndex: [Int: Int] = [:]

        for (index, num) in nums.enumerated() {
            let complement = target - num

            if let complementIndex = numToIndex[complement] {
                return [complementIndex, index]
            }

            numToIndex[num] = index
        }

        return []
    }
}

Solution().twoSum([2,7,11,15], 9) == [0, 1]
