#include "p1.h"

long p1()
{
    unsigned long sum=0;
    for(int i=0;i<1000;i++){
	if(i%3 == 0 || i%5 ==0)
	    sum+=i;
    }

    return sum;
}
