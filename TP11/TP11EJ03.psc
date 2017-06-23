Funcion resultado<-BuscarPrimerImpar(V Por Referencia,N Por Valor)
	Definir i,resultado Como Entero;
	Definir band como logico;
	i<-1;
	band<-Verdadero;
	Mientras i <= N y band hacer
		si V[i] MOD 2 <> 0 entonces 
			resultado<-i;
			band<-falso;
		FinSi
		i<-i+1;
	finmientras
	si band Entonces
		resultado<-0;
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

Algoritmo  TP11EJ03
	Dimension V[100];
	Definir V,N como entero;
	CargarVector(V,N);
	Escribir "El vector resultante es:";
	MostrarVector(V,N);
	Escribir "La posicion del primer valor impar es: ", BuscarPrimerImpar(V,N);
FinProceso
