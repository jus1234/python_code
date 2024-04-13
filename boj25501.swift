let T: Int = Int(readLine()!)!
for _ in 0..<T {
    let S: String = readLine()!
    var recCnt: Int = 0
    func recursion(s: String, l: Int, r: Int) -> Int {
        recCnt += 1
        if l >= r {
            return 1
        }
        if String(Array(s)[l]) != String(Array(s)[r]) {
            return 0
        }
        return recursion(s: s, l: l + 1, r: r - 1)
    }
    print("\(recursion(s: S, l: 0, r: S.count - 1)) \(recCnt)")
}