extends Node2D

var num1 = 10
var num2 = 5
var result

# Called when the node enters the scene tree for the first time.
func _ready():
	saludar()
	result = multiplicar(num1, num2)
	print("La multiplicación de " + String(num1) + "*" + String(num2) + " es: " + String(result))
	print("La multiplicación es: ", result)


func saludar():
	print("Hola mundo")

func multiplicar(num1, num2):
	return num1*num2

