extends Node

var Health = 100
# Called when the node enters the scene tree for the first time.
func _input(event):
	if event.is_action_pressed("Damage") and Health > 0:
		Health -= 10
		print(Health)
	# Health System
		if Health <= 0:
			Health = 0
			var result = add(2, 800)
			print("DEAD ", result)	
		elif Health < 50:
			print("INJURED!")	
		else:
			print("HEALTHY!")	

func add(num1, num2):
	var result = num1 + num2
	return result
