Algoritmo HorasTrabajadas
	Definir TopHoras, MenosHoras Como Entero
	Dimension Horas[7, 5], TotalEmp[5]
	
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		Escribir "Dia ", i
		Para j<-1 Hasta 5 Con Paso 1 Hacer
			Escribir "Ingresar las horas trabajadas por el empleado ", j
			leer Horas[i, j]
		Fin Para
	Fin Para
	
	Para j<-1 Hasta 5 Con Paso 1 Hacer
		Para i<-1 Hasta 7 Con Paso 1 Hacer
			TotalEmp[j]<-Horas[i, j] + TotalEmp[j]
		Fin Para
	Fin Para
	
	Definir X, Z Como Entero
	MenosHoras <- 100000000
	TopHoras <- 0
	Para j<-1 Hasta 5 Con Paso 1 Hacer
		Si TotalEmp[j] > TopHoras  Entonces
			TopHoras<-TotalEmp[j]
			X<-j
		Fin Si
	Fin Para
	
	Para j<-1 Hasta 5 Con Paso 1 Hacer
		Si TotalEmp[j] <= MenosHoras  Entonces
			MenosHoras<-TotalEmp[j]
			Z<-j
		Fin Si
	Fin Para

	
	Escribir "El empleado que mas horas trabajo fue el ", X, " con ", TotalEmp[X], " horas trabajadas"
	Escribir "El empleado que menos horas trabajo fue el ", Z, " con ", TotalEmp[Z], " horas trabajadas"
FinAlgoritmo
