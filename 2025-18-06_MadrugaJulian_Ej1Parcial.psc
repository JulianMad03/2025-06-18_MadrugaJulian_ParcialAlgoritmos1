Algoritmo StockTienda
	definir Total Como Entero
	Dimension Matriz[3, 4], Pasillo[3]
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Para j<-1 Hasta 4 Con Paso 1 Hacer
			Matriz[i, j]<-azar(10)
		Fin Para
	Fin Para
	
	Total<-0
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Para j<-1 Hasta 4 Con Paso 1 Hacer
			Total<-Matriz[i, j] + Total
			Pasillo[i]<-Matriz[i, j] + Pasillo[i]
		Fin Para
	Fin Para
	
	Escribir "La tienda tiene un stock total de ", Total
	TopPasillo<-0
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Escribir "El pasillo ", i, " tiene ", Pasillo[i], " de stock "
		Si Pasillo[i]>TopPasillo Entonces
			TopPasillo<-Pasillo[i]
			X<-i
		Fin Si
	Fin Para
	
	
	Escribir "El pasillo con mas stock total es el ", X
	
FinAlgoritmo
