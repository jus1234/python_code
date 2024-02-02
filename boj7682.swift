func solution(_ board: String) -> Bool {
    let xoDic: Dictionary<String, String> = ["X": "O", "O": "X", ".": "."]
    var res: Bool = true
    var oCnt: Int = 0
    var xCnt: Int = 0
    var winCnt: Int = 0
    let direc: [[Int]] = [[0, 1], [1, 0], [1, 1], [-1, 1]]
    let oxDic: Dictionary<String, () -> ()> = ["O" : { oCnt += 1 }, "X" : { xCnt += 1 }]
    var oWinCnt: Int = 0
    var xWinCnt: Int = 0
    let winDic: Dictionary<String, () -> ()> = ["O" : { oWinCnt += 1 }, "X" : { xWinCnt += 1 }]
    var strBoard: [[String]] = []
    var idx = 0
    for i in 0...2 {
        strBoard.append([])
        for _ in 0...2 {
            strBoard[i].append(xoDic[String(board[board.index(board.startIndex, offsetBy: idx)])]!)
            idx += 1
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
        res = false
    }
    if xCnt > oCnt {
        res = false
    }
    if winCnt > 1 {
        if oWinCnt != 2 || oCnt != 5 || xCnt != 4 {
            res = false
        }
    }
    if oWinCnt >= 1 && oCnt == xCnt {
        res = false
    }
    if xWinCnt >= 1 && oCnt > xCnt {
        res = false
    }
    
    if winCnt < 1 && oCnt != 5 && xCnt != 4 {
        res = false
    }
    return res
}

while true {
    let input = readLine()!
    if input == "end" {
        break
    }
    
    if solution(input) {
        print("valid")
    } else {
        print("invalid")
    }
}