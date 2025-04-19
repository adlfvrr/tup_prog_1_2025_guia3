Proceso ej7
	Definir precio,preciototal,total Como Real;
	Definir cond,cant,cantprod Como Entero;
	Definir seguir Como Logico;
	seguir = Verdadero;
	cant = 0;
	cantprod = 0;
	total = 0;
	Escribir "Ingrese precio y cantidad de productos: ";
	Leer precio,cant;
	preciototal = precio * cant;
	cantprod = cantprod + cant;
	total = total + preciototal;
	Mientras seguir = Verdadero Hacer
		Escribir "Desea continuar? (Ingrese -1 en caso de no querer) ";
		Leer cond;
		Si cond == -1 Entonces
			seguir = Falso;
		SiNo
			preciototal = 0;
			Escribir "Ingrese precio y cantidad de productos: ";
			Leer precio,cant;
			preciototal = precio * cant;
			cantprod = cantprod + cant;
			total = total + preciototal;
		FinSi
	FinMientras
	Escribir "El precio total es de $",total,", habiendose escaneado ",cantprod," productos.";
FinProceso
