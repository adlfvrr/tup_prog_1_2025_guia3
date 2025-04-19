Proceso ej6
	Definir nota, cond, cantnotas, cantap, cantnoap, mbueno, bueno, regular, ins, acnotas Como Entero;
	Definir prom, pormbueno, porbueno, porregular, porins Como Real;
	Definir seguir Como Logico;
	seguir <- Verdadero;
	cantnotas <- 0;
	cantap <- 0;
	cantnoap <- 0;
	mbueno <- 0;
	bueno <- 0;
	regular <- 0;
	ins <- 0;
	Escribir 'Ingrese nota a evaluar: ';
	Leer nota;
	Si nota>0 Y nota<=10 Entonces
		cantnotas <- cantnotas+1;
		acnotas <- acnotas+nota;
		Si nota>=6 Entonces
			cantap <- cantap+1;
		SiNo
			cantnoap <- cantnoap+1;
		FinSi
	FinSi
	Si nota>=8 Entonces
		mbueno <- mbueno+1;
	SiNo
		Si nota>=6 Entonces
			bueno <- bueno+1;
		SiNo
			Si nota>=4 Entonces
				regular <- regular+1;
			SiNo
				ins <- ins+1;
			FinSi
		FinSi
	FinSi
	Mientras seguir=Verdadero Hacer
		Escribir 'Desea continuar? (Ingrese -1 en caso de no querer)';
		Leer cond;
		Si cond==-1 Entonces
			seguir <- Falso;
		SiNo
			Escribir 'Ingrese nota a evaluar: ';
			Leer nota;
			Si nota>0 Y nota<=10 Entonces
				cantnotas <- cantnotas+1;
				acnotas <- acnotas+nota;
				Si nota>=6 Entonces
					cantap <- cantap+1;
				SiNo
					cantnoap <- cantnoap+1;
				FinSi
			FinSi
			Si nota>=8 Entonces
				mbueno <- mbueno+1;
			SiNo
				Si nota>=6 Entonces
					bueno <- bueno+1;
				SiNo
					Si nota>=4 Entonces
						regular <- regular+1;
					SiNo
						ins <- ins+1;
					FinSi
				FinSi
			FinSi
		FinSi
	FinMientras
	prom <- acnotas/cantnotas;
	pormbueno <- trunc((mbueno/cantnotas)*100);
	porbueno <- trunc((bueno/cantnotas)*100);
	porregular <- trunc((regular/cantnotas)*100);
	porins <- trunc((ins/cantnotas)*100);
	Escribir 'La cantidad de notas evaluadas es: ', cantnotas, ', siendo los aprobados ', cantap, ' y los no aprobados ', cantnoap;
	Escribir 'El promedio de las notas es de: ', prom;
	Escribir 'El porcentaje de notas Muy bueno es de ', pormbueno, '%. El porcentaje de notas Bueno es de ', porbueno, '%. El porcentaje de notas Regular es de ', porregular, '%. Y el porcentaje de notas Insuficiente es de ', porins, '%';
FinProceso
