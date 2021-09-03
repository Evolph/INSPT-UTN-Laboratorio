Algoritmo TP04EJ01
	Definir Letra como caracter
	Definir Codigo Como Entero
	
	Escribir "Ingrese el codigo(I, C, J, A): "
	Leer Letra
	
	Si (Letra = 'I') o (Letra = 'i') Entonces
		Codigo <- 1
	FinSi
	
	Si (Letra = 'C') o (Letra = 'c') Entonces
		Codigo <- 2
	FinSi
	
	Si (Letra = 'J') o (Letra = 'j') Entonces
		Codigo <- 3
	FinSi
	
	Si (Letra = 'A') o (Letra = 'a') Entonces
		Codigo <- 4
	FinSi
	
	Segun Codigo Hacer
		1:
			Escribir "Categoria Infantiles"
			Escribir "Cuota $800"
		2:
			Escribir "Categoria Cadetes"
			Escribir "Cuota $1000"
		3:
			Escribir "Categoria Juvenil"
			Escribir "Cuota $1200"
		4:
			Escribir "Categoria Adulto"
			Escribir "Cuota $900"
		De Otro Modo:
			Escribir "ERROR! Codigo invalido!"
	Fin Segun
FinAlgoritmo
