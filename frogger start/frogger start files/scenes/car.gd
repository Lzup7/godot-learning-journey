extends Area2D


var direction = Vector2.LEFT
var speed = 160
var colors = [
	preload("res://graphics/cars/green.png"),
	preload("res://graphics/cars/yellow.png"),
	preload("res://graphics/cars/red.png")
	 ]

func _ready() -> void:
	if position.x < 0:
		direction.x = 1
		$Sprite2D.flip_h = true
	$Sprite2D.texture = colors.pick_random()
	
#função para movimetação do carro na tela.
func _process(delta: float) -> void:
	position += direction * speed * delta

#Essa função se ativa ao item sair da visão na tela, e o queue_free() o deleta. 
func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
