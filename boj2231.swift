let N = Int(readLine()!)!
var res: Int = 0
for i in 1...N {
    if N == i + String(i).compactMap({ Int(String($0)) }).reduce(0, +) {
        res = i
        break
    }
}
print(res)