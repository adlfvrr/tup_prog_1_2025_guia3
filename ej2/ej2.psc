Proceso ej2
	Definir cantcanciones,cont,duracionm,duracions,ttotalh,ttotalm,ttotals,mayordm,mayords,menordm,menords,act,t,mayort,menort Como Entero;
	Definir nom,nommayor,nommenor Como Caracter;
	Escribir "Ingrese cantidad de canciones de la lista: ";
	Leer cantcanciones;
	cont = 0;
	act = 0;
	Escribir "Ingrese nombre de la cancion: ";
	Leer nom;
	Escribir "Ingrese tiempo de la cancion en MM y SS: ";
	Leer duracionm,duracions;
	t = duracionm * 60 + duracions;
	mayort = t;
	menort = t;
	act = act + t;
	cont = cont+1;
	Mientras cont < cantcanciones Hacer
		Escribir "Ingrese nombre de la cancion: ";
		Leer nom;
		Escribir "Ingrese tiempo de la cancion en MM y SS: ";
		Leer duracionm,duracions;
		t = duracionm * 60 + duracions;
		Si t > mayort Entonces
			mayort = t;
			mayordm = trunc(mayort / 60);
			mayords = trunc(mayort%60);
			nommayor = nom;
		SiNo
			Si t < menort Entonces
				menort = t;
				menordm = trunc(menort / 60);
				menords = trunc(menort%60);
				nommenor = nom;
			FinSi
		FinSi
		act = act + t;
		cont = cont + 1;
	FinMientras
	ttotalh = trunc(act/3600);
	ttotalm = trunc((act%3600)/60);
	ttotals = trunc((act%3600)%60);
	Escribir "El tiempo de duracion de la lista es de: ",ttotalh,":",ttotalm,":",ttotals;
	Escribir "La cancion con mayor duracion es ",nommayor," con un tiempo de ",mayordm,":",mayords;
	Escribir "La cancion con menor duracion es ",nommenor," con un tiempo de ",menordm,":",menords;
FinProceso
