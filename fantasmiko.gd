extends Area2D

var velocitat := 300

func _ready():
	pass # Replace with function body.

func _process(delta):
	var direccio = global_position.direction_to(Global.Jugador.global_position)
	position += direccio * velocitat * delta

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
