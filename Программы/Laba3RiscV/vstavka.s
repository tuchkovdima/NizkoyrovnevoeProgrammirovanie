#vstavka
.text
vstavka:
.global vstavka
#a2=1
  li a2, 1
#цикл
loop1:
#если i>длинны  массива переход в строку 43
  bgeu a2, a1, loop_exit
  slli a5, a2, 2
  add a5, a0, a5
  lw t1, -4(a5)
#элемент вставки
  lw t0, 0(a5)
  mv t2, a2
#если элемент вставки > массива j
  bgeu t0, t1, loop_exit3
  
loop2:
  slli t3, t2, 2
  add t3, a0, t3
#масссив j  
  lw t6, -4(t3)
  beqz t2, loop_exit2
  bgeu t0, t6, loop_exit2
#записываем массив j+1 в t6  
  sw t6, 0(t3)
#j-1
  addi t2, t2, -1
#сохранение массива j+1  
  mv t5, t3
#переход в начало  
  jal zero, loop2
  
loop_exit2:
  sw t0, -4(t5)
  
loop_exit3:
  addi a2, a2, 1
#переход на строку 8  
  jal zero, loop1
loop_exit:
   ret