func factorial(_ n: Int) -> Int {
    if n == 0 {
        return 1
    }
    if n == 1 {
        return 1
    } else {
        return n * factorial(n - 1)
    }
}

print(factorial(Int(readLine()!)!))