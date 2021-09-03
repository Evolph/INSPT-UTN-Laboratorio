Algoritmo sin_titulo
	//Durante el día, una farmacia ingresa los importes de sus ventas. 
	//Junto a cada importe, se ingresa una 'C', si la venta fue realizada con descuento por obra social
	//o una 'S', si la venta fue sin descuento. 
	//Al final del día, se ingresa una venta negativa. 
	//La computadora muestra el monto total de las ventas del día y el porcentaje de clientes que compraron con descuento.
	
	Definir importe ,total, porcentaje_descuento Como Real
	Definir tipo Como Caracter
	Definir flag_entrada, cant_descuento Como Entero
	
	Mientras (importe >= 0) Hacer
		Escribir "Ingrese el importe (valor negativo finaliza carga):"
		Leer importe
		Si(importe >= 0) Entonces
			flag_entrada <- flag_entrada + 1
			
			Repetir
				Escribir "Ingrese C (con descuento) o S (sin descuento) ", legajo
				Leer tipo
				Si (tipo <> 'c') Y (tipo <> 'C')  Y (tipo <> 's') Y (tipo <> 'S') Entonces
					Escribir "ERROR! Tipo invalido!"
				FinSi
			Hasta Que (tipo == 'c') O (tipo == 'C')  O (tipo == 's') O (tipo == 'S')
			
			total <- total + importe
			
			Si(tipo == 'c') O (tipo == 'C') Entonces
				cant_descuento <- cant_descuento + 1
			FinSi
		FinSi
	Fin Mientras
	
	Si (flag_entrada == 0) Entonces
		Escribir "No se ingresaron datos validos"
	SiNo
		Escribir "El monto total de ventas del dia es ", total
		Si (cant_descuento <> 0) Entonces
			porcentaje_descuento <- (cant_descuento * 100 /flag_entrada)
			Escribir "El porcentaje de ventas con descuento es ", porcentaje_descuento, "%"
		FinSi
	FinSi
	
	
FinAlgoritmo
