import Foundation

func solution(_ numbers:String) -> Int {
    let arr: [String] = numbers.map { String($0) }
    
    var per: [[String]] = []
    for i in 1...numbers.count {
        per += permutation(arr, i)
    }
    
    per = Array(Set(per))
    
    per = per.filter {
        if $0.count > 1 && $0[0] == "0" {
            return false
        }
        let n = Int($0.reduce("", +))!
        var isPrime: Bool = true
        if n <= 1 {
            isPrime = false
        }
        if n > 2 {
            for i in 2...n - 1 {
                if n % i == 0 {
                    isPrime = false
                }
            }
        }
        return isPrime
    }
    return per.count
}

func permutation<T: Comparable>(_ array: [T], _ n: Int) -> [[T]] {
    var result: [[T]] = [[T]]()
    if array.count < n { return result }
    
    var stack: [([T], [Bool])] = array.enumerated().map {
        var visited = Array(repeating: false, count: array.count)
        visited[$0.offset] = true
        return ([$0.element], visited)
    }
    
    while stack.count > 0 {
        let now = stack.popLast()!
        
        let elements = now.0
        var visited = now.1
        
        if elements.count == n {
            result.append(elements)
            continue
        }
        
        for i in 0...array.count - 1 {
            if visited[i] { continue }
            visited[i] = true
            stack.append((elements + [array[i]], visited))
            visited[i] = false
        }
    }
    
    return result
}