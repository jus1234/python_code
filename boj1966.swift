let n = Int(readLine()!)!
for _ in 0..<n {
    let NM = readLine()!.split(separator: " ").map{Int(String($0))!}
    var input = readLine()!.split(separator: " ").map{Int(String($0))!}
    var queue = [(Int, Int)]()
    var result = 0
    for (i, value) in input.enumerated() {
        queue.append((value, i))
    }
    input.sort()
    while true{
        if queue[0].0 == input.last {
            result += 1
            if queue[0].1 == NM[1] {
                print(result)
                break
            }else {
                queue.removeFirst()
                input.removeLast()
            }
        }else {
            queue.append(queue.removeFirst())
        }
    }
}
