extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("puja i baixa")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_halloween_candy_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	queue_free()
	#body.agafa_halloween()
