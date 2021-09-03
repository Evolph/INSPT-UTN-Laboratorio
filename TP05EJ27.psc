Algoritmo sin_titulo
	//Dado un vector de n componentes enteras (n<=30) informar cual es el valor máximo ingresa y en qué posición/s se encuentra
	Definir cant, max Como Entero
	
	Repetir
		Escribir "Ingrese la cantidad de posiciones del vector: "
		Leer cant
		Si (cant < 1)  O (cant > 30) Entonces
			Escribir "ERROR! Numero invalido!"
		FinSi
	Hasta Que (cant > 0) Y (cant <=30)
	
	Dimension vector(cant)
	
	Para contador <- 1 Hasta cant Con Paso 1 Hacer
		Escribir "Ingrese el ", contador, "° valor"
		Leer vector(contador)
		
		Si (contador == 1) Entonces
			max <- vector(contador)
		SiNo
			Si (vector(contador) >= max) Entonces
				max <- vector(contador)
			FinSi
		FinSi
		
	Fin Para
	
	Escribir "El mayor valor ingresado es ", max, " y se encuentra en la(s) posicio(nes): "
	
	Para contador <- 1 Hasta cant Con Paso 1 Hacer
		Si (vector(contador) == max) Entonces
			Escribir contador
		FinSi
	FinPara
	
	
FinAlgoritmo
