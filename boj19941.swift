import Foundation

let NK = readLine()!.split(separator: " ").map { Int($0)! }
let N = NK[0]
let K = NK[1]
var table: Array<String> = readLine()!.map { String($0) }
var res = 0

for i in 0..<table.count {
    if table[i] == "H" {
        let start = (i - K)<=0 ? 0 : i - K
        let last = (i + K)>=(table.count - 1) ? table.count - 1 : i + K
        
        for j in start...last {
            if table[j] == "P" {
                res += 1
                table[j] = "X"
                break
            }
        }
    }
}

print(res)