Algoritmo sin_titulo
	//Se ingresa una lista de pares ordenados (número de socio, edad). El último es ('*', 0). 
	//La computadora debe indicar cuántas personas tienen más de 18 años y menos de 65, el número de socio del mayor y del menor.
	
	Definir socio, edad, flag, rango_edad, mayor_socio, mayor_edad, menor_socio, menor_edad Como Entero
	
	Repetir
		Escribir "Ingrese el numero de socio(0 - Fin de carga):"
		Leer socio
		Si (socio < 0) Entonces
			Escribir "ERROR! Nro de socio invalido!"
		FinSi
	Hasta Que (socio >=0)
	
	
	Mientras (socio <> 0) Hacer
		
		Repetir
			Escribir "Ingrese la edad del socio N° ", socio
			Leer edad
			Si (edad < 0) Entonces
				Escribir "ERROR! Edad invalida!"
			FinSi
		Hasta Que (edad >= 0)
		
		Si (flag == 0) Entonces
			mayor_socio <- socio
			mayor_edad <- edad
			menor_socio <- socio
			menor_edad <- edad
		SiNo
			Si (edad > mayor_edad) Entonces
				mayor_socio <- socio
				mayor_edad <- edad
				
			FinSi
			Si (edad < menor_edad) Entonces
				menor_socio <- socio
				menor_edad <- edad
			FinSi
		FinSi
		
		flag <- 1
		
		Si (edad >=18) y (edad <= 65) Entonces
			rango_edad <- rango_edad + 1
		FinSi
		
		Repetir
			Escribir "Ingrese el numero de socio(0 - Fin de carga):"
			Leer socio
			Si (socio < 0) Entonces
				Escribir "ERROR! Nro de socio invalido!"
			FinSi
		Hasta Que (socio >=0)
		
	Fin Mientras
	
	Si (flag == 0) Entonces
		Escribir "No se ingresaron Nros de socio validos"
	SiNo
		Escribir "La cantidad de socios en el rango 18-65 años es: ", rango_edad
		Escribir "El numero del primer socio mayor es: ", mayor_socio
		Escribir "El numero del primer socio menor es: " menor_socio
	FinSi
	
FinAlgoritmo
