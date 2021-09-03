Algoritmo sin_titulo
	//Dados N enteros, se emite un mensaje indicando si ingresaron en orden creciente, decreciente o desordenados.
	
	Definir cantidad, num, aux, f_crece, f_decrece, f_desorden Como Entero
	
	Repetir
		Escribir "Ingrese la cantidad de numeros a considerar: "
		Leer cantidad
		Si cantidad < 1 Entonces
			Escribir "Error! Cantidad invalida!"
		FinSi
	Hasta Que cantidad > 0
	
	Para contador <- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Ingrese el valor ", contador
		Leer num
		Si (contador == 1) Entonces
			aux <- num
		SiNo
		
			Si f_desorden == 0 Entonces
				
				si num >= aux Entonces
					
					Si f_decrece <> 0 Entonces
						f_crece <- 0
						f_decrece <- 0
						f_desorden <- 1
					SiNo
						f_crece <- 1
					FinSi
				SiNo
					Si f_crece <> 0 Entonces
						f_crece <- 0
						f_decrece <- 0
						f_desorden <- 1
					SiNo
						f_decrece <- 1
					FinSi
				FinSi
			FinSi
			
		FinSi
		
	Fin Para
	
	Si cantidad <> 1 Entonces
		Si f_crece == 1  Entonces
			Escribir  "Se ingresaron los valores en orden creciente"
		FinSi
		
		Si f_decrece == 1  Entonces
			Escribir "Se ingresaron los valores en orden decreciente"
		FinSi
		
		Si f_desorden == 1 Entonces
			Escribir "Se ingresaron los valores desordenados"
		FinSi
	SiNo
		Escribir "Se ingresó un solo valor"
	FinSi
	
	
	
FinAlgoritmo
