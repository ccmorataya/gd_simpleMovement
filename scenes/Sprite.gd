
extends Node2D

const speed = 400
const radian = 10

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	var nodo = get_node("KinematicBody2D")
	var direction = Vector2(0,0)
	if ( get_node("Button").is_pressed() ):
		print("press")
		direction += Vector2(0,-1)
		nodo.rotate(-radian)
	if ( Input.is_action_pressed("player_down") ):
		direction += Vector2(0,1)
		nodo.rotate(-radian)
	if ( Input.is_action_pressed("player_left") ):
		direction += Vector2(-1,0)
		nodo.rotate(-radian)
	if ( Input.is_action_pressed("player_right") ):
		direction += Vector2(1,0)
		nodo.rotate(-radian)
	
	nodo.move(direction*speed*delta)