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
# Descripción: Función que imprime el contenido de una matriz
# Argumentos:
# $s0 = Dirección base de la matriz
# $s1 = nFil (número de filas)
# $s2 = nCol (número de columnas)
# $s3 = Dirección base de los elementos de la matriz
# $s4 = Índice de la fila actual
# $s5 = Índice de la columna actual
# $t0 = Desplazamiento calculado para el elemento actual
# $a1 = Dirección del elemento actual a imprimir

print_mat:   
    # Reserva espacio en la pila y guarda el registro $ra
    addi $sp, $sp, -4
    sw $ra, 4($sp)

    # Imprime la dimensión de la matriz
    li $v0, 4
    la $a0, str_matTiene
    syscall

    lw $s1, nFil($s0)   # Imprime el número de filas
    li $v0, 1
    move $a0, $s1
    syscall

    li $v0, 11          # Imprime una 'x' entre el número de fila y columna
    li $a0, 120
    syscall

    lw $s2, nCol($s0)   # Imprime el número de columnas
    li $v0, 1
    move $a0, $s2
    syscall

    addiu $s3, $s0, elementos  # Ajusta la dirección base de los elementos

    li $v0, 11    # Imprime un salto de línea
    la $a0, LF
    syscall

    # Inicializar índices de filas
    move $s4, $zero

    
print_while:    # Bucle para imprimir los elementos de la matriz  
    beq $s4, $s1, print_mat_fin   # Verificar que no se han impreso todas las filas

    move $s5, $zero    # Reinicia el índice de columna

print_row:    # Bucle para imprimir una fila
    bge $s5, $s2, print_new_row   # Si se han impreso todas las columnas, nueva fila

    # Calculamos el desplazamiento del elemento actual
    mul $t0, $s4, $s2     # $t0 = Índice de fila actual * nCol
    addu $t0, $t0, $s5    # $t0 = (Índice de fila actual * nCol) + Índice de columna actual 
    mul $t0, $t0, sizeF   # $t0 *= ((Índice de fila actual * nCol) + Índice de columna actual) * tamaño_elemento
    addu $a1, $s3, $t0    # $a1 = Dirección base matriz + Desplazamiento calculado

    # Carga e imprime el elemento actual
    lwc1 $f12, 0($a1)
    li $v0, 2
    syscall

    # Imprime un espacio
    li $v0, 11
    la $a0, 32
    syscall

    # Avanza al siguiente elemento de la columna
    addi $s5, $s5, 1 # Columna impresa += 1

    j print_row

print_new_row:    # Prepara para la siguiente fila
    
    # Imprime salto de línea
    li $v0, 11
    la $a0, LF
    syscall

    # Avanza al siguiente índice de fila
    addi $s4, $s4, 1  # Fila impresa += 1

    j print_while

print_mat_fin:    # Termina la impresión de la matriz

    # Imprime salto de línea
    li $v0, 11
    la $a0, LF
    syscall

    # Recupera el registro $ra y libera la pila
    lw $ra, 4($sp)
    addi $sp, $sp, 4

    jr $ra

##############################
#######Cambiar matriz#########
# Descripción: Función que cambia la matriz de trabajo
# Argumentos:
# $a0 = Número de la matriz a seleccionar (1-6)

change_mat:

    addi $sp, $sp, -8
    sw $ra, 4($sp)
    sw $a0, 0($sp)

    beq $a0, 1, selected_mat1   # Si $a0 = 1, salta a la selected_mat1
    beq $a0, 2, selected_mat2   # Si $a0 = 2, salta a la selected_mat2
    beq $a0, 3, selected_mat3   # Si $a0 = 3, salta a la selected_mat3
    beq $a0, 4, selected_mat4   # Si $a0 = 4, salta a la selected_mat4
    beq $a0, 5, selected_mat5   # Si $a0 = 5, salta a la selected_mat5
    beq $a0, 6, selected_mat6   # Si $a0 = 6, salta a la selected_mat6

selected_mat1:
    la $s0, mat1          # Carga la dirección de mat1 en $s0
    j change_mat_fin      # Salta a la finalización

