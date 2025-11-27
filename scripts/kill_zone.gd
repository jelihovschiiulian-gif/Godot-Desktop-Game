extends Area2D


@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	print("You died !")
	Engine.time_scale = 0.5
	var collider = body.get_node_or_null("CollisionShape2D")
	if collider:
		collider.queue_free()


	timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()# Replace with function body.
