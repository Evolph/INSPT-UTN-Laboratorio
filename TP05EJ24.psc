Algoritmo sin_titulo
	//Se ingresa un número entero N y se emiten los N primeros números primos.
	
	Definir num, cantidad, primo, no_primo Como Entero
	
	primo <- 2
	
	Repetir
		Escribir "Ingrese el numero de primos a considerar: "
		Leer num 
		Si num < 1 Entonces
			Escribir "ERROR! Numero invalido!"
		FinSi
	Hasta Que num > 0
	
	Escribir "Los primeros ", num, " numeros primos son: "
	
	
	
	Mientras cantidad < num Hacer
		
		Para contador <- 1 Hasta trunc(primo/2) Con Paso 1 Hacer
			
			Si (primo mod contador == 0) y (contador <> 1) Entonces
				no_primo <- 1
			FinSi
			
		Fin Para
		
		Si (no_primo == 0) Entonces
			Escribir primo
			cantidad <- cantidad + 1
		FinSi
		
		primo <- primo +1
		no_primo <- 0
		
	Fin Mientras
	
	
FinAlgoritmo
