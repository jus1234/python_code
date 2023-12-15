func solution(_ msg:String) -> [Int] {
    let msgArr: [String] = msg.map { String($0) }
    var alphaDic = ["A":1, "B":2, "C":3 , "D":4, "E":5, "F": 6, "G": 7, "H":8, "I":9, "J":10, "K": 11, "L":12, "M":13, "N":14, "O":15, "P":16, "Q":17, "R":18, "S":19, "T":20, "U":21, "V":22, "W":23, "X":24, "Y":25, "Z":26]
    var last: Int = 26
    var result: [Int] = []
    let len: Int = msg.count
    var pointer: Int = 0
    
    while pointer < len {
        var now: String = msgArr[pointer]
        var nowValue: Int = alphaDic[now]!
        var dicFlag: Bool = true
        while dicFlag {
            if pointer + 1 >= len {
                pointer += 1
                result.append(nowValue)
                break
            }
            let next: String = msgArr[pointer + 1]
            pointer += 1
            if let value = alphaDic[now + next] {
                nowValue = value
                now = now + next
            } else {
                last += 1
                alphaDic[now + next] = last
                result.append(nowValue)
                dicFlag = false
            }
        }
    }
    return result
}