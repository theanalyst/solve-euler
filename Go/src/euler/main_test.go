package main

import (
	"euler/p1"
	"euler/p10"
	"euler/p2"
	"euler/p3"
	"euler/p4"
	"euler/p5"
	"euler/p6"
	"euler/p7"
	"euler/p8"
	"euler/p9"
	"io/ioutil"
	"strconv"
	"strings"
	"testing"
)

func assertSolution(problem int, actual int, expected int, t *testing.T) {
	if expected != actual {
		t.Errorf("Wrong Solution for problem %d,expected %d got %d", problem, expected, actual)
	}
}

func TestSolutions(t *testing.T) {
	m := parseTextFile("../../../solutions.txt")
	assertSolution(1, p1.Solution(), m["p1"], t)
	assertSolution(2, p2.Solution(), m["p2"], t)
	assertSolution(3, p3.Solution(), m["p3"], t)
	assertSolution(4, p4.Solution(), m["p4"], t)
	assertSolution(5, p5.Solution(), m["p5"], t)
	assertSolution(6, p6.Solution(), m["p6"], t)
	assertSolution(7, p7.Solution(), m["p7"], t)
	assertSolution(8, p8.Solution(), m["p8"], t)
	assertSolution(9, p9.Solution(), m["p9"], t)
	assertSolution(10, p10.Solution(), m["p10"], t)

}

func parseTextFile(filename string) map[string]int {
	dat, err := ioutil.ReadFile(filename)
	if err != nil {
		panic(err)
	}
	lines := strings.Split(string(dat), "\n")
	m := make(map[string]int)
	for _, val := range lines {
		if val != "" {
			tmp := strings.Split(strings.TrimSpace(val), " ")
			v, err := strconv.Atoi(tmp[1])
			if err == nil {
				m[tmp[0]] = v
			}

		}
	}
	return m
}
