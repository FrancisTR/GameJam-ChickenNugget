extends Node2D

var score = 0

var goal = 50

func _ready() -> void:
	$Timer.start()
	$Score.text = 'Toys Wrapped: '+str(score)+'/'+str(goal)

func _on_toy_wrapped() -> void:
	score += 1
	$Score.text = 'Toys Wrapped: '+str(score)+'/'+str(goal)
	
	if score == goal:
		#Game Complete
		get_tree().change_scene_to_file("res://Scenes/complete.tscn")

func _on_toy_put_away() -> void:
	$Toy.randomize_assets()
	$Toy.removeWrap()


func _on_timer_timeout() -> void:
	GlobalTimer.timer += 1
	$Timer.start()
