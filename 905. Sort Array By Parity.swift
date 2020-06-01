/**
 * Question Link: https://leetcode.com/problems/sort-array-by-parity/
 */

class SortArrayByParity {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var outputArray = [Int]()
        for (_,value) in A.enumerated(){
            outputArray.insert(value, at: value % 2 == 0 ? 0 : outputArray.count)
        }
        
        return outputArray
    }
}