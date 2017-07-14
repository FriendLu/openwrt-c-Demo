#include<stdio.h>
#include "max.h"
#include "min.h"

int main(){
	int a = 33;
	int b = 30;

    printf("hello world!\n");
	printf("the max is %d.\n", max(a, b));
	printf("the min is %d.\n", min(a, b));

    return 0;
}
