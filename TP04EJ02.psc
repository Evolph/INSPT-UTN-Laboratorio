Algoritmo TP04EJ02
	Definir CodigoT, CodigoD Como Caracter
	Definir Tipo, Destino, Error Como Entero
	Definir Base, Final Como Real
	
	Error <- 0
	Base <- 300
	
	Escribir "Ingrese Codigo de Tipo(S, X, E): "
	Leer CodigoT
	Escribir "Ingrese Codigo de Destino(L, N): "
	Leer CodigoD
	
	Si (CodigoT = 'S') o (CodigoT = 's') Entonces
		Tipo <- 1
	FinSi
	
	Si (CodigoT = 'X') o (CodigoT = 'x') Entonces
		Tipo <- 2
	FinSi
	
	Si (CodigoT = 'E') o (CodigoT = 'e') Entonces
		Tipo <- 3
	FinSi
	
	Si (CodigoD = 'L') o (CodigoD = 'l') Entonces
		Destino <- 1
	FinSi
	
	Si (CodigoD = 'N') o (CodigoD = 'n') Entonces
		Destino <- 2
	FinSi
	
	Segun Tipo Hacer
		1:
			Final <- Base 
		2:
			Final <- Base * 1.2
		3:
			Final <- Base * 1.4
		De Otro Modo:
			Escribir "Error! Tipo de encomienda invalido"
			Error <- 1
	Fin Segun
	
	Segun Destino Hacer
		1:
			Final <- Final + Base * 0.05
		2:
			Final <- Final + Base * 0.2
		De Otro Modo:
			Escribir "ERROR! Destino de encomienda invalido!"
			Error <- 1
	Fin Segun
	
	Si (Error <> 1) Entonces
		Escribir "El precio final de la encomienda es: ", Final, "$"
	SiNo
		Escribir "Imposible calcular precio de encomienda!"
	FinSi
	
FinAlgoritmo
