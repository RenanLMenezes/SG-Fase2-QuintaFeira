extends KinematicBody2D

var velocidade = Vector2.ZERO

func _physics_process(delta):
	if(Input.is_action_pressed("ui_right")):
		velocidade.x = 5
	elif(Input.is_action_pressed("ui_left")):
		velocidade.x = -5
	elif(Input.is_action_pressed("ui_up")):
		velocidade.y = -5
	elif(Input.is_action_pressed("ui_down")):
		velocidade.y = 5
	else:
		velocidade.x = 0
		velocidade.y = 0
	
	move_and_collide(velocidade)
