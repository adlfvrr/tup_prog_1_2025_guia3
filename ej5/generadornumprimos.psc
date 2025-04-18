Proceso ej5
	Definir ni,niingresado,nf,divisores,i,cont,orden,cantprimos como Entero;
	Escribir "Ingrese numero inicial del rango: ";
	Leer ni;
	Escribir "Ingrese numero final del rango: ";
	Leer nf;
	orden = 0;
	cantprimos = 0;
	niingresado = ni;
	Si ni > 0 Y nf > ni Entonces
		Para ni=ni Hasta nf con paso 1 Hacer
			orden = orden + 1;
			cont = 0;
			i = 0;
			divisores = 0;
			Para cont=0 Hasta ni con paso 1 Hacer
				i = i + 1;
				Si i <> 1 y i <> ni Entonces
					Si ni % i == 0 Entonces
						divisores = divisores + 1;
					FinSi
				FinSi
			FinPara
			Si divisores > 0 Entonces
				Escribir "El numero ",ni," en el orden ",orden," no es primo";
			SiNo
				cantprimos = cantprimos + 1;
				Escribir "El numero ",ni," en el orden ",orden," si es primo";
			FinSi
		FinPara
		Escribir "Dentro del rango de ",niingresado," hasta ",nf," hay ",cantprimos," numeros primos";
	SiNo
		Escribir "Rango no valido (mayor a 0 y numero final debe ser mayor a numero inicial)";
	FinSi
FinProceso
