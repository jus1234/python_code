let T: Int = Int(readLine()!)!
for _ in 1...T {
    let N: Int = Int(readLine()!)!
    var dp: [[Int]] = []
    dp.append([1, 0])
    dp.append([0, 1])
    if N > 1 {
        for i in 2...N {
            dp.append([dp[i - 1][0] + dp[i - 2][0], dp[i - 1][1] + dp[i - 2][1]])
        }
    }
    print("\(dp[N][0]) \(dp[N][1])")
}