import Foundation

func solution(_ numbers:[[Int]]) {
    var answer:[[Int]] = []
    dfs(numbers: numbers, depth: 0, answer: &answer, history: [])
}

func dfs(numbers:[[Int]],depth:Int,answer:inout [[Int]],history:[Int]) {
    if depth == numbers.count {
        answer.append(history)
        return
    }
    if history.isEmpty {
        for n in numbers[depth] {
            var newHistory = history
            newHistory.append(n)
            dfs(numbers: numbers, depth: depth+1, answer: &answer, history: newHistory)
        }
    }else {
        for n in numbers[depth] {
            if history.last!%2 == 0 && n%2 != 0 {
                var newHistory = history
                newHistory.append(n)
                dfs(numbers: numbers, depth: depth+1, answer: &answer, history: newHistory)
            }
            if history.last!%2 != 0 && n%2 == 0 {
                var newHistory = history
                newHistory.append(n)
                dfs(numbers: numbers, depth: depth+1, answer: &answer, history: newHistory)
            }
        }
    }
}