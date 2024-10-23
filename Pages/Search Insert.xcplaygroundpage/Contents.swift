//: [Previous](@previous)

import Foundation

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        let allNums = (nums + [target]).sorted()

        if let exactIndex = allNums.firstIndex(where: { $0 == target }) {
            return exactIndex
        }

        return 0
    }
}
