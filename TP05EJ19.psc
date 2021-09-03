Algoritmo sin_titulo
	//En un locutorio se realizan 3 tipos de llamadas. 
	//1- local, se abona $0,50 por minuto. 
	//2- urbana, se abona $4 los primeros 3 minutos y $2 cada minuto adicional. 
	//3-interurbana, se ingresa una tarifa T1 para los primeros 3 minutos y una tarifa T2 para cada minuto adicional (t1 y t2 dependen del país de destino). 
	//La duración de la llamada es un número entero. 
	//Se ingresa tipo de llamada y duración, se dese informar: 
	//Tipo de llamada, duración e importe a abonar. 
	//Al cambiar el turno se ingresa F y se emite el importe total recaudado.
	
	Definir duracion, tipo Como Entero
	Definir importe_U, importe_T, T1, T2 Como Real
	Definir turno Como Caracter
	
		
	Mientras (turno <> 'f') y (turno <> 'F') Hacer
		
		Escribir "Tipos de llamada:"
		Escribir "1 - LOCAL"
		Escribir "2 - URBANA"
		Escribir "3 - INTERURBANA"
		
		Repetir
			Escribir "Ingrese tipo: "
			Leer tipo
			Si (tipo < 1) o (tipo > 3) Entonces
				Escribir "ERROR! Tipo de llamada invalida!"
			FinSi
		Hasta Que (tipo >= 1) y (tipo <= 3)
		
		Repetir
			Escribir "Ingrese duracion de la llamada: "
			Leer duracion
			Si (duracion < 1) Entonces
				Escribir "ERROR! Duracion de llamada invalida!"
			FinSi
		Hasta Que (duracion >= 1)
		
		Segun tipo Hacer
			1:
				importe_U <- duracion * 0.5
			2:
				Si duracion <=3 Entonces
					importe_U <- duracion * 4
				SiNo
					importe_U <- 12 + (duracion - 3) * 2
				FinSi
			3:
				Escribir "Llamada interurbana"
				
				Repetir
					Escribir "Ingrese la tarifa T1: "
					Leer T1
					Escribir "Ingrese la tarifa T2: "
					Leer T2
					
					Si (T1 <= 0) o (T2 <= 0) Entonces
						Escribir "ERROR! Tarifas invalidas!"
					FinSi
					
				Hasta Que (T1 > 0) Y (T2 > 0)
				
				Si duracion <=3 Entonces
					importe_U <- duracion * T1
				SiNo
					importe_U <-  (3 * T1) + (duracion - 3) * T2
				FinSi
				
			De Otro Modo:
				Escribir "ERROR! Tipo invalido!"
		Fin Segun
		
		importe_T <- importe_T + importe_U
		
		Escribir "El importe de la llamada es: ", importe_U, "$"
		
		Escribir "Fin de turno? (F - SALIR)"
		Leer turno
	Fin Mientras
	
	Escribir "La recaudacion total del turno fue de ", importe_T, " $"
	
FinAlgoritmo
