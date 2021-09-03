Algoritmo sin_titulo
	//Se ingresa un número natural N, seguido de N reales. Se emite el promedio de los números positivos, el promedio de los números negativos y la cantidad de ceros.
	Definir cantidad, ceros, aux_pos, aux_neg Como Entero
	Definir num, prom_pos, prom_neg Como Real
	
	Repetir
		Escribir "Ingrese la cantidad de valores reales a trabajar: "
		Leer cantidad
		Si cantidad < 1 Entonces
			Escribir "ERROR! Cantidad invalida!"
		FinSi
	Hasta Que cantidad > 0
	
	Para contador <- 1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Ingrese el valor real ", contador , ":"
		leer num
		si num > 0 Entonces
			prom_pos <- prom_pos + num
			aux_pos <- aux_pos + 1
		SiNo
			si num < 0 Entonces
				prom_neg <- prom_neg + num
				aux_neg <- aux_neg +1
			SiNo
				ceros <- ceros + 1
			FinSi
		FinSi
	Fin Para
	
	si prom_pos <> 0 Entonces
		prom_pos <- prom_pos / aux_pos
		Escribir "El promedio de los numeros positivos es: ", prom_pos
	SiNo
		Escribir "No hubo numeros positivos"
	FinSi
	
	si prom_neg <> 0 Entonces
		prom_neg <- prom_neg / aux_neg
		Escribir "El promedio de los numeros negativos es: ", prom_neg
	SiNo
		Escribir "No hubo numeros negativos"
	FinSi
	
	Escribir "La cantidad de ceros fue: ", ceros
	
FinAlgoritmo
