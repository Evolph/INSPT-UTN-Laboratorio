Algoritmo sin_titulo
	// Se lee un entero N y luego N número reales. Se emite el menor de ellos
	
	definir cantidad Como Entero
	definir num Como Real
	definir menor Como Real
	
	menor <- 0
	
	Repetir
		escribir "Ingrese la cantidad de numeros reales a leer: "
		leer cantidad
		si cantidad < 1 Entonces
			Escribir  "ERROR! Cantidad invalida!"
		FinSi
	Hasta Que cantidad > 0
	
	
	Para contador <- 1 Hasta cantidad Con Paso 1 Hacer
		escribir "Ingrese un numero real 1: "
		Leer num
		si contador == 1 Entonces
			menor <- num
		FinSi
		
		si (num < menor) Entonces
			menor <- num
		FinSi
	Fin Para
	
	Escribir "El menor de los numeros ingresados fue: ", menor
	
FinAlgoritmo
