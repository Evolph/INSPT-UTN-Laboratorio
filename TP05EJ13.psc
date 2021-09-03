Algoritmo sin_titulo
	//Mientras la respuesta sea afirmativa, se leen los tres lados de un triángulo y se informa su perímetro y que tipo de triangulo forma.
	
	Definir ladoA, ladoB, ladoC Como Real
	Definir seguir Como Entero
	
	seguir <- 1
	
	Mientras seguir == 1 Hacer
		
		Repetir
			Escribir "Ingrese el valor del lado A del triangulo: "
			Leer ladoA
			Escribir "Ingrese el valor del lado B del triangulo: "
			Leer ladoB
			Escribir "Ingrese el valor del lado C del triangulo: "
			Leer ladoC
			
			Si ladoA <= 0 o ladoB <= 0 o ladoC <= 0 Entonces
				Escribir "ERROR! Valores de los lados invalidos!"
			FinSi
			
		Hasta Que ladoA > 0 y ladoB > 0 y ladoC > 0
		
		Escribir "El perimetro del triangulo dado es ", ladoA + ladoB + ladoC
		
		Si ladoA == ladoB Entonces
			Si ladoA == ladoC Entonces
				Escribir "El triangulo es equilatero"
			SiNo
				Escribir "El triangulo es isosceles"
			FinSi
		SiNo
			Si ladoB == ladoC Entonces
				Escribir "El tirangulo es isosceles"
			SiNo
				Escribir "El triangulo es escaleno"
			FinSi
		FinSi
		
		Repetir
			Escribir "Desea seguir? 1 - SI, 0 - NO"
			Leer seguir
			Si seguir <> 1 y seguir <> 0 Entonces
				Escribir "ERROR! Opcion invalida!"
			FinSi
		Hasta Que seguir == 1 o seguir == 0
		
	Fin Mientras
FinAlgoritmo
