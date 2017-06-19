Proceso TP7EJ6
	Definir Stock, cant, clientes como entero;
	Definir Precio, Total, Recaudacion Como Real;
	Definir TipoPago,rsp como cadena;	
	Escribir "Ingrese el stock inicial del producto XX";
	Leer Stock;
	Escribir "Ingrese el precio de oferta del dia de hoy";
	Leer Precio;
	Recaudacion<-0;
	clientes<-0;
	Repetir
		Repetir
			Escribir "Quedan ", Stock, " Productos en Stock ¿Cuantos desea comprar?";
			Leer Cant;
			Si cant > stock entonces
				Escribir "Usted esta intentando llevar mas productos de los que hay";
			FinSi
		Hasta Que Cant>0 y Cant<=Stock		
		Stock<-Stock-Cant;
		Escribir "Como desea abogar el pago? (contado/tarjeta)";
		Leer TipoPago;		
		Si Mayusculas(TipoPago)="CONTADO" Entonces
			Total<-precio*cant*0.90;//Descuento de 10%
		Sino
			Total<-precio*cant*1.05;//Recargo del 5%
		FinSi
		Escribir "El Cliente Debe pagar: ", Total;
		Recaudacion<-Recaudacion+Total;
		clientes<-Clientes+1;
		Escribir "Desea Ingresar mas datos? (Si/No)";
	Hasta Que Stock=0 o Mayusculas(rsp)='NO'
	Escribir "La recaudacion del dia fue de :", Recaudacion;
	Escribir "Se atendieron ",clientes," clientes.";
	Escribir "El Stock restante es: ", stock;
FinProceso