import Foundation

func solution(_ cap:Int, _ n:Int, _ deliveries:[Int], _ pickups:[Int]) -> Int64 {
    let deliveries = deliveries
    let pickups = pickups
    var d = 0
    var p = 0
    var distance = 0
    var i = n-1
    
    while i >= 0 {
        if deliveries[i] == 0 && pickups[i] == 0 {
            i -= 1
            continue
        }
        
        if d < deliveries[i] || p < pickups[i] {
            d += cap
            p += cap
            distance += (i+1)
            continue
        }
        
        d -= deliveries[i]
        p -= pickups[i]
        i -= 1
    }
    
    return Int64(distance) * 2
}
print(solution150369(4, 5, [1, 0, 3, 1, 2], [0, 3, 0, 4, 0]))
print(solution150369(2, 7, [1, 0, 2, 0, 1, 0, 2], [0, 2, 0, 1, 0, 2, 0]))