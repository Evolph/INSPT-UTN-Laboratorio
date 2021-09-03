Algoritmo sin_titulo
	//) Se lee un número no determinado de veces un legajo, una edad (entero) y un grupo de 4 números reales correspondientes a sueldos. 
	//El fin de datos se indica con legajo -1, y no se lee edad ni sueldos en ese caso. 
	//Se desea emitir el mayor sueldo promedio cobrado por personas de entre 20 y 30 años inclusive, 
	//y el legajo de quien lo haya cobrado. 
	//Si hay varias personas en esa situación, emitir los datos de la última que verifique la condición.
	
	Definir legajo, edad, flag_ingreso, flag_2030, legajo_mayor_2030 Como Entero
	Definir sueldo, aux_sueldo, sueldo_promedio, promedio_2030_mayor Como Real
	
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
		
		Para contador <- 1 Hasta 4 Con Paso 1 Hacer
			Repetir
				Escribir "Ingrese el ", contador, "° sueldo de Legajo ", legajo
				Leer sueldo
				Si (sueldo <= 0) Entonces
					Escribir "ERROR! Sueldo invalido!"
				FinSi
			Hasta Que (sueldo > 0)
			aux_sueldo <- aux_sueldo + sueldo
		Fin Para
		
		sueldo_promedio <- aux_sueldo / 4
		aux_sueldo <- 0
		
		Si(edad >= 20) Y (edad <= 30) Entonces
			flag_2030 <- 1
			Si (flag_ingreso == 0) Entonces
				promedio_2030_mayor <- sueldo_promedio
				legajo_mayor_2030 <- legajo
			SiNo
				Si (sueldo_promedio >= promedio_2030_mayor) Entonces
					promedio_2030_mayor <- sueldo_promedio
					legajo_mayor_2030 <- legajo
				FinSi
			FinSi
		FinSi
		
		
		flag_ingreso <- 1
		
		Repetir
			Escribir "Ingrese el legajo(-1 - Fin de carga):"
			Leer legajo
			Si (legajo < -1) Entonces
				Escribir "ERROR! Nro de legajo invalido!"
			FinSi
		Hasta Que (legajo >= -1)
		
	Fin Mientras
	
	Si(flag_ingreso == 0) Entonces
		Escribir "No se ingresaron datos validos"
	SiNo
		Si(flag_2030 <> 0) Entonces
			Escribir "El mayor promedio de sueldo entre personas de 20 y 30 años es: ", promedio_2030_mayor
			Escribir "Y el legajo de dicha persona es ", legajo_mayor_2030
			
		SiNo
			Escribir "No se ingresaron personas de entre 20 y 30 años"
		FinSi
		
	FinSi
	
FinAlgoritmo
