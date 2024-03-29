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
str_x:  .asciiz "x"
  .text

main:
  # Imprimir título
  li $v0, 4
  la $a0, str_titulo
  syscall

  # Cargar en $s0 la matriz de trabajo
  la $s0, mat1
  # Cargar en cada registro los valores de las opciones válidas
  li $s1, 1   # Cambiar matriz trabajo
  li $s2, 3   # Cambiar valor elemento
  li $s3, 4   # Intercambiar elemento por opuesto
  li $s4, 7   # Encontrar el mínimo

  jal print_mat

# Establecemos un menu 
menu:

  # Imprimir menú de opciones
  li $v0, 4
  la $a0, str_menu
  syscall

pedir_num:
  # Pedir número a usuario
  li $v0, 5
  syscall
  move $s5, $v0  

  # Elegir que opción del menu se va a realizar
  beqz $s5, end_program
  beq $s5, $s1, select_change_mat
  beq $s5, $s2, select_change_elto
  beq $s5, $s3, select_intercambia
  beq $s5, $s4, select_find_min

    # Mensaje de opción no válida
  li $v0, 4
  la $a0, str_errorOpc
  syscall

  jal print_mat

  j menu

select_change_mat:

  li $v0, 4
  la $a0, str_elijeMat
  syscall

  li $v0, 5
  syscall
  move $t5, $v0

  li $t6, 1
  li $t7, 6
  blt $t5, $t6, mat_number_error
  bgt $t5, $t7, mat_number_error

  jal change_mat

  j menu

  mat_number_error: 
  li $v0, 4
  la $a0, str_numMatMal
  syscall

  jal print_mat

  j menu

select_change_elto:

  # Preparar argumentos
  move $t4, $s0   # $t4 = dirección base de matriz de trabajo
  lw $t8, nFil($t4)  # $t8 = nº de filas
  lw $t9, nCol($t4)  # $t9 = nº de columnas

  li $v0, 4
  la $a0, str_indFila
  syscall

  li $v0, 5
  syscall
  move $t5, $v0

  bge $t5, $t8, error_dim_fila
  bltz $t5, error_dim_fila

  li $v0, 4
  la $a0, str_indCol
  syscall

  li $v0, 5
  syscall
  move $t6, $v0

  bge $t6, $t9, error_dim_col
  bltz $t6, error_dim_col

  jal change_elto

  j menu

select_intercambia:

  # Preparar argumentos
  move $t4, $s0   # $t4 = dirección base de matriz de trabajo
  lw $t8, nFil($t4)  # $t8 = nº de filas
  lw $t9, nCol($t4)  # $t9 = nº de columnas

  li $v0, 4
  la $a0, str_indFila
  syscall

  li $v0, 5
  syscall
  move $t5, $v0

  bge $t5, $t8, error_dim_fila
  bltz $t5, error_dim_fila

  li $v0, 4
  la $a0, str_indCol
  syscall

  li $v0, 5
  syscall
  move $t6, $v0

  bge $t6, $t9, error_dim_col
  bltz $t6, error_dim_col

  jal intercambia

  j menu

error_dim_fila:

  li $v0, 4
  la $a0, str_errorFil
  syscall

  li $v0, 11
  la $a0, LF
  syscall

  move $t6, $s2

  jal print_mat

  j menu

  error_dim_col:
  li $v0, 4
  la $a0, str_errorCol
  syscall

  li $v0, 11
  la $a0, LF
  syscall

  jal print_mat

  j menu

select_find_min:

  jal find_min

  li $v0, 4
  la $a0, str_valMin
  syscall

  li $v0, 1
  move $a0, $a1
  syscall

  li $v0, 11
  li $a0, 44
  syscall 

  li $v0, 1
  move $a0, $a2
  syscall

  li $v0, 4
  la $a0, str_conValor
  syscall

  li $v0, 2
  mov.s $f12, $f0
  syscall

  li $v0, 11
  la $a0, LF
  syscall

  jal print_mat

  j menu

end_program:
  # Imprimir mensaje final
  li $v0, 4
  la $a0, str_termina
  syscall

  # Terminar programa
  li $v0, 10
  syscall

print_mat:
  # Argumentos
  # $a0 - Dirección base de matriz de trabajo
  # $a1 - Número de filas
  # $a2 - Número de columnas
  # $a3 - Índice fila inicial
  # $t0 - Filas impresas
  # $t1 - Índice columna

  # Imprimir dimensiones

  move $t4, $s0     # Guardar matriz de trabajo
  lw $t6, nFil($t4)  # $t6 = nº de filas
  lw $t7, nCol($t4)  # $t7 = nº de columnas

  # Imprimir mensaje de dimensiones de la matriz
  li $v0, 4
  la $a0, str_matTiene
  syscall

  # Imprimir número de filas
  li $v0, 1
  move $a0, $t6
  syscall

  # Imprimir "x"
  li $v0, 4
  la $a0, str_x
  syscall

  # Imprimir número de columnas
  li $v0, 1
  move $a0, $t7
  syscall

  # Imprimir salto de línea
  li $v0, 11
  la $a0, LF
  syscall

  # Inicializar los argumentos otra vez
  li $t0, 0
  li $t1, 0
  li $t2, 0
  li $t3, 0

  # Imprimir elementos
  print_while:
  # Verificar que no se han impreso todas las filas
  beq $t0, $t6, print_mat_fin

  print_row: 
  mul $t2, $t0, $t7     # $t2 = filas impresas * nº columnas
  add $t2, $t2, $t1     # $t2 += columna impresa
  mul $t2, $t2, sizeF   # $t2 *= tam_elemento
  add $t3, $t4, $t2     # $t3 = base + desplazamiento
  addi $t3, $t3, elementos     # Ajustar $t3 para imprimir elementos

  l.s $f12, 0($t3)      # $t3 = $f12
  li $v0, 2             # Imprimir flotante
  syscall             

  li $v0, 11            # Imprimrir caracter
  li $a0, 32            # Imprimir espacio
  syscall

  addi $t1, $t1, 1          # columna impresa += 1
  bge $t1, $t7, next_row    # Si columna_impresa >= nº col => next_row
  
  j print_row     # Imprimir siguiente elemento de la fila

  next_row: 
  li $v0, 11
  la $a0, LF
  syscall

  move $t1, $zero     # Columna impresa = 0
  addi $t0, $t0, 1    # Fila impresa += 1
  j print_while       # Ir al principio de la impresión
  
