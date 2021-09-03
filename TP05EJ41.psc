Algoritmo sin_titulo
	//Prepara un programa que permita imprimir cada una de las sucesiones numéricas que se presentan a continuación
	
	
	Definir opc Como Entero
	Definir char, char2 Como Caracter
	
	
	Repetir
		Escribir "Ingrese la opcion de la secuencia a mostrar:"
		Escribir "1- 1234567"
		Escribir "2- 1111111"
		Escribir "3- 1, 12, 123..."
		Escribir "4- 012345"
		Escribir "5- ********"
		Escribir "6- A, AA,... "
		Escribir "7-, A, BB,... "
		Escribir "Ingrese la opcion elegida:"
		Leer opc
		Si(opc < 1) O (opc > 7)
			Escribir "ERROR! Opcion invalida!"
		FinSi
	Hasta Que (opc >=1) Y (opc <= 7)
	
	
	
	Segun opc Hacer
		1:
			Escribir "Secuencia 1234567, 1234567...."
			Para contador <- 1 Hasta 7 Con Paso 1 Hacer
				Para contador2 <- 1 Hasta 7 Con Paso 1 Hacer
					Escribir Sin Saltar contador " "
				Fin Para
				Escribir ""
			Fin Para
			
		2:
			
			Escribir "Secuencia 1111111, 222...."
			Para contador <- 1 Hasta 7 Con Paso 1 Hacer
				Para contador2 <- 1 Hasta 7 Con Paso 1 Hacer
					Escribir Sin Saltar contador2 " "
				Fin Para
				Escribir ""
			Fin Para
		3:
			Escribir "Secuencia 1, 12, 123,...."
			
			Para contador <- 1 Hasta 5 Con Paso 1 Hacer
				Para contador2 <- 1 Hasta contador Con Paso 1 Hacer
					Escribir Sin Saltar contador2 " "
				Fin Para
				Escribir ""
			Fin Para
			
			
		4:
			Escribir "Secuencia 012345,0246810...."
			Para contador <- 1 Hasta 4 Con Paso 1 Hacer
				Para contador2 <- 0 Hasta 5 Con Paso 1 Hacer
					Escribir Sin Saltar contador2 * contador " "
				Fin Para
				Escribir ""
			Fin Para
			
		5:
			Escribir "Secuencia *******, *******,...."
			char <- '*'
			Para contador <- 1 Hasta 7 Con Paso 1 Hacer
				Para contador2 <- 1 Hasta 7 Con Paso 1 Hacer
					Escribir Sin Saltar char " "
				Fin Para
				Escribir ""
			Fin Para
		6:
			Escribir "Secuencia A, AA, ....."
			char <- 'A'
			Para contador <- 1 Hasta 4 Con Paso 1 Hacer
				Para contador2 <- 1 Hasta contador Con Paso 1 Hacer
					Escribir Sin Saltar char " "
				Fin Para
				Escribir ""
			Fin Para
		7:
			Escribir "Secuencia A, AA, ....."
			char <- 'A'
			char2 <- 'B'
			Para contador <- 1 Hasta 4 Con Paso 1 Hacer
				Para contador2 <- 1 Hasta contador Con Paso 1 Hacer
					Si (contador mod 2 <> 0) Entonces
						Escribir Sin Saltar char " "
					SiNo
						Escribir Sin Saltar char2 " "
					FinSi
					
					
				Fin Para
				Escribir ""
			Fin Para
		De Otro Modo:
			
	Fin Segun
	
	
FinAlgoritmo
