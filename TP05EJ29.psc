Algoritmo sin_titulo
	//Considere el caso inverso al del problema anterior. Se dan como dato los vectores VP y VI que contienen respectivamente las componentes pares e impares de un vector V. Reconstruir el vector V.
	
	Definir cant_I, cant_P, cant, pos_I, pos_P Como Entero
	
	pos_I <- 1
	pos_P <- 1
	
	Repetir
		Escribir "Ingrese la cantidad de posiciones del vector impares: "
		Leer cant_I
		Si (cant_I < 1) Entonces
			Escribir "ERROR! Numero invalido!"
		FinSi
	Hasta Que (cant_I > 0)
	
	Si (cant_I mod 2 == 0) Entonces
		cant_P <- cant_I
	SiNo
		cant_P <- cant_I -1
	FinSi
		
	cant <- cant_I + cant_P
	
	Dimension VI(cant_I), VP(cant_P), Vector(cant)
	
	Para contador <- 1 Hasta cant_I Con Paso 1 Hacer
		Escribir "Ingrese el ", contador, "°valor del vector impar"
		Leer VI(contador)
	Fin Para
	
	Para contador <- 1 Hasta cant_P Con Paso 1 Hacer
		Escribir "Ingrese el ", contador, "°valor del vector par"
		Leer VP(contador)
	Fin Para
	
	Escribir "El vector armado queda: "
	
	Para contador <- 1 Hasta cant Con Paso 1 Hacer
		Si (contador mod 2 <> 0) Entonces
			Vector(contador) <- VI(pos_I)
			pos_I <- pos_I + 1
		SiNo
			Vector(contador) <- Vp(pos_P)
			pos_P <- pos_P + 1
		FinSi
		
		Escribir Vector(contador)
	Fin Para
	
	
	
	
	
	
FinAlgoritmo
