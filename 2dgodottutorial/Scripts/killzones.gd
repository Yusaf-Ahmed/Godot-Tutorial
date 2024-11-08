extends Area2D

@onready var timer: Timer = $Timer

#When Player enters KillZones
func _on_body_entered(body: Node2D):
	print("Death!")
	timer.start()
	

#When timer hits 0s
func _on_timer_timeout():
	get_tree().reload_current_scene()
