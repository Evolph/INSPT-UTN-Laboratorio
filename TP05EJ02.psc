Algoritmo sin_titulo
	//Se leen 20 números y se emite un mensaje indicando cuantos fueron negativos
	definir contador Como Entero
	definir num Como Real
	definir C_negativo Como Entero
	
	C_negativo <- 0
	
	Para contador <- 1 Hasta 20 Con Paso 1 Hacer
		Escribir "Ingrese el numero ", contador, ": "
		leer num
		si num < 0 Entonces
			C_negativo <- C_negativo + 1
		FinSi
	Fin Para
	
	
	
	si C_negativo <> 0 Entonces
		escribir "La cantidad de numeros negativos fue: ", C_negativo
	SiNo
		Escribir "No hubo numeros negativos"
	FinSi
FinAlgoritmo
