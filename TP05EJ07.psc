Algoritmo sin_titulo
	//Se lee un n�mero no determinado de veces un n�mero entero no nulo. El fin de datos se indica con un 0. Se desea emitir el valor del promedio de los n�meros positivos le�dos
	
	definir num, acum, contador Como Entero
	definir promedio como real
	
	Escribir "Ingrese un numero entero no nulo: "
	leer num
	
	Mientras num <> 0 Hacer
		si num > 0 Entonces
			acum <- acum + num
		FinSi
		contador <- contador +1
		Escribir "Ingrese un numero entero no nulo: "
		leer num
	Fin Mientras
	
	si contador <> 0 Entonces
		promedio <- acum / contador
	FinSi
		
	Escribir "El promedio de los numeros positivos es: ", promedio
	
FinAlgoritmo
