package p3

import "euler/utils"

func Solution() int {
	n := 600851475143
	sl := utils.PrimeFactors(n)
	return sl[len(sl)-1]
}
