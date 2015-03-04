package p2

func Solution() int {
	sum := 0
	f1 := 0
	f2 := 1
	for f2 <= 4000000 {
		if f2%2 == 0 {
			sum += f2
		}
		f1, f2 = f2, f1+f2
	}
	return sum
}
