class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        let count = nums.count
        nums = nums.filter { $0 != 0 }
        let newCount = nums.count
        for _ in 0..<count - newCount {
            nums.append(0)
        }
    }
}
