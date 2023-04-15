#include <stdio.h>
#include <stdlib.h>
#include "vstavka.h"

int bubble_sorting(int *array, int array_lend){
    
    int out;
	int in;
	int q;
	
	for (out = array_lend - 1; out>0; out--){ 
		for (in = 0; in < out; in++){ 
			if(array[in]>array[in+1]){
				q = array[in];
				array[in]= array[in+1];
				array[in+1] = q;
				
			}
		}
	}
}