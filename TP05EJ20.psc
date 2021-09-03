Algoritmo sin_titulo
	//Ingresar un vector V1 de n componentes enteros (n<=30), generar e imprimir un nuevo vector V2 que resulte de permutar entre si la primera y última componente.
	definir cantidad, num, aux Como Entero
	
	Repetir
		Escribir "Indique la cantidad de componentes del vector V1: "
		Leer cantidad
		Si (cantidad < 1) O (cantidad > 30) Entonces
			Escribir "ERROR! Cantidad invalida!"
		FinSi
	Hasta Que (cantidad > 0) Y (cantidad <= 30)
	
	Dimension V1(cantidad)
	Dimension V2(cantidad)
	
	Para contador <- 1 Hasta cantidad Con Paso 1 Hacer
		
		Escribir "Ingrese el ", contador, "° valor de V1"
		Leer V1(contador)
		
		
		V2(contador) <- V1(contador)
		
	Fin Para
	
	aux <- V2(1)
	V2(1) <- V2(cantidad)
	V2(cantidad) <- aux
	
	
	Escribir "El vector 2 queda ordenado: "
	
	Para contador <- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir V2(contador)
	FinPara
	
	
FinAlgoritmo
