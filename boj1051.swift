let t = readLine()!.split(separator: " ").map{Int(String($0))!}
let (n,m) = (t[0],t[1])

var arr = [[Int]]()
let len = min(n,m)

for _ in 0..<n {
    let input = Array(readLine()!).map{Int(String($0))!}
    arr.append(input)
}

func findSqure(_ x: Int, _ y: Int, _ l: Int) -> Bool {
    return arr[x][y] == arr[x][y+l-1] && arr[x][y] == arr[x+l-1][y] && arr[x][y] == arr[x+l-1][y+l-1]
}

var ans = 1

outerLoop: for l in stride(from: len, to: 0, by: -1) {
    for i in 0 ... n-l {
        for j in 0 ... m-l {
            if findSqure(i, j,l) {
                ans = l*l
                break outerLoop
            }
        }
    }
}

print(ans)