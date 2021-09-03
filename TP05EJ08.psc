Algoritmo sin_titulo
	//Se ingresa un número no determinado de valores enteros. El último es -1. La computadora indica cuál fue el máximo número ingresado.
	definir num, maximo Como Entero
	
	
	Escribir "Ingrese un numero entero (-1 finaliza proceso): "
	leer num
	maximo <- num
	Mientras num <> -1 Hacer
		si num > maximo Entonces
			maximo <- num
		FinSi
		
		Escribir "Ingrese un numero entero (-1 finaliza proceso): "
		leer num
	Fin Mientras
	
	Escribir "El maximo de los numero ingresados fue: ", maximo
	
FinAlgoritmo
