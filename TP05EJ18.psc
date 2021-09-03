Algoritmo sin_titulo
	//Se ingresa número n y a continuación n enteros de 3 cifras, informar que porcentaje de ellos son capicúas.
	Definir cantidad, num, cant_capi Como Entero
	
	Repetir
		Escribir "Ingrese la cantidad de numeros a considerar: "
		Leer cantidad
		Si cantidad <= 0 Entonces
			Escribir "ERROR! numero invalido!"
		FinSi
	Hasta Que cantidad > 0
	
	Para contador <- 1 Hasta cantidad Con Paso 1 Hacer
		
		Repetir
			Escribir "Ingrese el ", contador, "° numero"
			Leer num
			Si num < 100 o num > 999 Entonces
				Escribir "ERROR! Numero ingresado no contiene 3 cifras!"
			FinSi
		Hasta Que num >= 100 Y num <= 1000
		
		Si trunc(num/100) == num mod 10 Entonces
			cant_capi <- cant_capi + 1
		FinSi
		
	Fin Para
	
	Si cant_capi <> 0 Entonces
		Escribir "El porcentaje de numeros capicuas ingresados fue: ", (cant_capi / cantidad) * 100, "%"
	SiNo
		Escribir "No se ingresaron numeros capicuas"
	FinSi
	
FinAlgoritmo
