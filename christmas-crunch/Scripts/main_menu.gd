extends Node2D

func _on_tutorial_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Tutorial.tscn")

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Game.tscn")
