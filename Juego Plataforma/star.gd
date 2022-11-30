extends Area2D

func _on_star_body_entered(body):
	queue_free()
