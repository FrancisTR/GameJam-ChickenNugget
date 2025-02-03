extends Control

func _ready() -> void:
	$Label2.text = "Time: "+str(GlobalTimer.timer)+"s"

func _on_play_again_pressed() -> void:
	GlobalTimer.timer = 0
	get_tree().change_scene_to_file("res://Scenes/Game.tscn")
	


func _on_exit_pressed() -> void:
	GlobalTimer.timer = 0
	get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
