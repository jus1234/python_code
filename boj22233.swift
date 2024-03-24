let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NM[0]
let M = NM[1]
var keywords: Set<String> = []
for _ in 0..<N {
    keywords.insert(readLine()!)
}
for _ in 0..<M {
    readLine()!.split(separator: ",").forEach { keyword in
        let stringKeyword = String(keyword)
        if keywords.contains(stringKeyword) {
            keywords.remove(stringKeyword)
        }
    }
    print(keywords.count)
}