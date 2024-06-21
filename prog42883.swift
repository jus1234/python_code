import Foundation

func solution(_ number:String, _ k:Int) -> String {
    // k번 만큼 맨 앞에서부터 바로 뒤보다 작은 수를 제거
    // var dupK = k
    // var numberArr: [Int] = number.map { Int(String($0))! }
    // while dupK > 0 {
    //     dupK -= 1
    //     var len = numberArr.count
    //     var removeIndex = len - 1
    //     for i in 0..<len {
    //         if i + 1 < len {
    //             if numberArr[i] < numberArr[i + 1] {
    //                 removeIndex = i
    //                 break
    //             }
    //         }
    //     }
    //     let front: [Int] = Array(numberArr[..<removeIndex])
    //     let back: [Int] = Array(numberArr[(removeIndex+1)...])
    //     numberArr = front + back
    // }
    // let result = numberArr.reduce("") { $0 + "\($1)" }
    // return result
    var answer = ""

    var _k:Int = k // k를 감소시키기 위해 변수로 선언
    let numbers:[Character] = Array(number) // swift 문자열은 서브스크립트를 제공하지 않기 때문에 편의상 배열로 변환
    let n:Int = numbers.count
    var stack:[Character] = []
    
    for (i,num) in numbers.enumerated() {
    	// 스택에서 값을 빼내는 반복문
        while !stack.isEmpty && _k > 0 && 
        stack.last!.wholeNumberValue! < num.wholeNumberValue! {
            stack.removeLast()
            _k -= 1
        }
        // 정해진 길이를 넘지 않는다면 stack에 append
        if stack.count < n-k {
            stack.append(num)
        }
    }
    return String(stack)
}