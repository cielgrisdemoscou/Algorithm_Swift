/**
* Question Link: https://leetcode.com/problems/maximum-subarray/
*/


class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var copy = nums
        for i in 1..<nums.count {
            copy[i] = max(copy[i],  copy[i] + copy[i - 1])
        }

        return copy.max()!
    }
}
