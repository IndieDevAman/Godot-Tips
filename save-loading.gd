extends Node

var save_path = "user://savegame.json"

func save_game(player):
	var pos = player.global_transform.origin
	
	var data = {
		"pos_x": pos.x,
		"pos_y": pos.y,
		"pos_z": pos.z
	}
	
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_string(JSON.stringify(data))


func load_game(player):
	if not FileAccess.file_exists(save_path):
		return
	
	var file = FileAccess.open(save_path, FileAccess.READ)
	var data = JSON.parse_string(file.get_as_text())
	
	if data:
		player.global_transform.origin = Vector3(
			data["pos_x"],
			data["pos_y"],
			data["pos_z"]
		)
