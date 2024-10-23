//: [Previous](@previous)

import Foundation

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        var totalIndex = digits.count - 1

        for index in stride(from: totalIndex, through: 0, by: -1) {
            if digits[index] < 9 {
                digits[index] += 1
                return digits
            }
            digits[index] = 0
        }

        digits.insert(1, at: 0)
        return digits
    }
}

print("PASSED", Solution().plusOne([4,3,2,1]) == [4,3,2,2])
print("PASSED", Solution().plusOne([9]) == [1, 0])
