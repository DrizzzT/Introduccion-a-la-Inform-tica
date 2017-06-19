Proceso TP7EJ3
	Definir PrimeraVez como logico;
	Definir Suma,Contador,Codigo,Nota,NotaMayor,CodMayor Como Entero;
	Definir Resp Como Caracter;
	PrimeraVez<-Verdadero;
	Suma<-0;
	Contador<-0;
	Repetir
		Escribir "Ingrese codigo del estudiante";
		Leer Codigo;
		Repetir
			Escribir "Ingrese la nota del alumno entre 0 y 10";
			Leer Nota;
		Hasta Que Nota>=0 y Nota<=10;
		Si PrimeraVez entonces
			CodMayor<-Codigo;
			NotaMayor<-Nota;
			PrimeraVez<-Falso;
		Sino
			Si Nota>NotaMayor Entonces
				CodMayor<-Codigo;
				NotaMayor<-Nota;
			FinSi
		FinSi
		Suma<-Suma+Nota;
		Contador<-Contador+1;
		Escribir "Desea ingresar mas notas de alumnos?";
		Leer Resp;		
	Hasta Que Mayusculas(Resp)='N'
	Escribir "El promedio de notas del salon es: ", Suma/Contador;
	Escribir "La mayor nota fue ", NotaMayor," del alumno codigo ",CodMayor;
FinProceso