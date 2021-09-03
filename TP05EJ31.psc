Algoritmo sin_titulo
	//Se ingresa un número no determinado de veces una terna formada por legajo (int), sexo (carácter m o f), y edad. Se desea emitir
	//- el legajo de la mujer más joven
	//- el legajo del varón más viejo
	//- el promedio de edades de quienes tengan nombre con inicial 'j' o ?J?.
	Definir nombre, sexo, inicial Como Caracter
	Definir legajo,edad_F_joven, leg_F_joven, edad_M_viejo, leg_M_viejo,  edad, elec_sex, flag_entrada, cant, primer_F, primer_M Como Entero
	
	
	Escribir "Ingrese el numero de legajo (-1 termina el ingreso)"
	Leer legajo
	
	Mientras (legajo <> -1) Hacer
		
		flag_entrada <- 1
		
		Repetir
			Escribir "Ingrese el sexo del legajo N° ", legajo
			Leer sexo
			Si sexo <> 'f' y sexo <> 'F' y sexo <> 'm' y sexo <> 'M' Entonces
				Escribir "ERROR! Dato invalido"
			FinSi
		Hasta Que (sexo == 'f' o sexo == 'F') o (sexo == 'm' o sexo == 'M')
		
		Si (sexo == 'f') o (sexo == 'F') Entonces
			elec_sex <- 1
		SiNo
			elec_sex <- 2
		FinSi
		
		Repetir
			Escribir "Ingrese la edad del legajo N° ", legajo
			Leer edad
			Si (edad <= 0) Entonces
				Escribir "ERROR! Edad invalido!"
			FinSi
		Hasta Que (edad > 0)
		
		Segun elec_sex Hacer
			1:
				Si(primer_F == 0) Entonces
					leg_F_joven <- legajo
					edad_F_joven <- edad
					primer_F <- 1
				SiNo
					si (edad < edad_F_joven) Entonces
						leg_F_joven <- legajo
						edad_F_joven <- edad_F_joven
					FinSi
				FinSi
			2:
				Si(primer_M == 0) Entonces
					leg_M_viejo <- legajo
					edad_M_viejo <- edad
					primer_M <- 1
				SiNo
					si (edad > edad_M_viejo) Entonces
						leg_M_viejo <- legajo
						edad_M_viejo <- edad_M_viejo
					FinSi
				FinSi
			De Otro Modo:
				Escribir "ERROR inesperado!"
		Fin Segun
		
		Escribir "Ingrese el nombre del legajo N° ", legajo
		leer nombre
		inicial <- Subcadena(nombre, 1, 1)
		
		Si (inicial == 'j') o (inicial == 'J') Entonces
			promedio_J <- promedio_J + 1
			flag_J <- 1
		FinSi
		
		cant <- cant +1
		
		Escribir "Ingrese el numero de legajo (-1 termina el ingreso)"
		Leer legajo
		
	Fin Mientras
	
	Si (flag_entrada == 0) Entonces
		Escribir "No se ingreso ningun dato valido"
	SiNo
		
		Escribir "El legajo de la primer mujer mas joven es: ", leg_F_joven
		Escribir "El legajo del primer hombre más viejo es: ", leg_M_viejo
		Escribir "El promedio los nombres que empiezan con J es: ", promedio_J / cant
		
		
	FinSi
	
FinAlgoritmo
