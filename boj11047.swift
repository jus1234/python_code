let NK = readLine()!.split(separator: " ").map { Int($0)! }
let N:Int = NK[0]
let K: Int = NK[1]
var coins: [Int] = []
var now: Int = K
var res: Int = 0

for _ in 0..<N {
    coins.append(Int(readLine()!)!)
}
coins.reverse()

for coin in coins {
    if now >= coin {
        res += now / coin
        now -= coin * (now / coin)
    }
}

print(res)