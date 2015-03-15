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

func IsPrime(n int) bool {
	switch {
	case n == 2 || n == 3:
		return true
	case n%2 == 0: // Filtering out even no
		return false
	case (n+1)%6 == 0 || (n-1)%6 == 0:
		// Every prime no = 6k ± 1
		for i := 3; i <= int(math.Sqrt(float64(n))); i += 2 {
			if n%i == 0 {
				return false
			}
		}
		return true
	default:
		return false
	}
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
