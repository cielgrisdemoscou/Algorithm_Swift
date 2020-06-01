import UIKit

/*
* Question Link: https://leetcode.com/problems/search-insert-position/
*/

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var low = 0, high = nums.count - 1
        while low <= high {
            let mid = (low + high) / 2
            if nums[mid] == target { return mid }
            else if nums[mid] > target { high = mid - 1 }
            else { low = mid + 1 }
        }
        return low
    }
}

