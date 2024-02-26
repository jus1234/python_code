import Foundation

func solution(_ n:Int, _ wires:[[Int]]) -> Int {
    var graph: [Int: [Int]] = [:]
    for i in 1...n {
        graph.updateValue([], forKey: i)
    }

    for wire in wires {
        graph[wire[0]]?.append(wire[1])
        graph[wire[1]]?.append(wire[0])
    }

    func bfs(_ start: Int) -> Int {
        var queue: [Int] = [start]
        var index = 0

        while index < queue.count {
            let last = queue[index]
            index += 1

            visited[last] = true
            for node in graph[last]! {
                if !visited[node] {
                    queue.append(node)
                }
            }
        }

        return index
    }
    
    var visited = Array(repeating: false, count: n+1)
    visited[1] = true
    let count = bfs(2)
    var result = abs(count - (n - count))
    
    for i in 1...n {
        visited = Array(repeating: false, count: n+1)
        visited[i] = true
        let count = bfs(1)
        result = min(result, abs(count - (n - count)))
    }
    
    return result
}