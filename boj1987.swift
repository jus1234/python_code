let rc = readLine()!.split(separator: " ").map { Int($0)! }
let r = rc[0]
let c = rc[1]

var map = [[Int]]()
let direction: [(y: Int, x: Int)] = [
  (0,-1),
  (0,1),
  (-1,0),
  (1,0)
]
var result = 0

for _ in 0..<r {
  let y = readLine()!.map { Int($0.asciiValue!) - 65 }
  map.append(y)
}

func dfs(start: (y: Int, x: Int), count: Int, bit: Int) {
  result = result > count ? result : count
  for i in 0..<direction.count {
    let nextP: (y: Int, x: Int) = (start.y + direction[i].y, start.x + direction[i].x)
    
    if (0..<r).contains(nextP.y)
        && (0..<c).contains(nextP.x) {
      let newB = 1 << map[nextP.y][nextP.x]
      if bit & newB == 0 {
        dfs(start: nextP, count: count + 1, bit: bit | newB)
      }
    }
  }
}

dfs(start: (0,0), count: 1, bit: 1 << map[0][0])
print(result)