import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var result: [Int] = []
    var progresses2: [Int] = progresses.reversed()
    var speeds2: [Int] = speeds.reversed()
    var days = 1
    while progresses2.count > 0 {
        var nowReleased = 0
        while progresses2.count > 0 &&  progresses2.last! + (days * speeds2.last!) >= 100 {
            nowReleased += 1
            progresses2.popLast()
            speeds2.popLast()
        }
        if nowReleased > 0 {
            result.append(nowReleased)
        }
        days += 1
    }
    return result
}

print(solution([93, 30, 55], [1, 30, 5]))
