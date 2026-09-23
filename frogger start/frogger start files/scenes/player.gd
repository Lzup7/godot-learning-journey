extends CharacterBody2D

var direction: Vector2 = Vector2(1,1)
var speed: int = 120

#Essa função define os comandos de movimentação.
func _physics_process(_delta: float) -> void:
	direction = Input.get_vector("left","right","up","down") 
	velocity = direction * speed 
	move_and_slide()
	animation()
	
	if(Input.is_action_just_pressed("space")):
		print("something")
		

#Essa função altera o ciclo de animação dependendo da direção que o personagem anda.		
func animation():
	if direction:
		$AnimatedSprite2D.flip_h = direction.x > 0
		if direction.x != 0:
			$AnimatedSprite2D.animation = 'left right'
		else:
			$AnimatedSprite2D.animation = 'up' if direction.y < 0 else 'down'
	else:
		$AnimatedSprite2D.frame = 0
	
