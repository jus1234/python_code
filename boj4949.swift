while let str: String = readLine() {
    let bracketDic: Dictionary<String, String> = [")": "(", "]": "["]
    let openBracketArr: Array<String> = ["(", "["]
    let closeBracketArr: Array<String> = [")", "]"]
    var stack: Array<String> = []
    var flag: Bool = true
    
    for char in str {
        let str = String(char)
        if openBracketArr.contains(str) {
            stack.append(str)
        } else if closeBracketArr.contains(str) {
            if let openBracket = stack.popLast() {
                if openBracket != bracketDic[str]! {
                    flag = false
                    break
                }
            } else {
                flag = false
                break
            }
        }
    }
    let res = flag && stack.isEmpty ? "yes" : "no"
    print(res)
}