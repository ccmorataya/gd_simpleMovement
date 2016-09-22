
extends KinematicBody2D

const speed = 400

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	var direction = Vector2(0,0)
	if ( Input.is_action_pressed("ui_up") ):
		direction += Vector2(0,-1)
	if ( Input.is_action_pressed("ui_down") ):
		direction += Vector2(0,1)
	if ( Input.is_action_pressed("ui_left") ):
		direction += Vector2(-1,0)
	if ( Input.is_action_pressed("ui_right") ):
		direction += Vector2(1,0)
	
	move(direction*speed*delta)