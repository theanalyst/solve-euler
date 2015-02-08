package p2

import "testing"

func TestSolution(t *testing.T){
	ans := Solution()
	if ans != 4613732 {
		t.Errorf("Wrong Solution for P2")
	}
}
