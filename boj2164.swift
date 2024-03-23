let N = Int(readLine()!)!
var queue: [Int] = []
var pointer: Int = 0

for i in 1...N {
   queue.append(i)
}

while pointer + 1 < queue.count {
   pointer += 1
   queue.append(queue[pointer])
   pointer += 1
}
print(queue[pointer])