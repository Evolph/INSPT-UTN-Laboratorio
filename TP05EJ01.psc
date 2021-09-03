Algoritmo sin_titulo
	//Se ingresan 20 números por teclado y se indica si alguno fue negativo mediante un mensaje
	
	definir contador Como Entero
	definir num Como Real
	definir negativo Como Entero
	
	Para contador <- 1 Hasta 20 Con Paso 1 Hacer
		Escribir "Ingrese el numero ", contador, ": "
		leer num
		si num <0 Entonces
			negativo <- 1
		FinSi
	Fin Para
	
	si negativo <> 0 Entonces
		escribir "Hubo numeros negativos"
	SiNo
		Escribir "No hubo numeros negativos"
	FinSi
	
FinAlgoritmo
