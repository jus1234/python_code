func padonban(_ n: Int) -> Int {
    var dp: [Int] = [0, 1, 1, 1]
    if n > 3 {
        for i in 4...n {
            dp.append(dp[i - 2] + dp[i - 3])
        }
    }
    return dp[n]
}
var T: Int = Int(readLine()!)!
for _ in 1...T {
    let n: Int = Int(readLine()!)!
    print(padonban(n))
}