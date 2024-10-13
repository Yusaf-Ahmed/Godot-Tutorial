extends Node

var Health = 100
# Called when the node enters the scene tree for the first time.
func _input(event):
	if event.is_action_pressed("Damage") and Health > 0:
		Health -= 10
		print(Health)
	
		if Health <= 0:
			Health = 0
			print("DEAD")	
		elif Health < 50:
			print("INJURED!")	
		else:
			print("HEALTHY!")	
