Algoritmo ejercicio_3
	Definir num Como Entero
	Definir es_primo Como Logico
	es_primo<-Verdadero
	Repetir
		Escribir "Ingrese un n�mero (mayor que 1):"
		Leer num
		Si num <= 1 Entonces
			Escribir "El n�mero ingresado es menor que 1."
			Escribir "-----------------"
		FinSi
	Hasta Que num > 1
	
	Para contador<-2 Hasta (num-1) Con Paso 1 Hacer
		Si num%contador == 0 Entonces
			es_primo<-Falso
		FinSi
	Fin Para
	Si es_primo == Verdadero Entonces
		Escribir "El n�mero es primo."
	SiNo
		Escribir "El n�mero no es primo."
	FinSi
FinAlgoritmo
