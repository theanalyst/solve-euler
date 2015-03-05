package p6

func Solution() int {
	sum1, sum2 := 0, 0
	for i := 0; i < 101; i++ {
		sum1 += i
		sum2 += i * i
	}
	return sum1*sum1 - sum2
}
