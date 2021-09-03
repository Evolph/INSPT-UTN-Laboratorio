Algoritmo sin_titulo
	//Se lee un número natural N y la computadora emite los números naturales pares menores que N
	
	Definir num, contador Como Entero
	
	contador <- 2
	
	Repetir
		Escribir "Ingrese un numero natural: "
		Leer num
		Si num < 1 Entonces
			Escribir "Error! Numero invalido!"
		FinSi
	Hasta Que num > 0
	
	Escribir "Los numeros pares menores a ", num, " son: "
	
	Mientras contador < num Hacer
		Escribir contador
		contador <- contador + 2
	Fin Mientras
	
	Si contador == 2 Entonces
		Escribir "No hay numeros pares menores que ", num
	FinSi
	
FinAlgoritmo
