class Solution {
    func reverseString(_ s: inout [Character]) {
        var (start, end) = (0, s.count - 1)
        while start < end {
            (s[start], s[end]) = (s[end], s[start])
            start += 1
            end -= 1
        }
    }
}
