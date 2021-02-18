/*
* Question Link: https://leetcode.com/problems/pascals-triangle/
*/


class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var res = [[Int]]()
        if numRows == 0 { return res }
        res.append([1])
        if numRows == 1 { return res }
        res.append([1,1])
        if numRows == 2 { return res }
        
        for i in 2..<numRows {
            var temp = [Int]()
            temp.append(1)
            
            let lastRow = res[i - 1]
            for i in 0..<lastRow.count {
                
                if i == lastRow.count - 1 {
                    temp.append(1)
                } else {
                    temp.append(lastRow[i] + lastRow[i + 1])
                }
            }
            res.append(temp)
        }
        return res
    }
}
