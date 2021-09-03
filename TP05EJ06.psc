Algoritmo sin_titulo
	//Se lee una serie de N números, de a uno y se emite:
	//a) la cantidad de positivos; 
	//b) el valor del primer y último números leídos; 
	//c) la sumatoria;
	//d) la productoria.
	
	Definir cantidad Como Entero
	Definir num, primero, ultimo, sumatoria, productoria Como Real
	Definir c_pos Como Entero
	
	productoria <- 1
	
	Repetir
		escribir "Ingrese la cantidad de numeros reales a leer: "
		leer cantidad
		si cantidad < 1 Entonces
			Escribir  "ERROR! Cantidad invalida!"
		FinSi
	Hasta Que cantidad > 0
	
	Para contador <- 1 Hasta cantidad Con Paso 1 Hacer
		escribir "Ingrese un numero real ", contador, ": "
		Leer num
		si contador == 1 Entonces
			primero <- num
		FinSi
		
		si contador == cantidad Entonces
			ultimo <- num
		FinSi
		
		si num > 0 Entonces
			c_pos <- c_pos +1
		FinSi
		
		sumatoria <- sumatoria + num
		productoria <- productoria * num
		
	Fin Para
	
	Escribir "La cantidad de positivos ingresados fue: " , c_pos
	Escribir "El primer valor ingresado fue: ", primero
	Escribir "El ultimo valor ingresado fue: ", ultimo
	Escribir "La sumatoria fue: ", sumatoria
	Escribir "La productoria fue: ", productoria
	
FinAlgoritmo
