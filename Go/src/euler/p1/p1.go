package p1

func Solution() int {
	sum := 0
	for x := 1; x <= 999; x++ {
		if x%3 == 0 || x%5 == 0 {
			sum += x
		}
	}
	return sum
}
