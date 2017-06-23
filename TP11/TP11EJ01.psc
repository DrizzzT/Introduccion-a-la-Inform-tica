Funcion resultado<-ValorCentral(V Por Referencia,Fila Por Valor)
	Definir i Como Entero;
	Definir resultado como real;
	Si Fila MOD 2 = 0 entonces
		resultado<-(V[Fila/2]+V[Fila/2+1])/2;
	SiNo
		resultado<-V[(Fila+1)/2];
	FinSi
FinFuncion

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

Algoritmo  TP11EJ01
	Dimension V[100];
	Definir V,N como entero;
	CargarVector(V,N);
	Escribir "El vector resultante es:";
	MostrarVector(V,N);
	Escribir "El valor central del vector es: ", ValorCentral(V,N);
FinProceso
