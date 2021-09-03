Algoritmo sin_titulo
	//Se ingresa una lista de ternas (legajo, curso, nota). 
	//El fin de los datos se indica ingresando el legajo ==-1. La computadora debe mostrar
	//- el legajo del alumno de menor nota
	//- el promedio de los alumnos que obtuvieron notas entre 4 y 7 (inclusive)
	//- el legajo del alumno que aparecería último si la lista estuviera ordenada por legajo y su curso.
	
	Definir legajo, curso, cant_prom, flag_entrada, legajo_menor, legajo_ultimo, curso_ultimo Como Entero
	Definir nota, promedio, aux_prom, nota_menor Como Real
	
	Repetir
		Escribir "Ingrese el legajo del alumno(-1 - Fin de carga):"
		Leer legajo
		Si (legajo < -1) Entonces
			Escribir "ERROR! Nro de legajo invalido!"
		FinSi
	Hasta Que (legajo >= -1)
	
	Mientras (legajo <> -1) Hacer
		Repetir
			Escribir "Ingrese el curso del alumno ", legajo
			Leer curso
			Si (curso <= 0 ) Entonces
				Escribir "ERROR! Curso invalido!"
			FinSi
		Hasta Que (curso > 0)
		
		Repetir
			Escribir "Ingrese la nota del alumno ", legajo
			Leer nota
			Si (nota < 0 ) Entonces
				Escribir "ERROR! Nota invalida!"
			FinSi
		Hasta Que (nota >= 0)
		
		Si (flag_entrada == 0) Entonces
			legajo_menor <- legajo
			nota_menor <- nota
			
			legajo_ultimo <- legajo
			curso_ultimo <- curso
			
			flag_entrada <- 1
		
		FinSi
		
		Si (nota < nota_menor) Entonces
			nota_menor <- nota
			legajo_menor <- legajo
		FinSi
		
		Si (legajo > legajo_ultimo) Y (curso >= curso_ultimo) Entonces
			legajo_ultimo <- legajo
			curso_ultimo <- curso
		FinSi
		
		Si (nota >= 4) Y (nota <= 7) Entonces
			aux_prom <- aux_prom + nota
			cant_prom <- cant_prom + 1
		FinSi
		
		
		
		Repetir
			Escribir "Ingrese el legajo del alumno(-1 - Fin de carga):"
			Leer legajo
			Si (legajo < -1) Entonces
				Escribir "ERROR! Nro de legajo invalido!"
			FinSi
		Hasta Que (legajo >= -1)
		
		
	Fin Mientras
	
	
	Si (flag_entrada ==0) Entonces
		Escribir "No se ingresaron legajos validos"
	SiNo
		Escribir "El legajo del alumno con menor nota es: ", legajo_menor
		
		Si (cant_prom <> 0) Entonces
			
			promedio <- aux_prom / cant_prom
			Escribir "El promedio de los alumnos con notas entre 4 y 7 es: ", promedio
		SiNo
			Escribir "No hubo alumnos con notas entre 4 y 7"
		FinSi
		
		Escribir "El ultimo alumno en orden es el de legajo: ", legajo_ultimo, " Del curso ", curso_ultimo
		
	FinSi
	
FinAlgoritmo

