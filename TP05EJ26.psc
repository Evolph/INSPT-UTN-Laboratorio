Algoritmo sin_titulo
	//Se lee un valor n seguido de n valores, 
	//se pide informar el primer y segundo valor más alto ingresado.
	
	Definir cant, max1, max2 Como Entero
	
	Repetir
		Escribir "Ingrese la cantidad de valores a considerar(2 min): "
		Leer cant
		Si cant < 2 Entonces
			Escribir "ERROR! Numero invalido!"
		FinSi
	Hasta Que cant > 1
	
	Dimension vector(cant)
	
	Para contador <- 1 Hasta cant Con Paso 1 Hacer
		Escribir "Ingrese el ", contador, "° valor: "
		leer vector(contador)
		
		Si contador == 1 entonces 
			max1 <- vector(contador)
		FinSi
		
		Si contador == 2 Entonces
				Si vector(contador) >= max1 Entonces
					max2 <- max1
					max1 <- vector(contador)
				SiNo
					max2 <- vector(contador)
				FinSi
		FinSi
			
		Si contador > 2 Entonces
			Si vector(contador) >= max1 Entonces
				max2 <- max1
				max1 <- vector(contador)
			SiNo
				Si vector(contador) >= max2 Entonces
					max2 <- vector(contador)
				FinSi
			FinSi
		FinSi
				
		
		
	Fin Para
	
	Escribir "Los dos valores más altos ingresados fueron :"
	Escribir max1
	Escribir max2
	
FinAlgoritmo
