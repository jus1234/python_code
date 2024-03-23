let dx = [1, 2, 2, 1, -1, -2, -2, -1]
let dy = [-2, -1, 1, 2, 2, 1, -1, -2]

func isValidCoord(y: Int, x: Int, l: Int) -> Bool {
    return 0..<l ~= y && 0..<l ~= x
}

func solution() {
    let l = Int(readLine()!)!
    let start = readLine()!.split(separator: " ").map { Int($0)! }
    let end = readLine()!.split(separator: " ").map { Int($0)! }
    let startY = start[0], startX = start[1], endY = end[0], endX = end[1]
    var board = [[Bool]](repeating: [Bool](repeating: false, count: l), count: l)
    
    func bfs(y: Int, x: Int) {
        var queue = [(y, x, 0)]
        var index = 0
        board[y][x] = true
        
        while queue.count > index {
            let y = queue[index].0
            let x = queue[index].1
            let d = queue[index].2
            
            if y == endY && x == endX {
                print(d)
                break
            }
            
            for i in 0..<8 {
                let ny = y + dy[i]
                let nx = x + dx[i]
                
                if isValidCoord(y: ny, x: nx, l: l) && !board[ny][nx] {
                    board[ny][nx] = true
                    queue.append((ny, nx, d + 1))
                }
            }
            index += 1
        }
    }
    bfs(y: startY, x: startX)
}

let t = Int(readLine()!)!
for _ in 0..<t { solution() }