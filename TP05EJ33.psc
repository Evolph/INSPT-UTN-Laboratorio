Algoritmo sin_titulo
	//Se ingresan valores num�ricos no nulos. 
	//El fin de los datos se indica ingresando un 0. 
	//La computadora debe emitir el valor del mayor n�mero ingresado e indicar cu�ntas veces apareci� en la lista.
	
	Definir num Como Real
	Definir flag, maximo, cant_max Como Entero
	
	Escribir "Ingrese un numero (0 - finaliza carga)"
	Leer num
	
	Mientras (num <> 0) Hacer
		
		Si (flag == 0) Entonces
			maximo <- num
			cant_max <- 1
			flag <- 1
		SiNo
			Si (num == maximo) Entonces
				cant_max <- cant_max +1
			SiNo
				Si (num > maximo) Entonces
					maximo <- num
					cant_max <- 1
				FinSi
			FinSi
		FinSi
		
		
		Escribir "Ingrese un numero (0 - finaliza carga)"
		Leer num
		
	Fin Mientras
	
	Si (flag == 0) Entonces
		Escribir "No se ingresaron valores validos"
	SiNo
		Escribir "El valor m�ximo ingresado fue ", maximo
		Escribir "Se ingreso ", cant_max, " veces"
	FinSi
	
	
FinAlgoritmo
