import Foundation

let N = Int(readLine()!)!
var budgets = readLine()!.split(separator: " ").map { Int($0)! }
var total = Int(readLine()!)!

if budgets.reduce(0, +) <= total {
   print(budgets.reduce(into: 0) { $0 = $0 > $1 ? $0 : $1 })
} else {
   var low = 1
   var max = budgets.reduce(into: 0) { $0 = $0 > $1 ? $0 : $1 }
   var mid = (low + max) / 2
   
   while low <= max {
       let sum = budgets.map { budget in
           return budget > mid ? mid : budget
       }.reduce(0, +)
       
       if sum > total {
           max = mid - 1
       } else {
           low = mid + 1
       }
       
       mid = (max + mid) / 2
   }
   print(mid)
}