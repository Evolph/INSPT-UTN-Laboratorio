Algoritmo TP04EJ04
	Definir Dia, MesN, A�o2, A�o4, ERROR Como Entero
	Definir MesC Como Caracter
	ERROR <- 0
	
	Escribir "Ingrese el dia: "
	Leer Dia
	
	SI (Dia <1) o (Dia >31) Entonces
		ERROR <- 1
	FinSi
	Escribir "Ingrese mes: "
	Leer MesN
	
	Segun MesN Hacer
		1:
			MesC <- 'Enero'
		2:
			MesC <- 'Febrero'
		3:
			MesC <- 'Marzo'
		4:
			MesC <- 'Abril'
		5:
			MesC <- 'Mayo'
		6:
			MesC <- 'Junio'
		7:
			MesC <- 'Julio'
		8:
			MesC <- 'Agosto'
		9:
			MesC <- 'Septiembre'
		10:
			MesC <- 'Octubre'
		11:
			MesC <- 'Noviembre'
		12:
			MesC <- 'Diciembre'
		De Otro Modo:
			ERROR <- 2
	FinSegun
	
	Escribir "Ingrese a�o(2 digitos): "
	Leer A�o2
	
	Si (A�o2 < 0) o (A�o2 > 99) Entonces
		ERROR <- 3
	SiNo
		Si (A�o2 <= 21) Entonces
			A�o4 <- 2000 + A�o2
		SiNo
			A�o4 <- 1900 + A�o2
		FinSi
		
		Si(Dia = 29) Y (MesN = 2)  Entonces
			Si (A�o4 MOD 4 = 0) Entonces
				Si (A�o4 MOD 100 = 0) Entonces
					Si (A�o4 MOD 400 = 0) Entonces
						ERROR <- 4
					Sino 
						ERROR <- 0
					FinSi
				SiNo
					ERROR <- 0
				FinSi
			SiNo
				ERROR <- 4				
			FinSi
		FinSi
	FinSi
	
	
	Segun ERROR Hacer
		0:
			Escribir "La fecha ", Dia, "/", MesN, "/", A�o2, " cambiada de formato queda como"
			Escribir Dia, " de ", MesC, " de ", A�o4
		1:
			Escribir "ERROR! D�a invalido!"
		2:
			Escribir "ERROR! Mes invalido!"
		3:
			Escribir "ERROR! A�o invalido!"
		4:
			Escribir "ERROR! Fecha no valida! ", MesC, " no tiene ", Dia, " dias en el a�o " , A�o4
		De Otro Modo:
			Escribir "ERROR INESPERADO!"
	FinSegun
	
	
FinAlgoritmo
