extends CharacterBody3D

@export var speed: float = 4.0
@export var chase_range: float = 10.0

var player = null

func _ready():
	player = get_tree().get_first_node_in_group("player")

func _physics_process(delta):
	if player == null:
		return

	var distance = global_transform.origin.distance_to(player.global_transform.origin)

	if distance < chase_range:
		chase_player()
	else:
		velocity = Vector3.ZERO

	move_and_slide()


func chase_player():
	var direction = (player.global_transform.origin - global_transform.origin).normalized()
	
	velocity.x = direction.x * speed
	velocity.z = direction.z * speed

	look_at(player.global_transform.origin, Vector3.UP)
