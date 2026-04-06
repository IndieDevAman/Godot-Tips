extends CharacterBody2D

var speed = 200
var sprint_speed = 400

func _physics_process(delta):
    var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")

    if Input.is_action_pressed("ui_accept"): # Shift (you can remap)
        velocity = input_dir * sprint_speed
    else:
        velocity = input_dir * speed

    move_and_slide()
