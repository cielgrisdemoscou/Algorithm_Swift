class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var res = [[Int]]()
        res.append([1])
        if rowIndex == 0 { return res[0] }
        res.append([1,1])
        if rowIndex == 1 { return res[1] }
        res.append([1,2,1])
        if rowIndex == 2 { return res[2] }
        
        for i in 2..<rowIndex {
            var temp = [Int]()
            temp.append(1)
            
            let lastRow = res[i]
            for i in 0..<lastRow.count {
            
                if i == lastRow.count - 1 {
                    temp.append(1)
                } else {
                    temp.append(lastRow[i] + lastRow[i + 1])
                }
            }
            res.append(temp)
        }
        return res[rowIndex]
    }
}

class Solution2 {
    func getRow(_ rowIndex: Int) -> [Int] {
        if rowIndex == 0 { return [1] }
        var res = [Int](repeating: 0, count: rowIndex + 1)
        res[0] = 1
        for i in 1...rowIndex {
            var j = i
            while j >= 1 {
                res[j] += res[j - 1]
                j -= 1
            }
        }
        return res
    }
}