selected_mat2:
    la $s0, mat2          # Carga la dirección de mat2 en $s0
    j change_mat_fin      # Salta a la finalización

selected_mat3:
    la $s0, mat3          # Carga la dirección de mat3 en $s0
    j change_mat_fin      # Salta a la finalización

selected_mat4:
    la $s0, mat4          # Carga la dirección de mat4 en $s0
    j change_mat_fin      # Salta a la finalización

selected_mat5:
    la $s0, mat5          # Carga la dirección de mat5 en $s0
    j change_mat_fin      # Salta a la finalización

selected_mat6:
    la $s0, mat6          # Carga la dirección de mat6 en $s0
    j change_mat_fin      # Salta a la finalización

change_mat_fin:     # Restaura el estado anterior y termina la función

    lw $a0, 0($sp)    # Recupera el número de la matriz original
    lw $ra, 4($sp)    # Recupera el registro $ra
    addi $sp, $sp, 8  # Ajusta el puntero de la pila

    jr $ra            # Retorna de la función

mat_number_error:   # Si el número de la matriz no correcto, volver al menú con mensaje de error

    li $v0, 4
    la $a0, str_numMatMal   # Mensaje de error
    syscall

    j menu_bucle    # Vuelta al bucle

##############################
#######Cambiar elemento#######
# Descripción: Función que cambia un elemento en la matriz de trabajo
# Argumentos:
# $a0 = Dirección base de la estructura de la matriz
# $a1 = Índice de la fila del elemento a cambiar
# $a2 = Índice de la columna del elemento a cambiar
# $f20 = Nuevo valor flotante para el elemento

change_elto:

    # Cargar el número de filas y columnas de la matriz
    lw $t0, nFil($a0)           # $t0 = nFil
    lw $t1, nCol($a0)           # $t1 = nCol
    addi $t2, $a0, elementos    # $t2 = Dirección base de los elementos de la matriz

    # Calcular el desplazamiento en memoria del elemento a cambiar.
    mul $t3, $a1, $t1     # $t3 = Índice de fila actual * nCol
    addu $t3, $t3, $a2    # $t3 = (Índice de fila actual * nCol) + Índice de columna actual
    mul $t3, $t3, sizeF   # $t3 = ((Índice de fila actual * nCol) + Índice de columna actual) * tamaño_elemento
    addu $t3, $t3, $t2    # $t3 = Dirección base de los elementos de la matriz + Desplazamiento calculado

    # Establece el nuevo valor del elemento en la dirección calculada
    swc1 $f12, 0($t3)     # Almacena el nuevo valor flotante en la dirección calculada


change_elto_fin:  
    # Retorna de la función
    jr $ra

##############################
###########Swap###############
# Descripción: Esta función intercambia los valores de dos registros de punto flotante.
# Argumentos:
# $a0: Dirección de memoria del primer registro de coma flotante.
# $a1: Dirección de memoria del segundo registro de coma flotante.
# $f4: Almacena el valor del primer registro de coma flotante.
# $f6: Almacena el valor del segundo registro de coma flotante.

swap:

    # Intercambia los valores de los registros de coma flotante en las direcciones de memoria $a0 y $a1
    lwc1 $f4, 0($a0)    # Carga el valor del primer registro de coma flotante en $f4
    lwc1 $f6, 0($a1)    # Carga el valor del segundo registro de coma flotante en $f6

    swc1 $f6, 0($a0)    # Almacena el valor de $f6 en la dirección de memoria $a0
    swc1 $f4, 0($a1)    # Almacena el valor de $f4 en la dirección de memoria $a1

swap_fin:
    # Retorna de la función
    jr $ra

##############################
#########Intercambia##########
# Descripción: Esta función calcula las direcciones de memoria de los elementos a intercambiar en la matriz,
# llama a la función swap para realizar el intercambio y luego retorna.
# Argumentos:
# $a0: Puntero a la matriz.
# $a1: Índice de la fila del primer elemento a intercambiar.
# $a2: Índice de la columna del primer elemento a intercambiar.
# $t0: Número de filas de la matriz.
# $t1: Número de columnas de la matriz.
# $t2: Puntero al primer elemento de la matriz.
# $t3: Dirección del primer elemento a intercambiar.
# $t4: Índice de la fila del segundo elemento a intercambiar.
# $t5: Índice de la columna del segundo elemento a intercambiar.
# $t6: Dirección del segundo elemento a intercambiar.

