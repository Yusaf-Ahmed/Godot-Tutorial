extends Node

var Health = 300
# Called when the node enters the scene tree for the first time.
func _ready():
	var players = {
		"Boss": {"Level": 100, "Health": 1000},
		"Crook": {"Level": 1, "Health": 100},
	}
	
	 #Access the Boss's Level and Health
	print(players["Boss"]["Level"])  # Output: 100
	print(players["Boss"]["Health"])  # Output: 1000
	
	# Access the Crook's Level and Health
	print(players["Crook"]["Health"])  # Output: 100
	
	# Modify the Boss's Health
	players["Boss"]["Health"] -= 200
	print(players["Boss"]["Health"])  # Output: 800
	
func _input(event):
	if event.is_action_pressed("Damage") and Health > 0:
		var roll = randi_range(1, 20)
		var result = add(randi_range(1, 800), randi_range(1, 800))
		Health -= 10
		print(Health)
		print("Random Addition: " + str(result))
	# Health System
		if Health <= 0:
			Health = 0
			print("DEAD ")	
		elif Health < 50:
			print("INJURED!")	
		else:
			print("HEALTHY!")	
		
	# Random Dice System
		if roll == 10:
			print("CONGRATS!!! You got EXACTLY half! - ", roll)
		elif roll >= 10:
			print("You got More than half! - ", roll)
			if roll == 20:
				print("Also...You got... a very Large number! - ", roll)
		elif roll <= 10:
			print("You got Less than half! - ", roll)
			if roll == 1:
				print("Also...You got... a very Small number! - ", roll)	
		else:
			print(roll)	

func add(num1, num2):
	var result = num1 + num2
	return result
