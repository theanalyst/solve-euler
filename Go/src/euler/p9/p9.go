package p9

// This solution is more mathematical than programmable
// m**2 - n**2, 2mn, m**2 + n**2 generates pythagorean triplets

func checkTriples(m int, n int) bool {
	return 2*m*(m+n) == 1000
}

func productTriples(m int, n int) int {
	return (m*m - n*n) * 2 * m * n * (m*m + n*n)
}

func Solution() int {
	p := 0
	for i := 10; i < 25; i++ {
		for j := 0; j < i; j++ {
			if checkTriples(i, j) {
				p = productTriples(i, j)
			}
		}
	}
	return p
}
