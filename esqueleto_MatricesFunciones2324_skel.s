#// Solución PR3 curso 23-24
#// Manejo de matrices con funciones
#
#
#typedef struct {
#  int nFil;
nFil = 0	# El desplazamiento al campo dentro de la estructura
#  int nCol;
nCol = 4	# El desplazamiento al campo dentro de la estructura
#  float elementos[];
elementos = 8	# El desplazamiento al campo dentro de la estructura
#} structMat;
#

sizeF = 4	# Numero de bytes de un float
LF = 10		# Caracter salto de línea
	.data
#structMat mat1 {
#  6,
#  6,
#  {
#    11.11, 12.12, 13.13, 14.14, 15.15, 16.16,
#    21.21, 22.22, 23.23, 24.24, 25.25, 26.26,
#    31.31, 32.32, 33.33, 34.34, 35.35, 36.36,
#    41.41, 42.42, 43.43, 44.44, 45.45, 46.46,
#    51.51, 52.52, 53.53, 54.54, 55.55, 56.56,
#    61.61, 62.62, 63.63, 64.64, 65.65, 66.66
#  }
#};
mat1:	.word	6
	.word	6
	.float	11.11, 12.12, 13.13, 14.14, 15.15, 16.16,
	.float	21.21, 22.22, 23.23, 24.24, 25.25, 26.26,
	.float	31.31, 32.32, 33.33, 34.34, 35.35, 36.36,
	.float	41.41, 42.42, 43.43, 44.44, 45.45, 46.46,
	.float	51.51, 52.52, 53.53, 54.54, 55.55, 56.56,
	.float	61.61, 62.62, 63.63, 64.64, 65.65, 66.66

#structMat mat2 {
#  7,
#  10,
#  {
#    -36.886, -58.201,  78.671,  19.092, -50.781,  33.961, -59.511, 12.347,  57.306,  -1.938,
#    -86.858, -81.852,  54.623, -22.574,  88.217,  64.374,  52.312, 47.918, -83.549,  19.041,
#     4.255, -36.842,  82.526,  27.394,  56.527,  39.448,  18.429, 97.057,  76.933,  14.583,
#    67.79 ,  -9.861, -96.191,  32.369, -18.494, -43.392,  39.857, 80.686, -36.87 , -17.786,
#    30.073,  89.938,  -6.889,  64.601, -85.018,  70.559, -48.853, -62.627, -60.147,  -5.524,
#    84.323, -51.718,  93.127, -10.757,  32.119,  98.214,  69.471, 73.814,   3.724,  57.208,
#    -41.528, -17.458, -64.226, -71.297, -98.745,   7.095, -79.112, 33.819,  63.531, -96.181
#  }
#};
mat2:	.word	7
	.word	10
	.float	-36.886, -58.201,  78.671,  19.092, -50.781,  33.961, -59.511, 12.347,  57.306,  -1.938,
	.float	-86.858, -81.852,  54.623, -22.574,  88.217,  64.374,  52.312, 47.918, -83.549,  19.041,
	.float	4.255, -36.842,  82.526,  27.394,  56.527,  39.448,  18.429, 97.057,  76.933,  14.583,
	.float	67.79 ,  -9.861, -96.191,  32.369, -18.494, -43.392,  39.857, 80.686, -36.87 , -17.786,
	.float	30.073,  89.938,  -6.889,  64.601, -85.018,  70.559, -48.853, -62.627, -60.147,  -5.524,
	.float	84.323, -51.718,  93.127, -10.757,  32.119,  98.214,  69.471, 73.814,   3.724,  57.208,
	.float	-41.528, -17.458, -64.226, -71.297, -98.745,   7.095, -79.112, 33.819,  63.531, -96.181

# structMat mat3 {
#   1,
#   8,
#   {
#     -36.52,  35.3 ,  79.05, -58.69, -55.23, -19.44, -88.63, -93.61
#   }
# };
mat3:	.word	1
	.word	8
	.float	-36.52,  35.3 ,  79.05, -58.69, -55.23, -19.44, -88.63, -93.61

