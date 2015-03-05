package utils

import "math"

func PrimeFactors(n int) []int {
	primefactors := make([]int, 0)
	ul := int(math.Sqrt(float64(n)))
	for i := 2; i <= ul; i++ {
		if n%i == 0 {
			primefactors = append(primefactors, i)
			n = n / i
		}
	}
	return primefactors
}

func GCD(a int, b int) int {
	if b == 0 {
		return a
	} else {
		return GCD(b, a%b)
	}
}

func LCM(a int, b int) int {
	return a * b / GCD(a, b)
}
