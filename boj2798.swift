let NM = readLine()!.split(separator: " ").map { Int($0)! }
let N: Int = NM[0]
let M: Int = NM[1]
let cards: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
var max: Int = 0
for i in 0..<N-2 {
    for j in i+1..<N-1  {
        for k in j+1..<N {
            let sum: Int = cards[i] + cards[j] + cards[k]
            if sum > max && sum <= M {
                max = sum
            }
        }
    }
}
print(max)