Proceso PruebaDeEscritorio1
	Definir a Como Real;
	Definir continua Como Logico;
	Definir contador1, contador2 Como Entero;
	a<-100;
	contador1<-0;
	contador2<-0;
	continua<-Verdadero;
	Mientras continua Hacer
		Si a/2>10 Entonces
			a<-a/2;
			contador1<-contador1+1;
		Sino
			a<-a-2;
			contador2<-contador2+1;
		FinSi
		continua<-a>0;
	FinMientras
	Escribir "Contador1: ", contador1;
	Escribir "Contador2: ", contador2;	
FinProceso