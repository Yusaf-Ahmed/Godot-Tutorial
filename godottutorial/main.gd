extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = "Hello World!!!"
	$Label.modulate = Color.PURPLE

func _input(event):
	if event.is_action_pressed("my_action"):
		$Label.modulate = Color.CYAN
	
	if event.is_action_released("my_action"):
		$Label.modulate = Color.PURPLE
