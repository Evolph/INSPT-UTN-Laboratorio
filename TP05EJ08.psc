Algoritmo sin_titulo
	//Se ingresa un n�mero no determinado de valores enteros. El �ltimo es -1. La computadora indica cu�l fue el m�ximo n�mero ingresado.
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
