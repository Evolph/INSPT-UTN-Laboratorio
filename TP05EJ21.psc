Algoritmo sin_titulo
	//Ingresar un vector V1 de n componentes enteros (n<=30), generar e imprimir un nuevo vector V2 con sus componentes en orden invertido
	definir cantidad Como Entero
	
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
		
		V2((cantidad + 1) - contador) <- V1(contador) 
		
	Fin Para
	
	Escribir "El vector V2 con los componentes de V1 invertidos es: "
	
	
	Para contador <- 1 Hasta cantidad Con Paso 1 Hacer
		
		Escribir V2(contador)
		
	FinPara
	
FinAlgoritmo
