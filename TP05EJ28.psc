Algoritmo sin_titulo
	//Dado un vector V de n componentes enteras (n<=30), genere e imprima 2 vectores VP y VI que contenga respectivamente las componentes de índices pares e impares respectivamente.
	
	Definir cant, cant_I, cant_P, pos_I, pos_P Como Entero
	
	pos_I <- 1
	pos_P <- 1
	
	Repetir
		Escribir "Ingrese la cantidad de posiciones del vector: "
		Leer cant
		Si (cant < 1)  O (cant > 30) Entonces
			Escribir "ERROR! Numero invalido!"
		FinSi
	Hasta Que (cant > 0) Y (cant <=30)
	
	Dimension vector(cant)
	
	Si ((cant mod 2) <> 0) Entonces
		
		cant_I <- trunc(cant/2) +1
		cant_P <- trunc(cant/2)
		
	SiNo
		
		cant_I <- cant/2
		cant_P <- cant/2
		
	FinSi
	
	Dimension VI(cant_I), VP(cant_P)
	
	Para contador <- 1 Hasta cant Con Paso 1 Hacer
		
		Escribir "Ingrese el ", contador, "° valor"
		Leer vector(contador)
		
		Si ((contador mod 2) == 0) Entonces
			VP(pos_P) <- vector(contador)
			pos_P <- pos_P +1
		SiNo
			VI(pos_I) <- vector(contador)
			pos_I <- pos_I +1
		FinSi
		
	Fin Para
	
	Escribir "El vector de posiciones impares queda con los valores: "
	
	Para contador <- 1 Hasta cant_I Con Paso 1 Hacer
		Escribir VI(contador)
	Fin Para
	
	Escribir "El vector de posiciones pares queda con los valores: "
	
	Para contador <- 1 Hasta cant_P Con Paso 1 Hacer
		Escribir VP(contador)
	Fin Para
FinAlgoritmo
