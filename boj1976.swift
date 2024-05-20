let n = Int(readLine()!)!
let m = Int(readLine()!)!
var edges: [[Int]] = []

for _ in 0..<n {
    edges.append(readLine()!.split(separator: " ").map { Int($0)! })
}

var parent = [Int](0...n)

func find(_ x: Int) -> Int {
    if parent[x] == x {
        return x
    }
    parent[x] = find(parent[x])
    return parent[x]
}

func union(a: Int, b: Int) {
    let a = find(a)
    let b = find(b)
    if a == b {
        return
    }
    if a > b {
        parent[a] = b
    } else {
        parent[b] = a
    }
}

for y in 0..<n {
    for x in 0..<n {
        if edges[y][x] == 1 {
            union(a: y + 1, b: x + 1)
        }
    }
}

Set(readLine()!.split(separator: " ").map { find(Int($0)!) }).count == 1 ? print("YES") : print("NO")