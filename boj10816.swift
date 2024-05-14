let N = Int(readLine()!)!
let nList = readLine()!.split(separator: " ").map { Int($0)! }
let M = Int(readLine()!)!
var mList = readLine()!.split(separator: " ").map { Int($0)! }
var mDic = mList.reduce(into: [:]) { partialResult, now in
    partialResult[now] = 0
}
nList.forEach { n in
    if mDic.keys.contains(n) {
        mDic[n]! += 1
    }
}
let result = mList.reduce(into: "") { partialResult, now in
    partialResult += String(mDic[now]!) + " "
}
print(result)