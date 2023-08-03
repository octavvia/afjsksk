func maxProfit(prices []int) int {
    minPrice := prices[0]
    maxProfit := 0
    for i := 1; i < len(prices); i++ {
        price := prices[i]
        if price < minPrice {
            minPrice = price
        } else {
            profit := price - minPrice
            if profit > maxProfit {
                maxProfit = profit
            }
        }
    }
    return maxProfit
}