# structMat mat4 {
#   16,
#   1,
#   { -90.57, -65.11, -58.21, -73.23, -89.38, -79.25,  16.82,  66.3 ,
#     -96.14, -97.16, -24.66,   5.27, -33.5 , -13.09,  27.13, -74.83 }
# };
mat4:	.word	16
	.word	1
	.float	-90.57, -65.11, -58.21, -73.23, -89.38, -79.25,  16.82,  66.3
	.float	-96.14, -97.16, -24.66,   5.27, -33.5 , -13.09,  27.13, -74.83

# structMat mat5 {
#   1,
#   1,
#   { 78.98 }
# };
mat5:	.word	1
	.word	1
	.float	78.98

# structMat mat6 {
#   0,
#   0,
#   { 0 }
# };
mat6:	.word	0
	.word	0
	.float	0.0

#float infinito = INFINITY;
infinito:	.word	0x7F800000

# Cadenas de caracteres
str_titulo:	.asciiz	"\nComienza programa manejo matrices con funciones\n"
str_menu:	.ascii	"(0) Terminar el programa\n"
		.ascii	"(1) Cambiar la matriz de trabajo\n"
		.ascii	"(3) Cambiar el valor de un elemento\n"
		.ascii	"(4) Intercambiar un elemento con su opuesto\n"
		.ascii	"(7) Encontrar el minimo\n"
		.asciiz	"\nIntroduce opción elegida: "
str_errorOpc:	.asciiz	"Error: opcion incorrecta\n"
str_termina:	.asciiz	"\nTermina el programa\n"
str_elijeMat:	.asciiz	"\nElije la matriz de trabajo (1..6): "
str_numMatMal:	.asciiz	"Numero de matriz de trabajo incorrecto\n"
str_errorFil:	.asciiz	"Error: dimension incorrecta.  Numero de fila incorrecto\n"
str_errorCol:	.asciiz	"Error: dimension incorrecta.  Numero de columna incorrecto\n"
str_indFila:	.asciiz	"\nIndice de fila: "
str_indCol:	.asciiz	"Indice de columna: "
str_nuevoValor:	.asciiz	"Nuevo valor para el elemento: "
str_valMin:	.asciiz	"\nEl valor minimo esta en ("
str_conValor:	.asciiz	") con valor "

str_matTiene:	.asciiz	"\n\nLa matriz tiene dimension "

    .text
##############################
##########Imprimir############
#########Argumentos###########
# $s0 = Dirección base de la matriz
# $s1 = nFil
# $s2 = nCol
# $s3 = Dirección base de los elementos de la matriz
# $s4 = Índice de la fila actual
# $s5 = Índice de la columna actual
# $t0 = Desplazamiento calculado para el elemento actual
# $a1 = Dirección del elemento actual a imprimir

print_mat:   
    # Imprimir la dimensión de la matriz

    addi $sp, $sp, -4
    sw $ra, 4($sp)

    li $v0, 4
    la $a0, str_matTiene
    syscall

    lw $s1, nFil($s0)
    li $v0, 1
    move $a0, $s1
    syscall

    li $v0, 11
    li $a0, 120
    syscall

    lw $s2, nCol($s0)
    li $v0, 1
    move $a0, $s2
    syscall

    addiu $s3, $s0, elementos
    li $v0, 11
    la $a0, LF
    syscall

    # Inicializar índices de filas y columnas
    move $s4, $zero

# Imprimir elementos de la matriz
print_while:  
    beq $s4, $s1, print_mat_fin   # Verificar que no se han impreso todas las filas

    move $s7, $zero    # Índice de columnas impresas

print_row:
    bge $s7, $s2, print_new_row   # Si $s4 >= $t1 imprimir nueva línea

    mul $t0, $s4, $s2    # $s7 = filas impresas * nº columnas
    add $t0, $t0, $s7     # $s7 += columna impresa
    mul $t0, $t0, sizeF   # $s7 *= tam_elemento
    add $a1, $s3, $t0

    lwc1 $f12, 0($a1)
    li $v0, 2
    syscall

    li $v0, 11
    la $a0, 32
    syscall

    addi $s7, $s7, 1 # Columna impresa += 1

    j print_row

