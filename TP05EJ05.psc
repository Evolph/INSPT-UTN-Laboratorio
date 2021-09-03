Algoritmo sin_titulo
	//Se leen N números; se emite su promedio
	
	definir cantidad Como Entero
	definir num Como Real
	definir promedio Como Real
	definir acum Como Real
	
	Repetir
		escribir "Ingrese la cantidad de numeros reales a leer: "
		leer cantidad
		si cantidad < 1 Entonces
			Escribir  "ERROR! Cantidad invalida!"
		FinSi
	Hasta Que cantidad > 0
	
	Para contador <- 1 Hasta cantidad Con Paso 1 Hacer
		escribir "Ingrese un numero real ", contador, ": "
		Leer num
		acum <- acum + num
		
	Fin Para
	
	promedio <- acum / cantidad
	
	Escribir "El promedio de los numeros ingresados es :", promedio
	
FinAlgoritmo
