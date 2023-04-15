#include <stdio.h>
#include "vstavka.h"
int main(){
    int array[5] = {5,3,1,4,2};
    int array_lend = 5;
    int k;
    int save_element;

    int i;

  sorting_by_insertion(array, array_lend);

    for(i=0; i<array_lend; i++)
    printf("%d ", array[i]);

 }