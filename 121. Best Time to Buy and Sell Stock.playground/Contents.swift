class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 0 else {
            return 0
        }
        
        var maxProfit = 0
        var minPrice = prices[0]
        
        for i in 1 ..< prices.count {
            let price = prices[i]
            if price < minPrice {
                minPrice = price
            } else {
                maxProfit = max(maxProfit, price - minPrice)
            }
        }
        return maxProfit
    }
}

