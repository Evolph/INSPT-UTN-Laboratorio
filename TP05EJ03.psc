Algoritmo sin_titulo
	//Se leen 20 números y se emite su promedio
	
	definir contador Como Entero
	definir num Como Real
	definir acum Como Real
	definir promedio Como Real
	
	//acum <- 0
	
	Para contador <- 1 Hasta 20 Con Paso 1 Hacer
		Escribir "Ingrese el numero ", contador, ": "
		leer num
		acum <- acum + num
	Fin Para
	promedio <- acum / 20
	
	escribir "El promedio de los numeros ingresados es: ", promedio
FinAlgoritmo
