Algoritmo sin_titulo
	//Se leen N números enteros y se emite el mayor y la posición en la que ingresó por primera vez; el valor del último y del primer número ingresado
	Definir cantidad, num, max, posicion, primero, ultimo Como Entero
	
	Repetir
		Escribir "Ingrese la cantidad de valores reales a trabajar: "
		Leer cantidad
		Si cantidad < 1 Entonces
			Escribir "ERROR! Cantidad invalida!"
		FinSi
	Hasta Que cantidad > 0
	
	Para contador <- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Ingrese el valor entero ", contador
		leer num
		
		si contador == 1 Entonces
			max <- num
			posicion <- contador
			primero <- num
		SiNo
			si num > max Entonces
				max <- num
				posicion <- contador
			FinSi
		FinSi
	Fin Para
	
	Escribir "El maximo valor ingresado fue ", max, " en la posicion ", posicion
	Escribir "El primer valor ingresado fue ", primero
	Escribir "El ultimo valor ingresado fue ", num
	
FinAlgoritmo
