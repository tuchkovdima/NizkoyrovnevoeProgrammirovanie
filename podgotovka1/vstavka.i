# 1 "vstavka.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "vstavka.c"
# 1 "vstavka.h" 1


int sorting_by_insertion(int *array, int array_lend);
# 2 "vstavka.c" 2
int sorting_by_insertion(int *array, int array_lend){
    int k;
    int save_element;
    int i;
      for(i=1; i<array_lend; i++){
        k =i;

        while(k>0 && array[k-1]>array[k]){
            save_element = array[k-1];
            array[k-1] = array[k];
            array[k] = save_element;
            k -= 1;

        }
}
return array[k];
}
