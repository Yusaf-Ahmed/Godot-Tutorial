extends Node

var Health = 100
# Called when the node enters the scene tree for the first time.
func _input(event):
	if event.is_action_pressed("Damage"):
		Health -= 10
		print(Health)
