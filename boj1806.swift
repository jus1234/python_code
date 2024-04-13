let NS = readLine()!.split(separator: " ").map { Int($0)! }
let N = NS[0]
let S = NS[1]
var res = N

let seq = readLine()!.split(separator: " ").map { Int($0)! }
var dp: [Int] = []
var found = false
for i in 0...N - 1 {
   if i == 0 {
       let now = seq[i]
       if now == S {
           found = true
           res = 1
           break
       }
       dp.append(now)
       continue
   }
   
   let now = dp[i - 1] + seq[i]
   dp.append(now)
   
   var start = 1
   var temp = now
   while start < i {
       temp = now - dp[i - start]
       if temp > S {
           break
       }
       if temp == S {
           res = res > start ? start : res
           found = true
           break
       }
       start += 1
   }
}

if found {
   print(res)
} else {
   print(0)
}
