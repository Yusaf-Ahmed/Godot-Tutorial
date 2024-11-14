extends Area2D

@onready var timer: Timer = $Timer

#When Player enters KillZones
func _on_body_entered(body: Node2D):
	print("Death!")
	Engine.time_scale = 0.25
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	

#When timer hits 0s
func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
