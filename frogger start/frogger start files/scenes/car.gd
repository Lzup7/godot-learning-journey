extends Area2D


var direction = Vector2.LEFT
var speed = 100

func _ready() -> void:
	if position.x < 0:
		direction.x = 1
		$Sprite2D.flip_h = true

#função para movimetação do carro na tela.
func _process(delta: float) -> void:
	position += direction * speed * delta

#Essa função se ativa ao item sair da visão na tela, e o queue_free() o deleta. 
func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
