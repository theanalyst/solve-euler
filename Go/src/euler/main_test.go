package main

import (
	"testing"
	"euler/p1"
	"euler/p2"
)

func assertSolution(problem int,actual int,expected int, t *testing.T){
	if expected != actual {
		t.Errorf("Wrong Solution for problem %d,expected %d got %d", problem,expected,actual) 
	}
}


func TestSolutions(t *testing.T){

	assertSolution(1,p1.Solution(),233168,t)
	assertSolution(2,p2.Solution(),4613732,t)
}
	
