import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var result = 1
    var clothesDic: [String: Int] = clothes.reduce([:]) { pre, now in
        var newPre = pre
        if newPre[now[1]] != nil {
            newPre[now[1]]! += 1
        } else {
            newPre[now[1]] = 1
        }
        return  newPre
    }

    clothesDic.forEach { key, value in
        result *= (value + 1)
    }
    
    return result - 1
}