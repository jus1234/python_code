import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]

var grid = [[Int]]()
for _ in 0..<n {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    grid.append(row)
}

let directions = [1: (1, -1), 2: (1, 0), 3: (1, 1)]

func dfs(_ i: Int, _ j: Int, _ nowDir: Int, _ minFuel: Int, _ fuel: Int) -> Int {
    if i == n - 1 {
        return min(minFuel, fuel)
    }
    
    var minFuel = minFuel
    for k in 1...3 {
        if nowDir != k {
            let nextI = i + directions[k]!.0
            let nextJ = j + directions[k]!.1
            if nextI >= 0 && nextI < n && nextJ >= 0 && nextJ < m {
                minFuel = dfs(nextI, nextJ, k, minFuel, fuel + grid[nextI][nextJ])
            }
        }
    }
    return minFuel
}

var minFuel = Int.max
for i in 0..<m {
    minFuel = min(dfs(0, i, 0, minFuel, grid[0][i]), minFuel)
}

print(minFuel)
