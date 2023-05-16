extends KinematicBody2D

var velocitat := 1000
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN * 3700
var salt :=Vector2.UP * 1500
var caramels = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.Jugador = self


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
#	personatge3= KinematicBody2D
func agafa_candy():
	caramels += 1
	Global.LabelCaramels.text = str(caramels)
	

	

	#contador


func _on_matar_halloween_body_entered(body):
	if body.is_in_group("Personatge"):
		get_tree().reload_current_scene() 


func _on_Fantasma_body_entered(body):
	if body.is_in_group("Personatge"):
		get_tree().reload_current_scene() 


func _on_diablo_body_entered(body):
	if body.is_in_group("Personatge"):
		get_tree().reload_current_scene() 



func _on_trofeo_body_entered(body):
	if body.is_in_group("Personatge"):
		get_tree().change_scene("res://Menú principal.tscn") 
