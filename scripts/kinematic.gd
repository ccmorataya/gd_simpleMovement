
extends KinematicBody2D

const speed = 400
const radian = 0.1

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	var direction = Vector2(0,0)
	if ( Input.is_action_pressed("player_up") ):
		direction += Vector2(0,-1)
		rotate(-radian)
	if ( Input.is_action_pressed("player_down") ):
		direction += Vector2(0,1)
		rotate(-radian)
	if ( Input.is_action_pressed("player_left") ):
		direction += Vector2(-1,0)
		rotate(-radian)
	if ( Input.is_action_pressed("player_right") ):
		direction += Vector2(1,0)
		rotate(-radian)
	
	move(direction*speed*delta)