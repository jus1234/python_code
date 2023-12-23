let graph: [String: [String]] = [
    "A" : ["B", "C"],
    "B" : ["A", "D", "E"],
    "C" : ["A", "F"],
    "D" : ["B"],
    "E" : ["B"],
    "F" : ["C"],
]


func DFS(graph: [String: [String]], start: String) -> [String] {
    var visitedQueue: [String] = []
    var needVisitStack: [String] = [start]
    
    while !needVisitStack.isEmpty {
        let node: String = needVisitStack.popLast()!
        if visitedQueue.contains(node) { continue }
        
        visitedQueue.append(node)
       needVisitStack += graph[node] ?? []
    }
    
    return visitedQueue
}
