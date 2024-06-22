func solution(_ game_board:[[Int]], _ table:[[Int]]) -> Int {
    let N = table.count
    let dir = [(0,1),(0,-1),(1,0),(-1,0)]
    
    func blockList() -> [[(Int,Int)]] {
        var check = Array(repeating: Array(repeating: false, count: N ), count: N )
        var blockList: [[(Int,Int)]] = []
        for i in 0..<N {
            for j in 0..<N {
                if !check[i][j], table[i][j] == 1 {
                    check[i][j] = true
                    var list: [(Int,Int)] = []
                    var queue = [(i,j)]
                    while !queue.isEmpty {
                        let f = queue.removeFirst()
                        list.append(f)
                        for k in 0..<4 {
                            let n = (f.0+dir[k].0, f.1+dir[k].1)
                            if n.0>=N||n.1>=N||n.0<0||n.1<0||check[n.0][n.1]||table[n.0][n.1] == 0 { continue }
                            check[n.0][n.1] = true
                            queue.append((n))
                        }
                    }
                    let f = list.first!
                    blockList.append(list.map{ ($0.0 - f.0, $0.1 - f.1)})
                }
            }
        }
        return blockList
    }
    
    func rotateBlockList() -> [[[(Int, Int)]]] {
        return blockList().map{ block -> [[(Int, Int)]] in
            var list: [[(Int,Int)]] = []
            list.append(block)
            var t = block.map{(-$0.1, $0.0)}
            list.append(t.map{ ($0.0 - t.first!.0, $0.1 - t.first!.1)})
            t = block.map{($0.1, -$0.0)}
            list.append(t.map{ ($0.0 - t.first!.0, $0.1 - t.first!.1)})
            t = block.map{(-$0.0, -$0.1)}
            list.append(t.map{ ($0.0 - t.first!.0, $0.1 - t.first!.1)})
            return list
        }
    }
    
    let blocks = rotateBlockList()
    var board = game_board
    var blockCheck = Array(repeating: false, count: blocks.count)
    
    func find() -> Int {
        var sum = 0
        for i in 0..<N {
            for j in 0..<N {
                for l in 0..<blocks.count {
                    if blockCheck[l] { continue }
                    for k in 0..<4 {
                        if board[i][j] == 0 {
                            let block = blocks[l][k]
                            var isFaile = false
                            
                            // 우선 넣어본다.
                            block.forEach {
                                let n = (i+$0.0, j + $0.1)
                                if n.0>=N||n.1>=N||n.0<0||n.1<0{
                                    isFaile = true
                                    return
                                } else if board[n.0][n.1] >= 1 {
                                    isFaile = true
                                    board[n.0][n.1] += 1
                                } else {
                                    board[n.0][n.1] += 1
                                }
                            }
     
                            // 주변에 여백이있는지 확인한다.
                            block.forEach {
                                let n = (i+$0.0, j + $0.1)
                                if n.0>=N||n.1>=N||n.0<0||n.1<0 { return }
                                
                                for m in 0..<4 {
                                    let nn = (n.0+dir[m].0, n.1+dir[m].1)
                                    if nn.0>=N||nn.1>=N||nn.0<0||nn.1<0 {
                                        continue
                                    }
                                    if board[nn.0][nn.1] == 0 {
                                        isFaile = true
                                        break
                                    }
                                }
                            }
                            
                            // 실패했다면, 다시 넣은 도형을 걷어준다.
                            if isFaile {
                                block.forEach {
                                    let n = (i+$0.0, j + $0.1)
                                    if n.0>=N||n.1>=N||n.0<0||n.1<0{ return }
                                    board[n.0][n.1] -= 1
                                }
                                continue
                            } else {
                                blockCheck[l] = true
                                sum+=block.count
                                break
                            }
                        }
                    }
                }
            }
        }
        return sum
    }

    return find()
}