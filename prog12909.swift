import Foundation

func solution(_ s:String) -> Bool
{
    var stack: [String] = []
    var isRight: Bool = true
    
    for a in s {
        let b: String = String(a)
        if a == "(" {
            stack.append(b)
        } else {
            guard let _ =  stack.popLast() else {
                isRight = false
                break
            }
        }
    }
    if stack.count > 0 {
        isRight = false
    }
    return isRight
}