extends Node2D


# variavel chama script do carro
var car_scene: PackedScene = preload("res://scenes/car.tscn")


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("something")

# função de timer que chama carro pro cenario.
func _on_car_timer_timeout() -> void:
	var car = car_scene.instantiate() as Area2D
	var pos_marker = $CarStartPositions.get_children().pick_random() as Marker2D
	car.position = pos_marker.position
	$Objects.add_child(car)
	car.connect("body_entered", go_to_title)
	
func go_to_title(body):
	print(body)
	print('player car collision')
