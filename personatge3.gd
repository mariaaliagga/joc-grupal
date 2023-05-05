extends KinematicBody2D

var velocitat := 900
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN * 3000
var salt :=Vector2.UP * 1500

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
	moviment += gravetat*delta
	moviment.x = velocitat
	if Input.is_action_just_pressed("ves_amunt") and is_on_floor():
		moviment += salt
		
	
	moviment = move_and_slide(moviment, Vector2.UP)
	
	anima(velocitat)
	
func anima(velocitat):
	$AnimatedSprite.play("run")
	$AnimatedSprite.flip_h = false
#func agafa_halloween():
	#contador
