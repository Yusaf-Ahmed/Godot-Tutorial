extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = "Hello World!!!"
	$Label.modulate = Color.PURPLE
