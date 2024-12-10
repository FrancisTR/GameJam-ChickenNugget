extends CharacterBody2D

@onready var navigation_agent = $NavigationAgent2D
@onready var main_player = $"../MainPlayer"
@onready var chicken_sheriff = $"."
@onready var animated_sprite = $AnimatedSprite2D
@onready var area_2d = $Area2D

const SPEED = 150.0

func _physics_process(delta):
	navigation_agent.target_position = main_player.global_position
	velocity = global_position.direction_to(navigation_agent.get_next_path_position()) * SPEED
	move_and_slide()
	
	if (main_player.position.y > chicken_sheriff.position.y):
		if ((chicken_sheriff.position.x - main_player.position.x) > (main_player.position.y - chicken_sheriff.position.y)):
			animated_sprite.play("WalkLeft")
			
		else:
			animated_sprite.play("WalkDown")
	else:
		if ((main_player.position.x - chicken_sheriff.position.x) > (chicken_sheriff.position.y - main_player.position.y)):
			animated_sprite.play("WalkRight")
			
		else:
			animated_sprite.play("WalkUp")

func _on_area_2d_body_entered(body):
	get_tree().change_scene_to_file("res://MainGame/Scenes/gameOver.tscn")