print_mat_fin:

  li $v0, 11
  la $a0, LF
  syscall

  li $v0, 11
  la $a0, LF
  syscall

  jr $ra # Regresar al invocante de la función

change_mat:

  li $t0, 1
  li $t1, 2
  li $t2, 3
  li $t3, 4
  li $t4, 5
  li $t6, 6

  beq $t5, $t0, selected_mat1
  beq $t5, $t1, selected_mat2
  beq $t5, $t2, selected_mat3
  beq $t5, $t3, selected_mat4
  beq $t5, $t4, selected_mat5
  beq $t5, $t6, selected_mat6

  selected_mat1:
  la $s0, mat1
  jal print_mat
  j menu

  selected_mat2:
  la $s0, mat2
  jal print_mat
  j menu

  selected_mat3:
  la $s0, mat3
  jal print_mat
  j menu

  selected_mat4:  la $t3, infinito

  la $s0, mat4
  jal print_mat
  j menu

  selected_mat5:
  la $s0, mat5
  jal print_mat
  j menu
  
  selected_mat6:
  la $s0, mat6
  jal print_mat
  j menu

change_mat_fin:

  jal print_mat # Imprimir matriz

  jr $ra

change_elto:

  li $v0, 4
  la $a0, str_nuevoValor
  syscall

  li $v0, 6
  syscall
  mov.s $f4, $f0

  # Calcular dirección a cambiar
  mul $t7, $t5, $t9   # fila * nº columnas
  add $t7, $t7, $t6   # (fila * nºcolumnas) + columna
  mul $t7, $t7, sizeF # ((fila * nºcolumnas) + columna) * tamaño_float
  add $t7, $t7, $t4   # Dirección base más desplazamiento
  addi $t7, $t7, elementos  # Ajustar para llegar a elementos

  s.s $f4, 0($t7)

change_elto_fin:

  jal print_mat

  j menu

swap:

  lwc1 $f0, 0($a0)
  lwc1 $f1, 0($a1)
  swc1 $f1, 0($a0)
  swc1 $f0, 0($a1)

swap_fin:

  jr $ra

intercambia:

  # $t4 - dirección base
  # $t5 - fila seleccionada
  # $t6 - columna seleccionada
  # $t8 - nFil
  # $t9 - nCol
  
  li $t0, 0
  li $t1, 0

  # Calcular índices del elemento opuesto
  sub $t7, $t8, $t5
  sub $t7, $t7, 1
  sub $t0, $t9, $t6
  sub $t0, $t0, 1

  # Calcular dirección del elemento seleccionado
  mul $t1, $t5, $t9
  add $t1, $t1, $t6
  mul $t1, $t1, sizeF
  add $t1, $t1, $t4
  add $t1, $t1, elementos

  # Calcular dirección del elemento opuesto
  mul $t2, $t7, $t9
  add $t2, $t2, $t0
  mul $t2, $t2, sizeF
  add $t2, $t2, $t4
  add $t2, $t2, elementos

  move $a0, $t1
  move $a1, $t2
  jal swap

intercambia_fin:

  jal print_mat

  j menu

find_min:
  # Argumentos
  # $t0 = nº filas
  # $t1 = nº columnas
  # $f4 = datos
  # $f5 = min
  # $t4 = fmin
  # $t5 = cmin
  # $t6 = f
  # $t7 = c
  # $t8 = aux
  # $f6 = valor

  lw $t0, nFil($s0)
  lw $t1, nCol($s0)
  move $t2, $s0            # Dirección base de la matriz
  l.s $f5, infinito
  li $t4, -1
  li $t5, -1
  move $t6, $zero
  move $t7, $zero
  move $t8, $zero

  for_filas:
    bge $t6, $t0, end_for   # Si se recorren todas las filas, terminar

    move $t7, $zero     # Reiniciar índice de columna

  for_columnas:
    bge $t7, $t1, update_fila   # Si se recorren todas las columnas, volver al bucle de filas

  # Calcular dirección de elemento actual

  mul $t8, $t6, $t1
  add $t8, $t8, $t7
  mul $t8, $t8, sizeF
  add $t8, $t8, $t2
  add $t8, $t8, elementos

  lwc1 $f6, 0($t8)

  # Comparar con el mínimo actual
  c.lt.s $f6, $f5
  bc1f no_es_minimo

  # Actualizar mínimo y sus indices
  mov.s $f5, $f6
  move $t4, $t6
  move $t5, $t7

  no_es_minimo:
    addi $t7, $t7, 1
    j for_columnas

  update_fila:
    addi $t6, $t6, 1
    j for_filas

  end_for:
    mov.s $f0, $f5
    move $a1, $t4
    move $a2, $t5  

find_min_fin:

jr $ra