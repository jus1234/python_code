import Foundation

let MAX = 1_000_001

var input = [Int](repeating: 0, count: MAX)
var output = [Int](repeating: 0, count: MAX)

func isCreatorNode(_ node: Int) -> Bool {
    return input[node] == 0 && output[node] >= 2
}

func getDonutShapedGraphCnt(_ answer: inout [Int]) -> Int {
    return output[answer[0]] - (answer[2] + answer[3])
}

func isBarShapedGraph(_ node: Int) -> Bool {
    return output[node] == 0
}

func is8ShapedGraph(_ node: Int) -> Bool {
    return input[node] >= 2 && output[node] == 2
}

func solution(_ edges: [[Int]]) -> [Int] {
    var maxNode = 0

    for edge in edges {
        input[edge[1]] += 1
        output[edge[0]] += 1
        
        maxNode = max(maxNode, edge[0], edge[1])
    }

    var answer = [Int](repeating: 0, count: 4)

    for node in 1...maxNode {
        if isCreatorNode(node) {
            answer[0] = node
        } else if isBarShapedGraph(node) {
            answer[2] += 1
        } else if is8ShapedGraph(node) {
            answer[3] += 1
        }
    }

    answer[1] = getDonutShapedGraphCnt(&answer)

    return answer
}
