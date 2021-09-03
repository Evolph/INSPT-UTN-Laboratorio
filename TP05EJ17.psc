Algoritmo sin_titulo
	//Se lee un número entero N mayor o igual que 0 y, la computadora muestra el factorial del mismo.
	Definir num, factorial Como Entero
	
	factorial <- 1
	
	Repetir
		Escribir "Ingrese el numero para calcular su factorial: "
		Leer num
		Si num < 0 Entonces
			Escribir "ERROR! numero invalido!"
		FinSi
	Hasta Que num >= 0
	
	Si num <> 0 Entonces
		
		Para contador <- 1 Hasta num Con Paso 1 Hacer
			
			factorial <- factorial * contador
			
		Fin Para
		
	FinSi
	
	Escribir "El factorial de ", num, " es: ", factorial
	
FinAlgoritmo
