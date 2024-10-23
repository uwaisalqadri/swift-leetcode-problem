//: [Previous](@previous)

import Foundation

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        nums1 = (nums1.prefix(m) + nums2.prefix(n)).sorted()
    }
}

var nums: [Int] = [1,2,3,0,0,0]
Solution().merge(&nums, 3, [2, 5, 6], 3)
print("PASSED", nums == [1,2,2,3,5,6])
