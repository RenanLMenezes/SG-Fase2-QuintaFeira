extends KinematicBody2D

# var velocidade = Vector2.ZERO
var direcao = Vector2.ZERO

# variavel de velocidade
var velocidade = 100

func _physics_process(delta):
	var input = Vector2.ZERO
	
	# X será 0 até que o direito ou esquerdo seja apertado => R(1 - 0) = 1 / L(0 - 1)
	input.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left") 
	# X será 0 até que o cima ou baixo seja apertado => D(1 - 0) = 1 / U(0 - 1)
	input.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up") 
	
	# Mostrar como sem o normalized o Player anda mais rapido
	# O normalized seta o valor para 1
	input = input.normalized()
	
	if input != Vector2.ZERO:
		direcao = input
	else:
		direcao = Vector2.ZERO
	
	# Explicar o delta
	# move_and_collide é usado para o Player parar ao collidir (delta necessário)
	# move_and_collide(direcao * delta * velocidade)
	
	# move_and_slide é usado para o Player deslizar ao colidir (delta não necessário, pois a funçãO)
	# já possui no calculo
	
	move_and_slide(direcao * velocidade)
