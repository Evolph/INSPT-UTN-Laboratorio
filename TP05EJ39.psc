Algoritmo sin_titulo
	//Se lee un número no determinado de veces estos datos: legajo, edad (entero), sueldo (real), sexo (carácter M o F). 
	//El fin de datos se indica con legajo -1. Se quiere determinar:
	//- promedio de edad de los hombres.
	//- legajo de la mujer que cobre el mayor sueldo, y valor del sueldo
	//- cuántos juegos de datos fueron procesados.
	
	
	Definir legajo, edad, flag_cantidad, cant_H, legajo_mayor_sueldo_M, flag_M Como Entero
	Definir sueldo, sueldo_mayor_M, promedio_edad_H, aux_promedio Como Real
	Definir sexo Como Caracter
	
	Repetir
		Escribir "Ingrese el legajo(-1 - Fin de carga):"
		Leer legajo
		Si (legajo < -1) Entonces
			Escribir "ERROR! Nro de legajo invalido!"
		FinSi
	Hasta Que (legajo >= -1)
	
	Mientras (legajo <> -1) Hacer
		
		Repetir
			Escribir "Ingrese la edad del legajo ", legajo
			Leer edad
			Si (edad < 1) Entonces
				Escribir "ERROR! Edad invalida!"
			FinSi
		Hasta Que (edad >= 1)
		
		Repetir
			Escribir "Ingrese el sexo del legajo ", legajo
			Leer sexo
			Si (sexo <> 'f') Y (sexo <> 'F')  Y (sexo <> 'm') Y (sexo <> 'M') Entonces
				Escribir "ERROR! Sexo invalido!"
			FinSi
		Hasta Que (sexo == 'f') O (sexo == 'F')  O (sexo == 'm') O (sexo == 'M')
		
		Repetir
			Escribir "Ingrese el sueldo del legajo ", legajo
			Leer sueldo
			Si (sueldo <= 0) Entonces
				Escribir "ERROR! Sueldo invalida!"
			FinSi
		Hasta Que (edad > 0)
		
		Si (sexo == 'm') O (sexo == 'M') Entonces
			cant_H <- cant_H +1
			aux_promedio <- aux_promedio + edad
		SiNo
			
			flag_M <- 1
			Si(flag_cantidad == 0) Entonces
				sueldo_mayor_M <- sueldo
				legajo_mayor_sueldo_M <- legajo
			SiNo
				Si( sueldo > sueldo_mayor_M) Entonces
					sueldo_mayor_M <- sueldo
					legajo_mayor_sueldo_M <- legajo
				FinSi
			FinSi
		FinSi
		
		flag_cantidad <- flag_cantidad + 1
		
		Repetir
			Escribir "Ingrese el legajo(-1 - Fin de carga):"
			Leer legajo
			Si (legajo < -1) Entonces
				Escribir "ERROR! Nro de legajo invalido!"
			FinSi
		Hasta Que (legajo >= -1)
		
	Fin Mientras
	
	Si (flag_cantidad == 0) Entonces
		Escribir "No se ingresaron datos validos"
	SiNo
		Escribir "Se ingreso ", flag_cantidad, " juego(s) de datos"
		Si (cant_H == 0) Entonces
			Escribir "No se ingresaron datos de hombres"
		SiNo
			promedio_edad_H <- aux_promedio / cant_H
			Escribir "El promedio de edad de los hombres es de ", promedio_edad_H
		FinSi
		
		Si (flag_M == 0) Entonces
			Escribir "No se ingresaron datos de mujeres"
		SiNo
			Escribir "El mayor sueldo ganado por una mujer es ", sueldo_mayor_M
			Escribir "Y corresponde al legajo N° ", legajo_mayor_sueldo_M
		FinSi
		
	FinSi
	
FinAlgoritmo
