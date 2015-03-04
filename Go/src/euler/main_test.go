package main

import (
	"euler/p1"
	"euler/p2"
	"euler/p3"
	"euler/p4"
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
}
