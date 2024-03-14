let NM = readLine()!.split(separator: " ").map { Int($0)! }
let N = NM[0]
let M = NM[1]

var levelArr: [String] = []
var powerArr: [Int] = []

for _ in 1...N {
    let line = readLine()!.split(separator: " ")
    let level = String(line[0])
    let power = Int(line[1])!
    if powerArr.count > 0,
       powerArr[powerArr.count - 1] == power {
        continue
    }
    levelArr.append(level)
    powerArr.append(power)
}

for _ in 1...M {
    let power = Int(readLine()!)!
    var left = 0
    var right = powerArr.count - 1
    while left <= right {
        let mid = (left + right) / 2
        if power > powerArr[mid] {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    print(levelArr[left])
}