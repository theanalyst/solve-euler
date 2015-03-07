package p8

import (
	"io/ioutil"
	"strconv"
	"strings"
)

func parseTextFile(filename string) []int {
	dat, err := ioutil.ReadFile(filename)
	if err != nil {
		panic(err)
	}
	lst := make([]int, len(dat))
	lines := strings.Split(string(dat), "\n")
	i := 0
	for _, val := range lines {
		if val != "" {
			line := strings.Split(val, "")
			for _, v := range line {
				n, err := strconv.Atoi(v)
				if err == nil {
					lst[i] = n
				}
				i++
			}
		}
	}
	return lst
}

func productSlice(lst []int, start int, end int) int {
	prod := 1
	for i := start; i < end; i++ {
		prod *= lst[i]
	}
	return prod
}

func Solution() int {
	lst := parseTextFile("../../../etc/p8.txt")
	size := len(lst)
	max := 0
	for i := 0; i < size-13; i++ {
		m := productSlice(lst, i, i+13)
		if m > max {
			max = m
		}
	}
	return max
}
