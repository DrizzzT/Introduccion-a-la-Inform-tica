Proceso N_Primos
	Definir N, X, i, AuxX,CNOP,Cont como Entero;
	Definir es_primo como logico;
	Escribir "Ingrese N";
	Leer N;
	CNOP <- 0;
	para Cont<-1 Hasta N Con Paso 1 Hacer
		X <- Azar(10);
		es_primo<-Verdadero;
		i<-2;
		AuxX<-Redon(RC(X));
		Mientras i<AuxX Y es_primo Hacer
			Si X MOD i = 0 Entonces
				es_primo<-Falso;
			FinSi
			i<-i+1;
		FinMientras
		Si es_primo y x>1 Entonces
			Escribir X, "es primo";
		Sino
			CNOP<-CNOP+1;
		FinSi	
	FinPara
FinProceso