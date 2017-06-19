Proceso TP7EJ5
	Definir nomyapellido,nombre_Mat,rsp Como Caracter;
	Definir i,cod,num_Materias,contador Como Entero;
	Definir valor_Mat,valor_recargo,total,Matricula,Total Como Real;
	contador<-0;
	Total<-0;
	Repetir
		contador<-contador+1;
		total_Matricula<-0;
		Escribir "Ingrese codigo del Estudiante";
		Leer cod;
		Escribir "Ingrese el Nombre y Apellido";
		Leer nomyapellido;
		Escribir "Ingrese el Numero de Materias a Matricularse";
		Leer num_Materias;
		para i<-1 hasta	num_Materias Hacer
			Escribir "Ingrese el nombre de la Materia";
			Leer nombre_Mat;
			Escribir "Ingrese el valor de la Materia ",nombre_Mat;
			Leer valor_Mat;
			Escribir "Ingrese el valor del recargo por Matricula de ", nombre_Mat;
			Leer valor_recargo;
			total_Matricula<-total_Matricula+valor_Mat+valor_recargo;
		FinPara
		Escribir "CODIGO: ", cod;
		Escribir "NOMBRE Y APELLIDO: ", nomyapellido;
		Escribir "NUMERO DE MATERIAS MATRICULADAS: ",num_Materias;
		Escribir "TOTAL DE MATRICULA ESTUDIANTE: ",total_Matricula;
		Total<-Total+total_Matricula;
		Escribir "Desea ingresar mas datos ? (S/N)";
		Leer rsp;
	Hasta Que Mayusculas(rsp)='N'
	Escribir "La cantidad de alumnos Matriculados es: ", contador;
	Escribir "El total a recibir por Matriculas es: ", Total;
FinProceso