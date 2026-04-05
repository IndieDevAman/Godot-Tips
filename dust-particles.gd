@onready var dust = $GPUParticles2D

func _physics_process(delta):
    # Basic version
    if abs(velocity.x) > 10 and is_on_floor():
        dust.emitting = true
    else:
        dust.emitting = false

    # Optional cleaner version (use this instead of above if you want)
    # dust.emitting = abs(velocity.x) > 10 and is_on_floor()
