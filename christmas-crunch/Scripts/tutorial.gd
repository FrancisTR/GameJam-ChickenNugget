extends Node2D

var lock = false

func _on_toy_wrapped() -> void:
	if lock:
		return
	$Instructions.text = 'Click on present to finish'

func _on_toy_toy_put_away() -> void:
	$Instructions.text = 'Success!'
	lock = true


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
	
