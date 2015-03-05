package main

import (
	"euler/p1"
	"euler/p2"
	"euler/p3"
	"euler/p4"
	"euler/p5"
	"euler/p6"
	"testing"
)

func assertSolution(problem int, actual int, expected int, t *testing.T) {
	if expected != actual {
		t.Errorf("Wrong Solution for problem %d,expected %d got %d", problem, expected, actual)
	}
}

func TestSolutions(t *testing.T) {

	assertSolution(1, p1.Solution(), 233168, t)
	assertSolution(2, p2.Solution(), 4613732, t)
	assertSolution(3, p3.Solution(), 6857, t)
	assertSolution(4, p4.Solution(), 906609, t)
	assertSolution(5, p5.Solution(), 232792560, t)
	assertSolution(6, p6.Solution(), 25164150, t)
}
