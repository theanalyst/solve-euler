package p7

import "math"

// Understand goroutines and come back here
func is_prime(n int) bool {
	for i := 3; i <= int(math.Sqrt(float64(n))); i = i + 2 {
		if int(n)%i == 0 {
			return false
		}
	}
	return true
}

func Solution() int {
	// We already counted for 2
	n := 1
	i := 1
	for n < 10001 {
		i = i + 2
		if is_prime(i) {
			n++
		}
	}
	return i
}
