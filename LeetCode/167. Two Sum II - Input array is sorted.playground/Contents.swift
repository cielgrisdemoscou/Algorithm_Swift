class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var res = [Int]()
        
        for i in 0 ..< numbers.count - 1 {
            for j in i + 1 ..< numbers.count {
                if target == numbers[i] + numbers[j] {
                    res = [i+1, j+1]
                }
            }
        }
        return res
    }
}

class Solution2 {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1
        
        while left < right {
            if numbers[left] + numbers[right] == target {
                return [left + 1, right + 1]
            } else if numbers[left] + numbers[right] < target {
                left += 1
            } else {
                right -= 1
            }
        }
        return [0,0]
    }
}
