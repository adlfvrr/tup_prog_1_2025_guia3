Proceso ej3
	Definir cod, cantlotes, fallas, fallaslotes, orden, ordenfallamayor, ordenfallamenor, mayorfalla, menorfalla, cont Como Entero;
	Definir medidaesperada, medicion, porfallaslotes, porlote Como Real;
	Definir seguir Como Logico;
	fallaslotes <- 0;
	cantlotes <- 0;
	seguir <- Verdadero;
	orden <- 0;
	ordenfallamayor <- 0;
	ordenfallamenor <- 0;
	mayorfalla <- 0;
	menorfalla <- 10;
	// PROCESO DE LOTES
	Mientras seguir=Verdadero Hacer
		Escribir 'Si desea detener, ingrese el codigo 0: ';
		Leer cod;
		Si cod==0 Entonces
			seguir <- Falso;
		SiNo
			Escribir 'Ingrese medida esperada (en mm) para los 10 tornillos: ';
			Leer medidaesperada;
			cont <- 0;
			fallas <- 0;
			// 10 TORNILLOS
			Mientras cont<>10 Hacer
				Escribir 'Ingrese medida del tornillo: ';
				Leer medicion;
				Si medicion<>medidaesperada Entonces
					fallas <- fallas+1;
				FinSi
				cont <- cont+1;
			FinMientras
			// PROCESO LOTE
			fallaslotes <- fallaslotes+fallas;
			orden <- orden+1;
			cantlotes <- cantlotes+1;
			porlote <- (fallas/10)*100;
			Escribir 'En el lote n', orden, ' hubo ', fallas, ' fallas con un porcentaje de fallo de ', porlote, '%';
			// MAYOR-MENOR FALLA
			Si fallas>mayorfalla Entonces
				mayorfalla <- fallas;
				ordenfallamayor <- orden;
			SiNo
				Si fallas<menorfalla Entonces
					menorfalla <- fallas;
					ordenfallamenor <- orden;
				FinSi
			FinSi
		FinSi
	FinMientras
	Si cantlotes<10 Entonces
		porfallaslotes <- (fallaslotes/cantlotes)*10;
	SiNo
		porfallaslotes <- (fallaslotes/cantlotes)*100;
	FinSi
	Escribir 'Se procesaron ', cantlotes, ' lotes.';
	Escribir 'El porcentaje de fallo de todos los lotes es de ', porfallaslotes, '%';
	Escribir 'El lote con mayor fallas es el lote n', ordenfallamayor, ' con ', mayorfalla, ' fallas';
	Escribir 'El lote con menor fallas es el lote n', ordenfallamenor, ' con ', menorfalla, ' fallas';
FinProceso
