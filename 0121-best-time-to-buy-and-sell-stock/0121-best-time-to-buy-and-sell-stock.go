import "math"

func maxProfit(prices []int) int {
    minPrice := math.MaxInt64
    maxProfit := 0

    for _, price := range prices {
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
