extends Area2D

func _on_star_body_entered(body):
	if body.is_in_group("player"):
		queue_free()
		get_parent().score += 1


