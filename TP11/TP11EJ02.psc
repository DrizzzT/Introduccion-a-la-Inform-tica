SubProceso CopiaVector(A Por Referencia,B Por Referencia,N Por Valor)
	Definir i Como Entero;
	Para i<-1 hasta N hacer
		B[i]<-A[i];
	FinPara
FinSubProceso

SubProceso CargarVector(V Por Referencia,N por referencia)
	Definir i Como Entero;
	Escribir "Ingrese el tamaño del vector";
	leer N;
	para i <- 1 hasta N hacer
		V[i]<-Aleatorio(0,100);
	FinPara
FinSubProceso

SubProceso MostrarVector(V Por Referencia,N Por Referencia)
	Definir i Como Entero;
	para i <- 1 hasta N Hacer
		Escribir V[i], "," Sin Saltar;
	FinPara
	Escribir "";
FinSubProceso

Algoritmo  TP11EJ02
	Dimension A[100];
	Dimension B[100];
	Definir A,B,N como entero;
	CargarVector(A,N);
	Escribir "El vector A resultante es:";
	MostrarVector(A,N);
	CopiaVector(A,B,N);
	Escribir "El vector B es: ";
	MostrarVector(B,N);
FinProceso
