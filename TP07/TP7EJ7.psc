Proceso TP7EJ7
	Definir Stock,op,cantidad,ing,sal Como Entero;
	Definir rsp Como Caracter;
	Escribir "Stock Inicial";
	Leer Stock;
	ing<-0;
	sal<-0;
	Repetir
		Escribir "1-ingresa 2-sale";
		Leer op;
		Escribir "cantidad";
		Leer cantidad;
		Si op=1 entonces
			stock<-stock+cantidad;
			ing<-ing+cantidad;
		Sino			
			Si cantidad>Stock Entonces				
				cantidad<-Stock;
				Escribir "NO ALCANZA se lleva", cantidad;
			FinSi
			Stock<-stock-cantidad;
			sal<-sal+cantidad;
		FinSi
		Escribir "¿Desea continuar? S/N";
		Leer rsp;
	Hasta Que Mayusculas(rsp)='N';
	Escribir "Stock Final ", Stock;
	Escribir "Ingresaron ", ing;
	Escribir "Salieron ", sal;
FinProceso