print_new_row:

    li $v0, 11
    la $a0, LF
    syscall

    addi $s4, $s4, 1  # Fila impresa += 1

    j print_while

print_mat_fin:

    li $v0, 11
    la $a0, LF
    syscall

    lw $ra, 4($sp)
    addi $sp, $sp, 4
    jr $ra

change_mat:

    addi $sp, $sp, -8
    sw $ra, 4($sp)
    sw $a0, 0($sp)

    beq $a0, 1, selected_mat1
    beq $a0, 2, selected_mat2
    beq $a0, 3, selected_mat3
    beq $a0, 4, selected_mat4
    beq $a0, 5, selected_mat5
    beq $a0, 6, selected_mat6

selected_mat1:
    la $s0, mat1
    j change_mat_fin

selected_mat2:
    la $s0, mat2
    j change_mat_fin

selected_mat3:
    la $s0, mat3
    j change_mat_fin

selected_mat4:
    la $s0, mat4
    j change_mat_fin

selected_mat5:
    la $s0, mat5
    j change_mat_fin

selected_mat6:
    la $s0, mat6
    j change_mat_fin

change_mat_fin:

    lw $a0, 0($sp)
    lw $ra, 4($sp)
    addi $sp, $sp, 8
    jr $ra

mat_number_error:

  li $v0, 4
  la $a0, str_numMatMal
  syscall

  j menu_bucle

change_elto:
  # $a0 = Dirección base
  # $a1 = Índice de fila
  # $a2 = Índice de columna
  # $f20 = Nuevo valor

  lw $t0, nFil($a0)
  lw $t1, nCol($a0)
  addi $t2, $a0, elementos

  mul $t3, $a1, $t1
  addu $t3, $t3, $a2
  mul $t3, $t3, sizeF
  addu $t3, $t3, $t2

  swc1 $f12, 0($t3)


change_elto_fin:  
    
    jr $ra

swap:

    lwc1 $f4, 0($a0)
    lwc1 $f6, 0($a1)

    swc1 $f6, 0($a0)
    swc1 $f4, 0($a1)

swap_fin:
    jr $ra

intercambia:
    # $a0 = Matriz base
    # $a1 = Índice de fila
    # $a2 = Índice de columna
    # $t0 = nFil
    # $t1 = nCol
    lw $t0, nFil($a0)
    lw $t1, nCol($a0)
    addi $t2, $a0, elementos

    mul $t3, $a1, $t1
    addu $t3, $t3, $a2
    mul $t3, $t3, sizeF
    addu $t3, $t3, $t2

    # Calcular posición elemento opuesto
    sub $t4, $t0, $a1
    sub $t4, $t4, 1
    sub $t5, $t1, $a2
    sub $t5, $t5, 1

    mul $t6, $t4, $t1
    addu $t6, $t6, $t5
    mul $t6, $t6, sizeF
    addu $t6, $t6, $t2

    # Llamamos a función swap
    addi $sp, $sp, -4
    sw $ra, 0($sp)

    move $a0, $t3
    move $a1, $t6
    jal swap

    lw $ra, 0($sp)
    addi $sp, $sp, 4


intercambia_fin:

    jr $ra

find_min:
    # $a0 = Matriz base
    # $t0 = nFil
    # $t1 = nCol
    # $t2 = Dirección primer elemento

    lw $t0, nFil($a0)
    lw $t1, nCol($a0)
    addu $t2, $a0, elementos
    li $t3, -1
    li $t4, -1
    l.s $f4, infinito
    move $t5, $zero
    move $t6, $zero

    for_filas:
      bge $t5, $t0, end_for
      move $t6, $zero
    
    for_columnas:
      bge $t6, $t1, actualizar_fila

    # Calcular dirección elemento actual
    mul $t7, $t5, $t1
    addu $t7, $t7, $t6
    mul $t7, $t7, sizeF
    addu $t7, $t7, $t2

    lwc1 $f5, 0($t7)

    # Comparar
    c.lt.s $f5, $f4
    bc1f no_es_minimo

    # Actualizar mínimo y sus índices
    mov.s $f4, $f5
    move $t3, $t5
    move $t4, $t6

    no_es_minimo:
      addi $t6, $t6, 1
      j for_columnas

    actualizar_fila:
      addi $t5, $t5, 1
      j for_filas

    end_for:
      mov.s $f0, $f4
      move $a1, $t3
      move $a2, $t4

