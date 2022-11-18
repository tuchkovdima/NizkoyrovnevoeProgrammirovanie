#setup
.text
__start:#начало выполнения программы
.globl __start
 call main
finish:
#a1=a0
 mv a1, a0
 #a0=17
 li a0, 17
 #завершение программы
 ecall