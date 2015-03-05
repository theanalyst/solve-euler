package p5

import "euler/utils"

func Solution() int {
	lcm := 1
	for i := 2; i <= 20; i++ {
		lcm = utils.LCM(lcm, i)
	}

	return lcm
}
