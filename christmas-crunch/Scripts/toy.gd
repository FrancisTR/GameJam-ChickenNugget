extends Node2D

signal toy_wrapped
signal toy_put_away

var count=0

var toys = [
	preload("res://Assets/toys1.png"),
	preload("res://Assets/toys2.png"),
	preload("res://Assets/toys3.png"),
]

var wrapping = [
	preload("res://Assets/present1.png"),
	preload("res://Assets/present2.png"),
	preload("res://Assets/present3.png"),
]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize_assets()

func randomize_assets():
	$Toy.texture = toys[randi_range(0, toys.size()-1)]
	$Wrapping.texture = wrapping[randi_range(0, wrapping.size()-1)]

func removeWrap():
	$Wrapping.visible = false

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if (event is InputEventMouseButton && event.pressed):
		$Wrapping.visible = true
		if(count%3 == 0):
			print('toy.gd: toy_wrapped')
			toy_wrapped.emit()
		elif(count%3 == 1):
			print('toy.gd: toy_put_away')
			toy_put_away.emit()
		count+=1
