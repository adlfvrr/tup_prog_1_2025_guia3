Proceso ej4
	Definir n,cont,i,divisores como Entero;
	cont = 0;
	divisores = 0;
	i = 0;
	Escribir "Ingrese numero a procesar: ";
	Leer n;
	Para cont=0 Hasta n con paso 1 Hacer
		i = i + 1;
		Si i <> 1 Y i <> n Entonces
			Si n % i == 0 Entonces
				divisores = divisores + 1;
			FinSi
		FinSi
	FinPara
	Si divisores > 0 Entonces
		Escribir "No es primo";
	SiNo
		Escribir "Es primo";
	FinSi
FinProceso
