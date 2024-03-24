print_mat:
  # Argumentos
  # $a0 - Dirección base de matriz de trabajo
  # $a1 - Número de filas
  # $a2 - Número de columnas
  # $a3 - Índice fila inicial
  # $t0 - Filas impresas
  # $t1 - Índice columna

  # Imprimir dimensiones

  # Imprimir elementos
  # Verificar que no se han impreso todas las filas
  la $t4, mat1

  lw $t6, 0($t4)
  beq $t0, $t6, print_mat_fin
  lw $t7, 4($t4)

  li $v0, 1
  move $a0, $t6
  syscall

  li $v0, 1
  move $a0, $t7
  syscall

  print_row: 
  mul $t2, $t0, $a2
  add $t2, $t2, $t1
  mul $t2, $t2, sizeF
  add $t3, $t4, $t2
  addi $t3, $t3, 8

  l.s $f12, 0($t3)
  li $v0, 2
  syscall

  li $v0, 11
  li $a0, 32
  syscall

  addi $t1, $t1, 1
  bgt $t1, $t7, next_row 
  j print_row

  next_row: 
  move $t1, $zero
  addi $t0, $t0, 1
  j print_mat

  
print_mat_fin:

  jr $ra # Regresar al invocante de la función