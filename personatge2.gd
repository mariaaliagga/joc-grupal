extends KinematicBody2D

var velocitat := 400
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN * 1700
var salt :=Vector2.UP * 700
var contador := 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(0,0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
	moviment += gravetat*delta
	moviment.x = velocitat
	if Input.is_action_just_pressed("ves_amunt") and is_on_floor():
		moviment += salt
		
	if is_on_floor():
		velocitat = 400
	else:
		velocitat = 350
	
	moviment = move_and_slide(moviment, Vector2.UP)
	
	anima(velocitat)
	
func anima(velocitat):
	$AnimatedSprite.play("run")
	$AnimatedSprite.flip_h = false

func agafa_candy():
	# contador i q es moguiiii
	
	pass

func _on_aigua_body_entered(body):
	position = Vector2(0,0)

