extends Node

var save_path = "user://savegame.json"

func save_game(player):
	var data = {
		"position": player.global_transform.origin
	}
	
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_string(JSON.stringify(data))


func load_game(player):
	if not FileAccess.file_exists(save_path):
		return
	
	var file = FileAccess.open(save_path, FileAccess.READ)
	var data = JSON.parse_string(file.get_as_text())
	
	if data:
		player.global_transform.origin = data["position"]
