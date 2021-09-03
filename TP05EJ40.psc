Algoritmo sin_titulo
	//Se lee un número N y luego N grupos de 5 números reales. 
	//Se desea conocer la posición del grupo de 5 números cuya suma fue mayor. Emitir ese resultado.
	//Realizar también una prueba de escritorio para este ejercicio. 
	//(Reducir el número de elementos por grupo para la prueba)
	
	Definir cantidad, pos_mayor Como Entero
	Definir num, suma, suma_mayor Como Real
	
	Repetir
		Escribir "Ingrese la cantidad de grupos a estudiar"
		Leer cantidad
		Si (cantidad < 1) Entonces
			Escribir "ERROR! Cantidad invalida"
		FinSi
	Hasta Que (cantidad > 0)
	
	Para contador1 <- 1 Hasta cantidad Con Paso 1 Hacer
		
		Para contador2 <- 1 Hasta 5 Con Paso 1 Hacer
			
			Escribir "Ingrese el ", contador2, "° valor del grupo ", contador1
			Leer num
			
			suma <- suma + num
			
		Fin Para
		
		Si (contador1 == 1) Entonces
			suma_mayor <- suma
			pos_mayor <- contador1
		SiNo
			Si (suma > suma_mayor) Entonces
				suma_mayor <- suma
				pos_mayor <- contador1
			FinSi
		FinSi
		
		suma <- 0
	Fin Para
	
	Escribir "La primera mayor suma es ", suma_mayor
	Escribir "Y se ingreso en la posicion ", pos_mayor
	
FinAlgoritmo
