Proceso TP7EJ8
	Definir V,P,i,k,SEL Como Entero;
	Definir OK Como Logico;
	Definir S Como Real;
	P<-1;
	S<-0.0;
	Repetir
		Escribir "Ingrese V, SEL";
		Leer V,SEL;
		OK<-(V>0) y (SEL<10);
		Si OK Entonces
			Segun SEL hacer
				1: i<-1;
					Repetir
						S<-S+V*i;
						i<-i+1;
					Hasta Que S>20
					P<-P*i;
				2:
					Para k <- 1 hasta V Con Paso 4 Hacer
						S<-S+V;
					FinPara
					P<-P*k;
				De Otro Modo:
					S<-S+V;
			FinSegun
		FinSi
	Hasta Que NO OK
	Escribir S;
	Escribir P;
FinProceso