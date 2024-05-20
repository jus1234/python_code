func solution(_ targets: [Int], _ attacked: [Int]) -> [Int] {
    var result: [Int] = []
    var nowState = targets
    var index = 0
    var notAlive: [Int: Bool] = targets.reduce([:]) { (partialResult, count) in
        var result = partialResult
        result[index] = true
        index += 1
        return result
    }
    var notAliveCount: Int = targets.count
    
    attacked.forEach{ target in
        let now = target - 1
        for i in 0..<targets.count {
            if i == now {
                nowState[i] = targets[i]
            } else {
                var nowCount = nowState[i]
                if notAlive[i]! && nowState[i] > 0 {
                    nowCount -= 1
                    nowState[i] = nowCount
                    if nowCount <= 0 {
                        notAliveCount -= 1
                        notAlive[i] = false
                    }
                }
            }
        }
        result.append(notAliveCount)
    }
    return result
}

print(solution([1, 2, 4, 3], [1, 3, 4, 3]))
