extends Node

@onready var pause_menu = $PauseMenu

func _ready():
    pause_menu.visible = false

func _input(event):
    if event.is_action_pressed("ui_cancel"):
        toggle_pause()

func toggle_pause():
    get_tree().paused = !get_tree().paused
    pause_menu.visible = get_tree().paused
