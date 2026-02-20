extends CharacterBody2D



func _ready() -> void:
	position = Vector2(-150,330)

func _process(_delta: float) -> void:
	
	velocity = Vector2.RIGHT * 500
	
	move_and_slide()
	
	if position.x >= 1250:
		position = Vector2(-150,330)
