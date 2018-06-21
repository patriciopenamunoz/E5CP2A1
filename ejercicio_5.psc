Algoritmo ejercicio_5
	Definir finalizar_juego Como Logico
	Definir ia_seleccion Como Entero
	Definir seleccion Como Entero
	Definir opciones Como Caracter
	Definir empate, ganas Como Logico
	
	Dimension opciones[3]
	opciones[0]<-"piedra"
	opciones[1]<-"papel"
	opciones[2]<-"tijeras"
	
	finalizar_juego<-Verdadero
	Repetir
		Repetir
			Escribir "Escoja piedra, papel o tijeras:"
			Leer eleccion
			Si eleccion == opciones[0] Entonces
				seleccion<-0
			SiNo
				Si eleccion == opciones[1] Entonces
					seleccion<-1
				SiNo
					Si eleccion == opciones[2] Entonces
						seleccion<-2
					SiNo
						Escribir "La opción escogida es inválida."
						Escribir "----------------"
					FinSi
				FinSi
			FinSi
		Hasta Que eleccion==opciones[0] o eleccion==opciones[1] o eleccion==opciones[2]
		
		Repetir
			empate<-Falso
			ganas<-Falso
			
			ia_seleccion<-azar(2)
			
			Escribir "TÚ: " opciones[seleccion]
			Escribir "-- VS --"
			Escribir "IA: " opciones[ia_seleccion]
			
			Si seleccion == ia_seleccion Entonces
				empate<-Verdadero
			SiNo
				Si seleccion == 0 y ia_seleccion == 2 Entonces
					ganas<-Verdadero
				SiNo
					Si seleccion == 1 y ia_seleccion == 0 Entonces
						ganas<-Verdadero
					SiNo
						Si seleccion == 2 y ia_seleccion == 1 Entonces
							ganas<-Verdadero
						FinSi
					FinSi
				FinSi
			FinSi
			
			Si empate == Verdadero Entonces
				Escribir "¡Empate!"
				Escribir "-----------------"
			FinSi
		Hasta Que !(empate)
		
		Si ganas == Verdadero Entonces
			Escribir "¡Has ganado!"
		SiNo
			Escribir "Has perdido..."
		FinSi
		
		Repetir
			Escribir "¿Volver a jugar? (s/n)"
			Leer respuesta
			Si respuesta == "s" Entonces
				finalizar_juego<-Falso
			SiNo
				Si respuesta == "n" Entonces
					finalizar_juego<-Verdadero
				SiNo
					Escribir "La opcion elegida es inválida."
					Escribir "----------------"
				FinSi
			FinSi
		Hasta Que respuesta == "s" o respuesta == "n"
		
		
	Hasta Que finalizar_juego
	
FinAlgoritmo
