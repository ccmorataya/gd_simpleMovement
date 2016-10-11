
extends Node2D

const speed = 400
const radian = 0.4

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	var nodo = get_node("KinematicBody2D")
	var direction = Vector2(0,0)
	if ( get_node("up").is_pressed() || Input.is_action_pressed("ui_up") ):
		print("Up presed")
		direction += Vector2(0,-1)
		nodo.rotate(radian)
	if ( get_node("down").is_pressed() || Input.is_action_pressed("ui_down")):
		direction += Vector2(0,1)
		nodo.rotate(-radian)
	if ( get_node("left").is_pressed() || Input.is_action_pressed("ui_left")):
		direction += Vector2(-1,0)
		nodo.rotate(radian)
	if ( get_node("right").is_pressed() || Input.is_action_pressed("ui_right")):
		direction += Vector2(1,0)
		nodo.rotate(-radian)
	
	nodo.move(direction*speed*delta)