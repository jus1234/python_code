import Foundation

// ABCDEFGHIJKLMNOPQRSTUVWXYZ
let alphaDic = ["A":0, "B":1, "C":2 , "D":3, "E":4, "F": 5, "G": 6, "H":7, "I":8, "J":9, "K": 10, "L":11, "M":12, "N":13, "O":12, "P":11, "Q":10, "R":9, "S":8, "T":7, "U":6, "V":5, "W":4, "X":3, "Y":2, "Z":1]
func solution(_ name:String) -> Int {
    var res: Int = 0
    res -= 1
    var aCnt = 0
    var pre: String = ""
    var aaCnt = 0
    for a in name {
        res += 1
        res += alphaDic[String(a)]!
        if String(a) == "A" {
            aCnt += 1
        }
        if String(a) == "A" && pre == "A" {
            aaCnt += 1
        }
        
        pre = String(a)
    }
    if aCnt > aaCnt + 1 {
        res += 1
    }
    
    return res - aCnt
}

print(solution42860("JEROEN"))
print(solution42860("JAZ"))
print(solution42860("JAN"))
print(solution42860("KBBABA")) // 17
print(solution42860("KAABBB"))