class_name hello_world

extends Node

#@onready make it excute before _ready()
@onready var control = get_node(NodePath("Node2D/Label")) as Control

#export properties and lot more to export
@export_category("bob")
@export_group("smth")
@export var nameexport: int = 1

#single line comment
"""
multi
line
comment
"""
enum Rgb { Red, Green, Blue }
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("hello world")
	#we have multiple types int float bool String Variant Array[type] Dictionary
	var array: Array[Variant] = [1, "2", false]
	print(array[2])
	var dictionary: Dictionary[String, Variant] = {"1": "idk", "2": 7}
	print(dictionary["2"])
	#and we also have packed array which is faster and can only hold one type
	const COLOR: Rgb = Rgb.Green
	print(COLOR)
	print(add(7))
	var lambda: Callable = func(): return 10
	print(lambda.call())
	if true and false:
		print("will never be printed")
	elif false or not true:
		print("this too")
	else:
		print("this will")
	var counter: int = 0
	while counter < 3:
		if counter == 2:
			break
		if counter == 0:
			counter += 1
			continue
		print("while loop")
		counter += 1
	var num: int = 1;
	match num:
		1:
			print("one")
		2:
			print("two")
		_:
			print("default case")
	print(1 if false else 2)
	var honda: car = car.new(4, 2)
	honda.info()
	print(control.text)
	
	
class vehicle:
	var wheels_num: int
	func _init(a: int):
		self.wheels_num = a
class car:
	extends vehicle
	var doors_num: int
	func _init(a: int, b: int):
		super(a)
		self.doors_num = b
	func info():
		print("number of wheels:")
		print(self.wheels_num)
		print("number of doors:")
		print(self.doors_num)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func add(a: int = 1, b: int = 1) -> int:
	return a + b
