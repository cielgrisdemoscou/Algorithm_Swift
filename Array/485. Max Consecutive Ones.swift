/**
 * Question Link: https://leetcode.com/problems/max-consecutive-ones/
 */

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var cnt = 0
        var res = 0
        for i in nums {
            if i != 1 {
                res = max(res, cnt)
                cnt = 0
            }
            else {
                cnt += 1
            }  
        }
        return max(res, cnt)
    }
}


