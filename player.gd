extends CharacterBody2D

const SPEED = 400

func _physics_process(_delta):	
	if Input.is_action_pressed("ui_up"):
		velocity.y = -1 * SPEED
	elif Input.is_action_pressed("ui_down"):
		velocity.y = 1 * SPEED
	else:
		velocity.y = 0
	
	move_and_slide()
