class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var expected_sum = (nums.count) * (nums.count + 1) / 2
        var actual_sum = nums.reduce(0, +)
        return expected_sum - actual_sum
    }
}



