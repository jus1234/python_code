let N = Int(readLine()!)!
var queue: [Int] = []
var res: String = ""

for i in 1...N {
    queue.append(i)
}

while queue.count > 0 {
    res += String(queue.removeFirst()) + " "
    if queue.count > 0 {
        queue.append(queue.removeFirst())
    }
}

print(res)