Algoritmo sin_titulo
	//Se lee un valor n seguido de n valores, 
	//se pide informar el mayor número leído y su posición, si este se repite, informar todas las posiciones.
	Definir cant, max Como Entero
	
	Repetir
		Escribir "Ingrese la cantidad de valores a considerar: "
		Leer cant
		Si cant < 1 Entonces
			Escribir "ERROR! Numero invalido!"
		FinSi
	Hasta Que cant > 0
	
	Dimension Vector(cant)
	
	Para contador <- 1 Hasta cant Con Paso 1 Hacer
		Escribir "Ingrese el ", contador, "° valor: "
		leer vector(contador)
		
		Si contador == 1 entonces 
			max <- vector(contador)
		SiNo
			Si vector(contador) >= max Entonces
				max <- vector(contador)
			FinSi
		FinSi
		
	Fin Para
	
	Escribir "El maximo valor ingresado fue ", max, " y se encuentra en la(s) posicion(es):"
	
	Para contador <- 1 Hasta cant Con Paso 1 Hacer
		
		Si vector(contador) == max Entonces
			Escribir contador
		FinSi
	FinPara
	
FinAlgoritmo
