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

SubProceso ValorMedio(A por referencia,B por referencia,C por referencia)
	Si (A<=B Y B<=C) O (A>=B Y B>=C) entonces
		Escribir "El valor medio es: ", B;
	SiNo
		Si A=B O A=C entonces
			Escribir "No existe valor medio xq hay dos valores iguales";
		FinSi
		ValorMedio(B,C,A);
	FinSi
FinSubProceso

Proceso e
	Definir A,B,C Como Entero;
	Escribir "Ingrese un valor para A,B y C";
	Leer A,B,C;
	ValorMedio(A,B,C);
FinProceso
