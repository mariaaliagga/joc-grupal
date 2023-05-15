extends PathFollow2D

var velocitat := 35

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_offset(get_offset() + velocitat*delta)
