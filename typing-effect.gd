extends Label

var full_text = "Hello, this is a typing effect!"
var speed = 0.05
var index = 0

func _ready():
    text = ""
    type_text()

func type_text():
    while index < full_text.length():
        text += full_text[index]
        index += 1
        await get_tree().create_timer(speed).timeout
