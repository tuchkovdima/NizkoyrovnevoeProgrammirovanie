#main
.text# указатель на основную часть кода
main:
.globl main
#массив
  la a0, array
  la a1, array_length
  lw a1, 0(a1)
#выделение памяти в стеке
  addi sp, sp, -16
#сохраняем
  sw ra, 12(sp)
  call vstavka
#восстанавливаем
  lw ra, 12(sp)
#освобождаем память в стеке
  addi sp, sp, 16
  li a0, 0
  ret
#длина массива
.rodata
  array_length:
    .word 10
#массив    
.data
  array:
    .word 5, 7, 8, 10, 4, 2, 3, 1, 6, 9