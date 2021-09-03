Algoritmo sin_titulo
	//Se ingresa un número entero y, la computadora indica si es primo o no
	
	Definir primo, tope, no_primo Como Entero
	
	no_primo <- 0 
	
	Repetir
		Escribir "Ingrese el numero a considerar: "
		Leer primo
		Si primo < 0 Entonces
			Escribir "ERROR! Numero invalido!"
		FinSi
	Hasta Que primo >= 0
	
	tope <- trunc(primo/2)
	
	Para contador <- 1 Hasta tope Con Paso 1 Hacer
	
		Si (primo mod contador == 0) y (contador <> 1) Entonces
			no_primo <- 1
		FinSi
		
	Fin Para
	
	Si (no_primo == 0) Y (primo <> 0 Y primo <> 1) Entonces
		Escribir "El numero ", primo, " es primo"
	SiNo
		Escribir "El numero ", primo, " NO es primo"
	FinSi
	
FinAlgoritmo
