import Foundation

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    for i in 0...(nums.count - 3) {
        for j in (i + 1)...(nums.count - 2) {
            for k in (j + 1)...(nums.count - 1){
                var m: Int = nums[i] + nums[j] + nums[k]
                var isPrime: Bool = true
                for n in 2...(m/2) {
                    if m % n == 0 {
                        isPrime = false
                        break
                    }
                }
                if isPrime {
                    answer += 1
                }
            }
        }
    }

    return answer
}