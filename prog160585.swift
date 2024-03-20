import Foundation

func solution(_ board:[String]) -> Int {
    var res: Int = 1
    var oCnt: Int = 0
    var xCnt: Int = 0
    var winCnt: Int = 0
    let direc: [[Int]] = [[0, 1], [1, 0], [1, 1], [-1, 1]]
    let oxDic: Dictionary<String, () -> ()> = ["O" : { oCnt += 1 }, "X" : { xCnt += 1 }]
    var oWinCnt: Int = 0
    var xWinCnt: Int = 0
    let winDic: Dictionary<String, () -> ()> = ["O" : { oWinCnt += 1 }, "X" : { xWinCnt += 1 }]
    var strBoard: [[String]] = []
    for i in 0...2 {
        strBoard.append([])
        for j in 0...2 {
            let str: String = board[i]
            strBoard[i].append(String(str[str.index(str.startIndex, offsetBy: j)]))
        }
    }
    for i in 0...2 {
        for j in 0...2 {
            let now: String = strBoard[i][j]
            if now != "." {
                oxDic[now]!()
                for d in direc {
                    var nowCnt: Int = 1
                    let r: Int = d[0]
                    let c: Int = d[1]
                    var ir: Int = i + r
                    var jc: Int = j + c
                    while 0...2 ~= ir && 0...2 ~= jc {
                        let next: String = strBoard[ir][jc]
                        if now == next {
                            nowCnt += 1
                        } else {
                            break
                        }
                        ir += r
                        jc += c
                    }
                    if nowCnt == 3 {
                        winCnt += 1
                        winDic[now]!()
                    }
                }
            }
        }
    }
    if oCnt - xCnt > 1 {
        res = 0
    }
    if xCnt > oCnt {
        res = 0
    }
    if winCnt > 1 {
        if oWinCnt != 2 || oCnt != 5 || xCnt != 4 {
            res = 0
        }
    }
    if oWinCnt == 1 && oCnt == xCnt {
        res = 0
    }
    if xWinCnt >= 1 && oCnt > xCnt {
        res = 0
    }
    return res
}

print(solution4441(["O.X", ".O.", "..X"]))
print(solution4441(["OOO", "...", "XXX"]))
print(solution4441(["...", ".X.", "..."]))
print(solution4441(["...", "...", "..."]))
print(solution4441([".XO", ".OX", "OX."]))
print(solution4441(["OXX", "XOX", "OOO"]))