intercambia:
    # Cargar el número de filas y columnas de la matriz
    lw $t0, nFil($a0)           # $t0 = nFil
    lw $t1, nCol($a0)           # $t1 = nCol
    addi $t2, $a0, elementos    # $t2 = Dirección base de los elementos de la matriz

    # Calcular el desplazamiento en memoria del elemento a intercambiar.
    mul $t3, $a1, $t1     # $t3 = Índice de fila actual * nCol
    addu $t3, $t3, $a2    # $t3 = (Índice de fila actual * nCol) + Índice de columna actual
    mul $t3, $t3, sizeF   # $t3 = ((Índice de fila actual * nCol) + Índice de columna actual) * tamaño_elemento
    addu $t3, $t3, $t2    # $t3 = Dirección base de los elementos de la matriz + Desplazamiento calculado

    # Calcular posición del elemento opuesto
    sub $t4, $t0, $a1
    sub $t4, $t4, 1
    sub $t5, $t1, $a2
    sub $t5, $t5, 1

    mul $t6, $t4, $t1
    addu $t6, $t6, $t5
    mul $t6, $t6, sizeF
    addu $t6, $t6, $t2

    # Llamamos a la función swap
      addi $sp, $sp, -4
      sw $ra, 0($sp)
      
      move $a0, $t3
      move $a1, $t6
      jal swap
      
      lw $ra, 0($sp)    # Restauramos la pila
      addi $sp, $sp, 4


intercambia_fin:
    # Retorna de la función
    jr $ra

##############################
#########Find_min##########
# Descripción: Esta función devuelve la posición y el valor del menor elemento de la matriz
# Argumentos:
# Descripción: Esta función devuelve la posición y el valor del menor elemento de la matriz
# Argumentos:
# $a0 = Dirección base de la estructura de la matriz
# $a1 = Dirección de memoria para almacenar el índice de fila del elemento mínimo
# $a2 = Dirección de memoria para almacenar el índice de columna del elemento mínimo
find_min:

  # Cargar el número de filas y columnas de la matriz
  lw $t0, nFil($a0)           # $t0 = nFil
  lw $t1, nCol($a0)           # $t1 = nCol
  addu $t2, $a0, elementos    # $t2 = Dirección base de los elementos de la matriz

  # Inicializar variables para almacenar el mínimo
  li $t3, -1                  # $t3 = Índice de fila del elemento mínimo
  li $t4, -1                  # $t4 = Índice de columna del elemento mínimo
  l.s $f4, infinito           # $f4 = Valor del elemento mínimo

  # Bucle para recorrer todas las filas de la matriz
  move $t5, $zero             # $t5 = Índice de fila actual
  move $t6, $zero             # $t6 = Índice de columna actual

  for_filas:
    bge $t5, $t0, end_for     # Si el índice de fila actual es mayor o igual al número de filas, salir del bucle
    move $t6, $zero           # Reiniciar el índice de columna actual

  for_columnas:
    bge $t6, $t1, actualizar_fila   # Si el índice de columna actual es mayor o igual al número de columnas, pasar a la siguiente fila

    # Calcular la dirección del elemento actual
    mul $t7, $t5, $t1         # $t7 = Índice de fila actual * nCol
    addu $t7, $t7, $t6        # $t7 = (Índice de fila actual * nCol) + Índice de columna actual
    mul $t7, $t7, sizeF       # $t7 = ((Índice de fila actual * nCol) + Índice de columna actual) * tamaño_elemento
    addu $t7, $t7, $t2        # $t7 = Dirección base de los elementos de la matriz + Desplazamiento calculado

    lwc1 $f5, 0($t7)          # Cargar el valor del elemento actual

    # Comparar el valor del elemento actual con el mínimo actual
    c.lt.s $f5, $f4           # Si el valor del elemento actual es menor que el mínimo actual, saltar a no_es_minimo
    bc1f no_es_minimo

    # Actualizar el mínimo y sus índices
    mov.s $f4, $f5            # $f4 = Valor del elemento mínimo
    move $t3, $t5             # $t3 = Índice de fila del elemento mínimo
    move $t4, $t6             # $t4 = Índice de columna del elemento mínimo

  no_es_minimo:
    addi $t6, $t6, 1          # Incrementar el índice de columna actual
    j for_columnas            # Volver al bucle for_columnas

  actualizar_fila:
    addi $t5, $t5, 1          # Incrementar el índice de fila actual
    j for_filas               # Volver al bucle for_filas

  end_for:
    mov.s $f0, $f4            # Almacenar el valor del elemento mínimo en $f0
    move $a1, $t3             # Almacenar el índice de fila del elemento mínimo en $a1
    move $a2, $t4             # Almacenar el índice de columna del elemento mínimo en $a2

