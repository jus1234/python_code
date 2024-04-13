let N = Int(readLine()!)!
let M = Int(readLine()!)!
let x = readLine()!.split(separator: " ").map { Int(String($0))! }
var left = 0
var right = N
var result = 0

while left <= right {
    let mid = (left + right) / 2
    var flag = true
    var last = 0
    for l in x {
        if l - mid > last {
            flag = false
        }
        last = l + mid
    }
    if last < N {
        flag = false
    }
    
    if flag {
        result = mid
        right = mid - 1
    } else {
        left = mid + 1
    }
}

print(result)