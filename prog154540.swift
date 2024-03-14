import Foundation


func solution(_ maps:[String]) -> [Int] {
  
    let graph: [[Character]] = maps.reduce(into: [[Character]]()) { 
        $0.append(Array($1)) 
    }
    let row: Int = maps.count
    let col: Int = maps[0].count
    var visit: [[Bool]] = Array(repeating: Array(repeating: false, count: col), count: row)
    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]
    
    func bfs(_ x: Int, _ y: Int) -> Int {
        visit[x][y] = true
        if graph[x][y] == "X" { return 0 }
        var sum: Int = 0
        var queue: [(Int, Int)] = []
        
        queue.append((x, y))
        
        while(!queue.isEmpty) {
            let (qx, qy) = queue.removeFirst()
            if graph[qx][qy].isNumber {
                sum += Int(graph[qx][qy].asciiValue!) - 48   
            }
            
            for i in dx.indices {
                let nx: Int = qx + dx[i]
                let ny: Int = qy + dy[i]
                guard 0..<row ~= nx && 
                      0..<col ~= ny &&
                      !visit[nx][ny] && 
                      graph[nx][ny] != "X" else { continue }
                
                visit[nx][ny] = true
                queue.append((nx, ny))                
            }
        }
        return sum
    }
    
    func dfs(_ x: Int, _ y: Int) -> Int {
        if graph[x][y] == "X" { return 0 }
        var sum: Int = Int(graph[x][y].asciiValue!) - 48
        visit[x][y] = true
    
        for i in dx.indices {
            let nx = x + dx[i]
            let ny = y + dy[i]
            if nx >= row || nx < 0 || ny >= col || ny < 0 { continue }
            if visit[nx][ny] { continue }
            visit[nx][ny] = true
            sum += dfs(nx, ny)
        }
        return sum
    }   
        
    var ans: [Int] = []
    
    for i in 0..<row {
        for j in 0..<col {
            if visit[i][j] { continue }
            let sum = bfs(i, j)
            if sum > 0 {
                print(sum)
                ans.append(sum)
            }
        }
    }
    return ans.isEmpty ? [-1] : ans.sorted()
}