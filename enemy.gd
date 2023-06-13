extends CharacterBody2D

const SPEED = 800
var ball

func _ready():
	ball = get_parent().find_child("Ball")

func _physics_process(_delta):
	velocity.y = _get_direction() * SPEED	
	move_and_slide()

func _get_direction():
	if abs(ball.position.y - position.y) > 25:
		if ball.position.y > position.y:
			return 1
		else:
			return -1
	else:
		return 0
