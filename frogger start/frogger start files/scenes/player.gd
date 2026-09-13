extends Node2D

var direction: Vector2 = Vector2(1,1)
var speed: int = 5

func _physics_process(_delta: float) -> void:
	position += direction * speed
