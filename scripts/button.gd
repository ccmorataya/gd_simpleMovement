
extends TouchScreenButton

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	set_fixed_process(true)

func _fixed_process(delta):
	var direction = Vector2(0,0)
	if (is_pressed()):
		direction += Vector2(0,-1)
