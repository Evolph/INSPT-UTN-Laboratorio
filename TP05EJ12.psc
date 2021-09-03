Algoritmo sin_titulo
	//Se leen dos enteros N y M, y se emite la tabla de multiplicar de N entre 1 y M.
	
	Definir N, M, multi, contador, inicio Como Entero
	
	Repetir
		Escribir "Ingrese el valor N: "
		Leer N
		Escribir "Ingrese el valor M: "
		Leer M
		Si N == 0 o M == 0 Entonces
			Escribir "ERROR! Valores invalidos! Deben ser distintos de cero!"
		FinSi
	Hasta Que N <> 0 y M <> 0
	
	
	
	Escribir "La tabla de multiplicar de N= ", N, " entre 1 y M= ", M, " es: "
	
	Si M < 0 Entonces
		inicio <- -1
	SiNo
		inicio <- 1
	FinSi
	
	Para contador <- inicio Hasta M Con Paso inicio Hacer
		multi <- N * contador
		Escribir multi
	Fin Para
	
FinAlgoritmo