find_min_fin:
  jr $ra                      # Retornar de la función

main:

  li $v0, 4
  la $a0, str_titulo
  syscall

  la $s0, mat1

menu_bucle:

  move $a0, $s0
  jal print_mat  # Llama a la función print_mat para imprimir la matriz actual
  
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
  beq $t0, 0, end_program  # Si la opción es 0, termina el programa
  beq $t0, 1, select_change_mat  # Si la opción es 1, llama a la función change_mat para cambiar la matriz de trabajo
  beq $t0, 3, select_change_elto  # Si la opción es 3, llama a la función change_elto para cambiar un elemento de la matriz
  beq $t0, 4, select_intercambia  # Si la opción es 4, llama a la función intercambia para intercambiar elementos de la matriz
  beq $t0, 7, select_find_min  # Si la opción es 7, llama a la función find_min para encontrar el elemento mínimo de la matriz

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

  bgt $a0, 6, mat_number_error  # Si el número de la matriz es mayor que 6, muestra un mensaje de error
  blez $a0, mat_number_error  # Si el número de la matriz es menor o igual a 0, muestra un mensaje de error

  jal change_mat  # Llama a la función change_mat para cambiar la matriz de trabajo
  j menu_bucle

select_change_elto:

  li $v0, 4
  la $a0, str_indFila
  syscall

  li $v0, 5
  syscall
  move $s1, $v0   # $s1 = fila

  lw $t0, nFil($s0)
  bge $s1, $t0, error_dim_fila  # Si el número de fila es mayor o igual al número de filas de la matriz, muestra un mensaje de error
  bltz $s1, error_dim_fila  # Si el número de fila es menor que 0, muestra un mensaje de error

  li $v0, 4
  la $a0, str_indCol
  syscall

  li $v0, 5
  syscall
  move $s2, $v0  # $s2 = columna

  lw $t0, nCol($s0)
  bge $s2, $t0, error_dim_col  # Si el número de columna es mayor o igual al número de columnas de la matriz, muestra un mensaje de error
  bltz $s2, error_dim_col  # Si el número de columna es menor que 0, muestra un mensaje de error

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

  jal change_elto  # Llama a la función change_elto para cambiar el elemento de la matriz
  j menu_bucle

select_intercambia:

  li $v0, 4
  la $a0, str_indFila
  syscall

  li $v0, 5
  syscall
  move $s1, $v0

  lw $t0, nFil($s0)
  bge $s1, $t0, error_dim_fila  # Si el número de fila es mayor o igual al número de filas de la matriz, muestra un mensaje de error
  bltz $s1, error_dim_fila  # Si el número de fila es menor que 0, muestra un mensaje de error

  li $v0, 4
  la $a0, str_indCol
  syscall

  li $v0, 5
  syscall
  move $s2, $v0

  lw $t0, nCol($s0)
  bge $s2, $t0, error_dim_col  # Si el número de columna es mayor o igual al número de columnas de la matriz, muestra un mensaje de error
  bltz $s2, error_dim_col  # Si el número de columna es menor que 0, muestra un mensaje de error

  move $a0, $s0
  move $a1, $s1
  move $a2, $s2

  jal intercambia  # Llama a la función intercambia para intercambiar elementos de la matriz
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