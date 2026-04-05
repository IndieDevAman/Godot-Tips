var jump_buffer_time = 0.15
var jump_buffer_timer = 0.0

func _physics_process(delta):
    # reduce timer
    if jump_buffer_timer > 0:
        jump_buffer_timer -= delta

    # if jump pressed
    if Input.is_action_just_pressed("jump"):
        jump_buffer_timer = jump_buffer_time

    # perform jump if buffered and on floor
    if jump_buffer_timer > 0 and is_on_floor():
        velocity.y = -jump_force
        jump_buffer_timer = 0
