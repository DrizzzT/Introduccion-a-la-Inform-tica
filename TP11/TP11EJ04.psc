SubProceso eliminar(V Por Referencia, N Por Referencia, pos por valor)
Definir i Como Entero;
	para i <- pos hasta N-1 hacer
		V[i] <- V[i+1];
	finpara
	N <- N-1;
FinSubProceso

SubProceso  EliminarImpares(V Por Referencia,N Por referencia)
	Definir i Como Entero;
	Definir resultado como real;
	Para i<-1 hasta N hacer
		si V[i] mod 2 <> 0 entonces
			Eliminar(V,N,i);
		FinSi
	FinPara
FinSubProceso

SubProceso resultado<-Validar(V Por Referencia,N por valor)
	definir resultado como logico;
	resultado<-verdadero;
	para i<-1 hasta N-1 hacer
		Si V[i]=V[N] entonces
			resultado<-falso;
		FinSi
	FinPara
FinSubProceso

SubProceso CargarVector(V Por Referencia,N por referencia)
	Definir i Como Entero;
	Definir	op como caracter;
	i <- 0;
	Repetir
		i <- i + 1;
		Repetir
			leer V[i];
		Hasta Que Validar(V,i)
		escribir "mas datos S/N";
		leer op;
	Hasta que op = 'N'
	N <- i;
FinSubProceso

SubProceso MostrarVector(V Por Referencia,N Por Referencia)
	Definir i Como Entero;
	para i <- 1 hasta N Hacer
		Escribir V[i], "," Sin Saltar;
	FinPara
	Escribir "";
FinSubProceso

SubProceso Menu(op por referencia)
	Escribir "Elija una opcion";
	Escribir "1. Cargar Vector con numeros no repetidos";
	Escribir "2. Mostrar Vector";
	Escribir "3. Eliminar Todos los valores impares";
	Leer op;
FinSubProceso

Algoritmo  TP11EJ04
	Dimension V[100];
	Definir V,N,opc como entero;
	Repetir
		Menu(opc);
		segun opc hacer
			1: CargarVector(V,N);
			2: MostrarVector(V,N);
			3: EliminarImpares(V,N);
			4: Escribir "Fin del Programa.";
			De Otro Modo:
				Escribir "Opcion Incorrecta";
		FinSegun
	Hasta Que opc=4
FinProceso
