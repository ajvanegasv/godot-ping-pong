extends Node2D

var player_score = 0
var enemy_score = 0

func _ready():
	_restart_game()

func _process(_delta):
	$PlayerScore.text = str(player_score)
	$EnemyScore.text = str(enemy_score)

func _restart_game():
	$Ball.is_moving = false
	$Ball.direction = Vector2.ZERO
	$Ball.position = Vector2(960, 539.78)
	$RestartTimer.start()

func _on_arco_izquierdo_body_entered(body):
	if body is Ball:
		enemy_score += 1
		_restart_game() # Replace with function body.


func _on_arco_derecho_body_entered(body):
	if body is Ball:
		player_score += 1
		_restart_game() # Replace with function body.
