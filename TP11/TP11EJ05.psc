SubProceso Insertar(V Por Referencia, N Por Referencia)
	Definir i,X,pos Como Entero;
	Escribir "Ingrese el valor a insertar: " Sin Saltar;
	Leer X;
	Escribir "Ingrese la posicion a insertar: "Sin Saltar;
	leer pos;
	para i <- N hasta pos Con Paso -1 hacer
		V[i+1] <- V[i];
	finpara
	V[pos]<-X;
	N <- N+1;
FinSubProceso

SubProceso Agregar(V Por Referencia, N Por Referencia)
	Definir i,X Como Entero;
	Escribir "Ingrese el valor a agregar: " Sin Saltar;
	Leer X;
	N <- N+1;
	V[N]<-X;
FinSubProceso

SubProceso CambiarValorCentral(V Por Referencia,N Por Valor)
	Definir i,X Como Entero;
	Escribir "Ingrese el nuevo valor central";
	Leer X;
	Si Fila MOD 2 = 0 entonces
		V[Fila/2]<-X;
		V[Fila/2+1]<-X;
	SiNo
		V[(Fila+1)/2]<-X;
	FinSi
FinSubProceso

SubProceso Reemplazar(V Por Referencia,N Por Valor)
	Definir i,A,B Como Entero;
	Escribir "Ingrese el valor a ser reemplazado: " Sin Saltar;
	Leer A;
	Escribir "Ingrese el valor con el cual reemplazar: " Sin Saltar;
	Leer B;
	para i <- 1 hasta N Hacer
		si V[i]=A Entonces
			V[i]<-B;
		FinSi
	FinPara
FinSubProceso 

SubProceso Eliminar(V Por Referencia, N Por Referencia, pos por valor)
Definir i Como Entero;
	para i <- pos hasta N-1 hacer
		V[i] <- V[i+1];
	finpara
	N <- N-1;
FinSubProceso

SubProceso  EliminarValor(V Por Referencia,N Por referencia)
	Definir i,X Como Entero;
	Definir resultado como real;
	Escribir "Ingrese el valor a eliminar";
	Leer X;
	Para i<-1 hasta N hacer
		si V[i] = X entonces
			Eliminar(V,N,i);
		FinSi
	FinPara
FinSubProceso

SubProceso CargarVector(V Por Referencia,N por referencia)
	Definir i Como Entero;
	Definir	op como caracter;
	i <- 0;
	Repetir
		i <- i + 1;
		Escribir "Ingrese el valor n°",i;
		leer V[i];
		escribir "mas datos S/N";
		leer op;
	Hasta que Mayusculas(op) = 'N'
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
	Escribir "********************";
	Escribir "Elija una opcion";
	Escribir "1. Cargar Vector";
	Escribir "2. Mostrar Vector";
	Escribir "3. Insertar un valor";
	Escribir "4. Agregar un valor";
	Escribir "5. Reemplazar un valor con otro";
	Escribir "6. Cambiar el valor central";
	Escribir "7. Eliminar elemento de una posicion";
	Escribir "8. Eliminar elementos de un un valor";
	Escribir "9. Salir";
	Escribir "********************";
	Leer op;
FinSubProceso

Algoritmo  TP11EJ05
	Dimension V[100];
	Definir V,N,pos,opc como entero;
	Repetir
		Menu(opc);
		segun opc hacer
			1: CargarVector(V,N);
			2: MostrarVector(V,N);
			3: Insertar(V,N);
			4: Agregar(V,N);
			5: Reemplazar(V,N);
			6: CambiarValorCentral(V,N);
			7: Escribir "Ingrese la posicion a eliminar";
				Leer pos;
				Eliminar(V,N,pos);
			8: EliminarValor(V,N);
			9: Escribir "Fin del Programa.";
			De Otro Modo:
				Escribir "Opcion Incorrecta";
		FinSegun
	Hasta Que opc=9
FinProceso
