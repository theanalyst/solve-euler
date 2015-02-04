package p1

import "testing"

func TestSolution(t *testing.T){
	ans := Solution()
	if ans != 233168 {
		t.Errorf("Wrong Solution for P1")
	}
}