find_min_fin:

    jr $ra

main:

    li $v0, 4
    la $a0, str_titulo
    syscall

##############################
#######Inicialización#########
#########Argumentos###########
# $s0 = matriz de trabajo

    la $s0, mat1
  
##############################
##########Menú################

menu_bucle:

    move $a0, $s0
    jal print_mat
  
    li $v0, 11
    la $a0, LF
    syscall
  
    li $v0, 4
    la $a0, str_menu
    syscall
  
    li $v0, 5
    syscall
    move $t0, $v0
  
    # Comprobar la opción del usuario
    beq $t0, 0, end_program
    beq $t0, 1, select_change_mat
    beq $t0, 3, select_change_elto
    beq $t0, 4, select_intercambia
    beq $t0, 7, select_find_min

option_error:

    li $v0, 4
    la $a0, str_errorOpc
    syscall
  
    j menu_bucle

end_program:

    li $v0, 4
    la $a0, str_termina
    syscall

    li $v0, 10
    syscall

select_change_mat:

    li $v0, 4
    la $a0, str_elijeMat
    syscall

    li $v0, 5
    syscall
    move $a0, $v0

    bgt $a0, 6, mat_number_error
    blez $a0, mat_number_error 

    jal change_mat
    j menu_bucle

select_change_elto:

    li $v0, 4
    la $a0, str_indFila
    syscall

    li $v0, 5
    syscall
    move $s1, $v0   # $s1 = fila

    lw $t0, nFil($s0)
    bge $s1, $t0, error_dim_fila
    bltz $s1, error_dim_fila

    li $v0, 4
    la $a0, str_indCol
    syscall

    li $v0, 5
    syscall
    move $s2, $v0  # $s2 = columna

    lw $t0, nCol($s0)
    bge $s2, $t0, error_dim_col
    bltz $s2, error_dim_col 

    li $v0, 4
    la $a0, str_nuevoValor
    syscall

    li $v0, 6
    syscall
    mov.s $f20, $f0

    move $a0, $s0
    move $a1, $s1
    move $a2, $s2
    mov.s $f12, $f20

    jal change_elto
    j menu_bucle

select_intercambia:

    li $v0, 4
    la $a0, str_indFila
    syscall

    li $v0, 5
    syscall
    move $s1, $v0

    lw $t0, nFil($s0)
    bge $s1, $t0, error_dim_fila
    bltz $s1, error_dim_fila

    li $v0, 4
    la $a0, str_indCol
    syscall

    li $v0, 5
    syscall
    move $s2, $v0

    lw $t0, nCol($s0)
    bge $s2, $t0, error_dim_col
    bltz $s2, error_dim_col

    move $a0, $s0
    move $a1, $s1
    move $a2, $s2

    jal intercambia
    j menu_bucle

error_dim_fila:

    li $v0, 4
    la $a0, str_errorFil
    syscall

    li $v0, 11
    la $a0, LF
    syscall

    j menu_bucle

error_dim_col:

    li $v0, 4
    la $a0, str_errorCol
    syscall

    li $v0, 11
    la $a0, LF
    syscall

    j menu_bucle

select_find_min:

    move $a0, $s0

    jal find_min

    move $s1, $a1
    move $s2, $a2
    mov.s $f20, $f0

    li $v0, 4
    la $a0, str_valMin
    syscall

    li $v0, 1
    move $a0, $s1
    syscall

    li $v0, 11
    li $a0, 44
    syscall

    li $v0, 1
    move $a0, $s2
    syscall

    li $v0, 4
    la $a0, str_conValor
    syscall

    li $v0, 2
    mov.s $f12, $f20
    syscall

    li $v0, 11
    la $a0, LF
    syscall

    j menu_bucle