#include "p2.h"
#include <algorithm>

long p2(){
    unsigned long sum=0,f1=0,f2=1;
    while(f2 <= 4000000){
	if (f2 % 2 == 0)
	    sum += f2;
	std::swap(f1,f2);
	f2 = f1+f2;
    }
    return sum;
}
