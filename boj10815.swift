let N = Int(readLine()!)!
let nSet: Set<Int> = readLine()!.split(separator: " ").reduce(into: Set()) { partialResult, now in
    partialResult.insert(Int(now)!)
}

let M = Int(readLine()!)!
let result = readLine()!.split(separator: " ").reduce(into: "") { partialResult, now in
    partialResult += (nSet.contains(Int(now)!) ? "1" : "0") + " "
}
print(result)