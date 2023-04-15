#include <stdio.h>
#include "vstavka.h"
int main() {
	
	int array[6] = {4,6,2,8,5,10};
	size_t array_lend = sizeof(array) / sizeof(array[0]);
	int out;
    bubble_sorting(array, array_lend);
	for(out=0; out<array_lend; out++){
	printf("%d ", array[out]);
	}
	return 0;	
}
