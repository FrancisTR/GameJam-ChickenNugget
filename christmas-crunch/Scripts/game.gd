extends Node2D

var score = 0


func _ready() -> void:
	$Score.text = 'Toys Wrapped: '+str(score)

func _on_toy_wrapped() -> void:
	score += 1
	$Score.text = 'Toys Wrapped: '+str(score)

func _on_toy_put_away() -> void:
	$Toy.randomize_assets()
	$Toy.removeWrap()
