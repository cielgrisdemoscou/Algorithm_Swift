/*
* Question Link: https://leetcode.com/problems/longest-common-prefix/
*/


class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty { return "" }
        var minLen = Int.max
        var result: [[Character]] = []
        for str in strs {
            let str = Array(str)
            minLen = min(minLen, str.count)
            if !result.isEmpty {
                for i in 0..<minLen {
                    if !result.isEmpty && result.first![i] != str[i] {
                        minLen = i
                        break
                    }
                }
            }
            if minLen == 0 { return "" }
            result.append(str)
        }
        return String(result[0][0..<minLen])
    }
}
