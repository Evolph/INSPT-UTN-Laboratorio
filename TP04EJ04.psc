Algoritmo TP04EJ04
	Definir Dia, MesN, Año2, Año4, ERROR Como Entero
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
	
	Escribir "Ingrese año(2 digitos): "
	Leer Año2
	
	Si (Año2 < 0) o (Año2 > 99) Entonces
		ERROR <- 3
	SiNo
		Si (Año2 <= 21) Entonces
			Año4 <- 2000 + Año2
		SiNo
			Año4 <- 1900 + Año2
		FinSi
		
		Si(Dia = 29) Y (MesN = 2)  Entonces
			Si (Año4 MOD 4 = 0) Entonces
				Si (Año4 MOD 100 = 0) Entonces
					Si (Año4 MOD 400 = 0) Entonces
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
			Escribir "La fecha ", Dia, "/", MesN, "/", Año2, " cambiada de formato queda como"
			Escribir Dia, " de ", MesC, " de ", Año4
		1:
			Escribir "ERROR! Día invalido!"
		2:
			Escribir "ERROR! Mes invalido!"
		3:
			Escribir "ERROR! Año invalido!"
		4:
			Escribir "ERROR! Fecha no valida! ", MesC, " no tiene ", Dia, " dias en el año " , Año4
		De Otro Modo:
			Escribir "ERROR INESPERADO!"
	FinSegun
	
	
FinAlgoritmo
