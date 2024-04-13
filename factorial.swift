func factorial(_ n: Int) {
	if n == 1 { // base case
		return 1
	} else { // recursive case
		return n * factorial(n - 1)
	}
}