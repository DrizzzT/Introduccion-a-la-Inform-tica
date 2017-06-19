Proceso TP7EJ4
	Definir N,S,i,fact,j,Suma,Contador Como Entero;
	Suma<-0;
	Contador<-0;
	Repetir
		Escribir "Ingrese un valor entero N";
		Leer N;
		S<-0;
		Para i<-1 hasta N Hacer
			fact<-1;
			Para j<-1 hasta i Hacer
				fact<-fact*j;
			FinPara
			S<-S+(-1)^i*fact;
		FinPara
		Escribir "S = ", S;
		Suma<-Suma+S;
		Contador<-Contador+1;
	Hasta Que N=0
	Escribir "El promedio de los valores de S es: ", Suma/Contador;
FinProceso