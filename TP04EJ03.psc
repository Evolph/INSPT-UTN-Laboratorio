Algoritmo TP04EJ03
	Definir Basico, CodigoA, Antiguedad, Presentismo, SueldoNeto, Remuneraciones, Descuentos, OSocial, ERROR Como Real
	Definir CodigoPres Como Caracter
	
	ERROR <- 0
	
	Escribir "Ingrese el sueldo basico: "
	Leer Basico
	
	Escribir "Corresponde presentismo?(V, F): "
	Leer CodigoPres
	
	Si (CodigoPres = 'V') o (CodigoPres = 'v') Entonces
		Presentismo<- Basico * 0.1
	Sino 
		Si (CodigoPres = 'F') o (CodigoPres = 'f') Entonces
			Presentismo <- 0
		SiNo
			ERROR <- 1
		FinSi
		
	FinSi
	
	Escribir "Ingrese codigo de antiguedad"
	Escribir "1 - Menos de un año"
	Escribir "2 - Desde 1 a 3 años"
	Escribir "3 - Desde 3 a 5 años"
	Escribir "4 - 5 años o más"
	Leer CodigoA
	
	Segun CodigoA Hacer
		1:
			Antiguedad <- 0
		2:
			Antiguedad <- Basico * 0.1
		3:
			Antiguedad <- Basico * 0.15
		4:
			Antiguedad <- Basico * 0.2
		De Otro Modo:
			ERROR <- 2
	FinSegun
	
	Segun ERROR Hacer
		0:
			Remuneraciones <- Basico + Antiguedad + Presentismo
			Jubilacion <- Remuneraciones *0.13
			OSocial <- Remuneraciones * 0.03
			Descuentos <- Jubilacion + OSocial
			SueldoNeto <- Remuneraciones - Descuentos
		1:
			Escribir "ERROR! Codigo de presentismo invalido!"
		2:
			Escribir "ERROR! Codigo de antiguedad invalido!"
		De Otro Modo:
			Escribir "ERROR INESPERADO"
	FinSegun
	
	Si (ERROR = 0) Entonces
		Escribir "Las remuneraciones totales son: ", Remuneraciones, "$"
		Escribir "El total de descuentos es: ", Descuentos, "$"
		Escribir "El sueldo neto es: ", SueldoNeto, "$"
	SiNo
		Escribir "No fue posible realizar los calculos"
	FinSi
	
	
	
	
FinAlgoritmo
