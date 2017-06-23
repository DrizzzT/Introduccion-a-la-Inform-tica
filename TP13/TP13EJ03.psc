SubProceso CargarVector(V Por Referencia,N por referencia)
	Definir i Como Entero;
	Escribir "Ingrese el tamaño del vector";
	leer N;
	para i <- 1 hasta N hacer
		V[i]<-Aleatorio(0,10);
	FinPara
FinSubProceso

SubProceso MostrarVector(V Por Referencia,N Por Referencia)
	Definir i Como Entero;
	para i <- 1 hasta N Hacer
		Escribir V[i], "," Sin Saltar;
	FinPara
	Escribir "";
FinSubProceso

SubProceso cpiV(V Por Referencia,N Por Referencia,C Por Referencia,P Por Referencia,I Por Referencia)
	Si N>0 entonces
		Si V[N] = 0 entonces
			C<-C+1;
		SiNo
			Si V[N] MOD 2 = 0 Entonces
				P<-P+1;
			SiNo
				I<-I+1;	
			FinSi
		FinSi
		N<-N-1;
		cpiV(V,N,C,P,I);
		N<-N+1;		
	FinSi	
FinSubProceso

Proceso TP13EJ03
	Definir V,N,C,P,I Como Entero;;
	Dimension V[100];
	CargarVector(V,N);
	MostrarVector(V,N);
	C<-0;
	P<-0;
	I<-0;
	cpiV(V,N,C,P,I);
	Escribir "La cantidad de ceros del vector es: ", C;
	Escribir "La cantidad de pares del vector es: ", P;
	Escribir "La cantidad de impares del vector es: ", I;
FinProceso
