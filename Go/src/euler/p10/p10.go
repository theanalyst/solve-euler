package p10

import "euler/utils"

func Solution() int {
	sum := 5
	for i := 5; i < 2000000; i += 2 {
		if utils.IsPrime(i) {
			sum += i
		}
	}
	return sum
}
