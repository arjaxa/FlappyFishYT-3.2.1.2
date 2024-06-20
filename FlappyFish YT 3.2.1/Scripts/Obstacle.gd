extends Node2D

var velocity = Vector2()
var rangef = RandomNumberGenerator.new()


signal killplayer
# Called when the node enters the scene tree for the first time.
func _ready():
	rangef.randomize()
	var yoffset = rangef.randf_range(-200.0,200.0)
	position.y = position.y + yoffset

func _physics_process(delta):
	velocity.x = -350
	if $KinematicBody2D.global_position.x < -550:
		queue_free()
	
	$KinematicBody2D.move_and_slide(velocity)
	$KinematicBody2D2.move_and_slide(velocity)

func _on_Area2D_body_entered(body):
	emit_signal("killplayer")


func _on_Area2D2_body_exited(body):
	Signals.emit_signal("increaseplayerscore")
