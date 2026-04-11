@export var target: Node3D
@export var smooth_speed := 5.0
@export var offset := Vector3(0, 3, -6)

func _process(delta):
	if target:
		var desired_pos = target.global_transform.origin + offset
		
		global_transform.origin = global_transform.origin.lerp(
			desired_pos,
			smooth_speed * delta
		)
