var left = readLine()!
let N = Int(readLine()!)!
var right = ""

(0..<N).forEach { index in
    let input = readLine()!
    switch input.first! {
    case "L":
        if left.count > 0 {
            right.append(left.popLast()!)
        }
    case "D":
        if right.count > 0 {
            left.append(right.popLast()!)
        }
    case "B":
        if left.count > 0 {
            _ = left.popLast()
        }
    default:
        left.append(input.last!)
    }
}

print("\(left)\(String(right.reversed()))")