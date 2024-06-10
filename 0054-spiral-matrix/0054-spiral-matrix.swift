class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        let n = matrix.count, m = matrix[0].count, count = n * m
        var turns = 0, result = [Int](repeating: 0, count: count), i = 0

        while i < count {
            let rounds = turns/4, direction = turns%4

            switch direction {
            // from left to right
            case 0:
                for k in rounds..<m-rounds {
                    result[i] = matrix[rounds][k]
                    i += 1
                }
                turns += 1

            // from top to bottom
            case 1:
                for k in rounds+1..<n-rounds {
                    result[i] = matrix[k][m-rounds-1]
                    i += 1
                }
                turns += 1

            // from right to left
            case 2:
                for k in stride(from: m-rounds-2, to: rounds-1, by: -1) {
                    result[i] = matrix[n-rounds-1][k]
                    i += 1
                }
                turns += 1

            // from bottom to top
            case 3:
                for k in stride(from: n-rounds-2, to: rounds, by: -1) {
                    result[i] = matrix[k][rounds]
                    i += 1
                }
                turns += 1
            default:
                i += 1
            }   
        }

        return result
    }
}