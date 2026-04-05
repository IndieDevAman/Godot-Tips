var shake_strength = 0.0

func _process(delta):
    if shake_strength > 0:
        offset = Vector2(
            randf_range(-shake_strength, shake_strength),
            randf_range(-shake_strength, shake_strength)
        )
        shake_strength *= 0.9

func shake():
    shake_strength = 10.0
