Algoritmo TP04EJ05
	Definir Codigo Como Entero
	Definir Base1, Base2, Altura, Superficie, Radio Como Real
	Escribir "Calculadora de superficies"
	Escribir "1 - Rectángulo"
	Escribir "2 - Esfera"
	Escribir "3 - Trapecio"
	Escribir "4 - Triangulo"
	Escribir "5 - Circulo"
	Escribir "Elija la superficie a calcular: "
	Leer Codigo
	Segun Codigo Hacer
		1:
			Escribir "Superficie de un Rectágulo"
			Escribir "Ingrese la base del rectángulo: "
			Leer Base1
			Escribir "Ingrese la altura del rectágulo: "
			Leer Altura
			Si (Base1 <= 0) o (Altura <= 0) Entonces
				Escribir "ERROR! Datos invalidos!"
			SiNo
				Superficie <- Base1 * Altura
				Escribir "La superficie del rectágulo de base ", Base1, " y altura ", Altura, " es: ", Superficie
			FinSi
		2:
			Escribir "Superficie de una Esfera"
			Escribir "Ingrese el radio de la esfera: "
			Leer Radio
			Si (Radio <= 0) Entonces
				Escribir "ERROR! Radio invalido!"
			SiNo
				Superficie <- 4 * pi * Radio * Radio
				Escribir "La superficie de una esfera de radio ", Radio, " es: ", Superficie	
			FinSi
		3:
			Escribir "Superficie de un Trapecio"
			Escribir "Ingrese la primera base del trapecio: "
			Leer Base1
			Escribir "Ingrese la segunda base del trapecio: "
			Leer Base2
			Escribir "Ingrese la altura del trapecio: "
			Leer Altura
			Si (Base1 <= 0) o (Base2 <= 0) o (Altura <=0) Entonces
				Escribir "ERROR! Datos invalidos"
			SiNo
				Superficie <- (Base1 + Base2) * Altura / 2
				Escribir "La superficie de un trapecio con bases ", Base1, ", ", Base2, " y altura ", Altura, " es: ", Superficie
			FinSi
		4:
			Escribir "Superficie de un Triángulo"
			Escribir "Ingrese la base del triángulo: "
			Leer Base1
			Escribir "Ingrese la altura del tríangulo: "
			Leer Altura
			Si (Base1 <= 0) o (Altura <=0) Entonces
				Escribir "ERROR! Datos invalidos"
			SiNo
				Superficie <- Base1 * Altura / 2
				Escribir "La superficie de un triangulo de base ", Base1, " y altura ", Altura, " es: ", Superficie
			FinSi
		5:
			Escribir "Superficie de un Círculo"
			Escribir "Ingrese el radio del círculo: "
			Leer Radio
			Si (Radio <= 0) Entonces
				Escribir "ERROR! Radio invalido!"
			SiNo
				Superficie <-  pi * Radio * Radio
				Escribir "La superficie de un círculo de radio ", Radio, " es: ", Superficie	
			FinSi
		De Otro Modo:
			Escribir "ERROR! Codigo invalido!"
	FinSegun
	
FinAlgoritmo
