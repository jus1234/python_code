func solution(_ N:Int, _ number:Int) -> Int {
    var dp = Array(repeating: Set<Int>(), count: 9)
    var result = Int.max
    for i in 1..<9{
        for j in 1..<i{
            for k in dp[i - j]{
                for l in dp[j]{
                    
                    if k - l > 0{
                        dp[i].insert(k - l)
                        if k - l == number{result = min(result, i)}
                    }
                    if l != 0 && k != 0{ //Division by zero 처리
                        dp[i].insert(k / l)
                        if k / l == number{result = min(result, i)}
                    }
                    dp[i].insert(k + l)
                    dp[i].insert(k * l)
                    if k + l == number{result = min(result, i)}
                    if k * l == number{result = min(result, i)}
                }
            }
        }
        var str = ""
        for _ in 1...i{
            str += "\(N)"
        }
        dp[i].insert(Int(str)!)
        if Int(str)! == number{result = min(result, i)}
    }
    if result == Int.max{
        result = -1
    }
    return result
}