Algoritmo sin_titulo
	//Se lee un número no determinado de veces una terna formada por legajo (int), edad (entero) y sueldo (real). El fin del lote se indica con un legajo = -1. Se desea emitir:
	//- el legajo del más joven
	//- el sueldo promedio de quienes tengan entre 20 y 30 años
	//- el legajo del último de la lista
	
	Definir legajo, edad, flag_entrada, leg_joven, edad_joven, leg_ultimo, cant_2030 Como Entero
	Definir sueldo, prom_2030 Como Real
	
	Escribir "Ingrese el numero de legajo (-1 termina el ingreso)"
	Leer legajo
	
	Mientras (legajo <> -1) Hacer
		
		Repetir
			Escribir "Ingrese la edad del empleado N° ", legajo
			Leer edad
			Si (edad < 18) Entonces
				Escribir "ERROR! Edad invalido!"
			FinSi
		Hasta Que (edad >= 18)
		
		Si (flag_entrada == 0) Entonces
			edad_joven <- edad
			leg_joven <- legajo
			flag_entrada <- 1
		SiNo
			si (edad < edad_joven) Entonces
				edad_joven <- edad
				leg_joven <- legajo
			FinSi
		FinSi
		
		
		Repetir
			Escribir "Ingrese el sueldo empleado N° ", legajo
			Leer sueldo
			Si (sueldo <= 0) Entonces
				Escribir "ERROR! Sueldo invalido!"
			FinSi
		Hasta Que (sueldo > 0)
		
		Si (edad >= 20) Y (edad <= 30) Entonces
			prom_2030 <- prom_2030 + sueldo 
			cant_2030 <- cant_2030 + 1
		FinSi
		
		leg_ultimo <- legajo
		
		Escribir "Ingrese el numero de legajo (-1 termina el ingreso)"
		Leer legajo
		
	Fin Mientras
	
	
	Si (flag_entrada == 0) Entonces
		Escribir "No se ingreso ningun dato valido"
	SiNo
		
		prom_2030 <- prom_2030 / cant_2030
		
		Escribir "1- El legajo del primer empleado ingresado mas joven es: ", leg_joven
		Escribir "2- El promedio de sueldo de los empleados entre 20 y 30 años es: ", prom_2030
		Escribir "3- El legajo del ultimo empleado ingresado es : ", leg_ultimo
	
	FinSi
	
	
FinAlgoritmo
