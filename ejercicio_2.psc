Algoritmo ejercicio_2
	Escribir "Ingrese el primer n�mero:"
	Leer num1
	Escribir "Ingrese el segundo n�mero:"
	Leer num2
	Repetir
		Escribir "Escoja el operador a efecturar (+ � -):"
		Leer operador
		Si operador <> "+" y operador <> "-" Entonces
			Escribir "El operador seleccionado es inv�lido."
			Escribir "------------"
		FinSi
	Hasta Que operador == "+" o operador == "-"
	Si operador == "+" Entonces
		Escribir num1+num2
	FinSi
	Si operador == "-" Entonces
		Escribir "El valor resultante es: " num1-num2
	FinSi
FinAlgoritmo
