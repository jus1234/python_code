//
//  main.swift
//  swift_code_test
//
//  Created by 장우석 on 11/30/23.
//

import Foundation

func solution1(_ sequence:[Int], _ k:Int) -> [Int] {
    var answer: [Int] = []
    let size: Int = sequence.count
    let idx: Int = size - 1
    var dp: [[Int]] = []
    var nowLen: Int = size
    var nowStart: Int = 0
    for i in 0...idx {
        dp.append([])
        if sequence[i] > k {
            continue
        }
        dp[i] = [Int](repeating: 0, count: size)
        var last: Int = nowLen == size ? idx : i + nowLen
        last = idx < last ? idx : last
        for j in i...last {
            if i == j {
                dp[i][j] = sequence[i]
            }
            if i < j {
                dp[i][j] = dp[i][j - 1] + sequence[j]
            }
            if dp[i][j] == k {
                if nowLen > j - i {
                    nowLen = j - i
                    nowStart = i
                    answer = [i, j]
                }
                if nowLen == j - i && nowStart > i {
                    nowLen = j - i
                    nowStart = i
                    answer = [i, j]
                }
            }
            if dp[i][j] >= k {
                break
            }
        }
    }
    return answer
}

func solution(_ sequence:[Int], _ k:Int) -> [Int] {
    let size: Int = sequence.count
    var answer: [Int] = [size, size]
    var nowLen: Int = size
    var p1: Int = 0
    var p2: Int = 0
    var now: Int = sequence[0]
    while p1 < size && p2 < size {
        if now == k {
            if nowLen > p2 - p1 {
                nowLen = p2 - p1
                answer = [p1, p2]
            }
            if nowLen == p2 - p1 && answer[0] > p1 {
                nowLen = p2 - p1
                answer = [p1, p2]
            }
            now -= sequence[p1]
            p1 += 1
        } else if now > k {
            now -= sequence[p1]
            p1 += 1
        } else {
            p2 += 1
            if p2 < size {
                now += sequence[p2]
            }
        }
        if p1 == p2 {
            now = sequence[p1]
        }
    }
    return answer
}

print(solution([1, 2, 3, 4, 5], 7))
print(solution([1, 1, 1, 2, 3, 4, 5], 5))
print(solution([2, 2, 2, 2, 2], 6))