package p4

func reversed(n int) int {
	r := 0
	for n != 0 {
		r = r * 10
		r = r + n%10
		n = n / 10
	}
	return r
}

func Solution() int {
	max := 0
	for i := 101; i <= 999; i++ {
		for j := 101; j <= 999; j++ {
			if i*j == reversed(i*j) && i*j > max {
				max = i * j
			}
		}
	}
	return max
}
