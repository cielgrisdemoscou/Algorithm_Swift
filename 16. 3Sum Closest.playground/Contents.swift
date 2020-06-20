 class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        if (nums.count < 3) {
            return 0
        }
        var result = Int.max
        var sortedNums = nums.sorted(by: <)
        for index in 0..<(nums.count - 2) {
            if index == 0 || sortedNums[index] != sortedNums[index - 1] {
                var firstNum = sortedNums[index]
                var startIndex = index + 1
                var endIndex = nums.count - 1
                while(startIndex < endIndex) {
                    var temp = firstNum + sortedNums[startIndex] + sortedNums[endIndex]
                    
                    if (result == Int.max || abs(temp - target) < abs(result - target)) {
                        result = temp
                    }
                    if (temp > target) {
                        endIndex -= 1
                    } else if (temp < target) {
                        startIndex += 1
                    } else {
                        return temp
                    }
                }
            }
        }
        return result
    }
 }
