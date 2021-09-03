Algoritmo sin_titulo
	//Se ingresa una lista de ternas (legajo, edad, sexo). 
	//El fin de los datos se indica ingresando el legajo == -1. La computadora debe indicar
	//- si en la lista hay hombres de más de 90 años
	//- en caso afirmativo cuántos
	//- mostrar el legajo de la mujer más joven
	//- la edad promedio de los hombres
	
	Definir legajo, edad, flag_90, legajo_mujer_joven, edad_mujer_joven, flag_entrada, flag_H, flag_M Como Entero
	Definir sexo Como Caracter
	Definir promedio_H, aux_prom_H Como Real
	
	
	Repetir
		Escribir "Ingrese el legajo(-1 - Fin de carga):"
		Leer legajo
		Si (legajo < -1) Entonces
			Escribir "ERROR! Nro de legajo invalido!"
		FinSi
	Hasta Que (legajo >= -1)
	
	Mientras (legajo <> -1) Hacer
		
		flag_entrada <- 1
		
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
		
		Si (sexo == 'm') O (sexo == 'M') Entonces
			flag_H <- flag_H + 1
			aux_prom_H <- aux_prom_H + edad
			Si (edad > 90) Entonces
				flag_90 <- flag_90 +1
			FinSi
		FinSi
		
		Si (sexo == 'f') O (sexo == 'F') Entonces
			flag_M <- 1
			
			Si(edad_mujer_joven == 0) Entonces
				edad_mujer_joven <- edad
				legajo_mujer_joven <- legajo
			FinSi
		Sino 
			Si (edad < edad_mujer_joven) Entonces
				edad_mujer_joven <- edad
				legajo_mujer_joven <- legajo
			FinSi
		FinSi
		
		Repetir
			Escribir "Ingrese el legajo(-1 - Fin de carga):"
			Leer legajo
			Si (legajo < -1) Entonces
				Escribir "ERROR! Nro de legajo invalido!"
			FinSi
		Hasta Que (legajo >= -1)
		
		
	Fin Mientras
	
	Si( flag_entrada == 0) Entonces
		Escribir "No se ingresaron datos validos"
	SiNo
		Si (flag_90 <> 0) Entonces
			Escribir "La cantidad de hombres mayores a 90 años es ", flag_90
		SiNo
			Escribir "No se ingresaron hombres mayores a 90 años"
		FinSi
		
		Si (flag_M <> 0) Entonces
			Escribir "El legajo de la mujer más joven es ", legajo_mujer_joven, "con una edad de ", edad_mujer_joven
		SiNo
			Escribir "No se ingresaron mujeres"
		FinSi
		
		Si (flag_H <> 0) Entonces
			promedio_H <- aux_prom_H /flag_H
			Escribir "El promedio de edad de los hombres es ", promedio_H
		SiNo
			Escribir "No se ingresaron hombres"
		FinSi
		
	FinSi
	
	
FinAlgoritmo
