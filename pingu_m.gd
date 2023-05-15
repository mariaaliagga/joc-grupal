extends Node2D


#func _process(delta):
#	pass


func _on_pingu_body_entered(body):
	if body.is_in_group("Personatge"):
		get_tree().reload_current_scene()
