extends Sprite2D

@export var speed := 50.0
@export var reset_position_x := -800.0
@export var start_position_x := 800.0

func _process(delta):
    position.x += speed * delta

    # Reset position when it goes off screen
    if position.x > start_position_x:
        position.x = reset_position_x
