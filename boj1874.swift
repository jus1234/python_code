let n = Int(readLine()!)!
var answer = ""
var stack: [Int] = []
var current = 0

for _ in 0..<n {
    let target = Int(readLine()!)!
    while current < target {
        current += 1
        stack.append(current)
        answer += "+\n"
    }
    
    if stack.last == target {
        stack.removeLast()
        answer += "-\n"
    } else {
        answer = "NO"
        break
    }
}

print(answer)