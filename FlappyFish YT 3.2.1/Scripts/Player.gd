extends KinematicBody2D

var speed = 200
var gravity = 100
var swimvelocity = 200
var velocity = Vector2()

func _ready():
	pass
	#get_node("/root/Game/Obstacle").connect("killplayer",self,"handleplayerdie")
	
func get_input():
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		velocity.y =- swimvelocity
	

func _process(delta):
	velocity.y = gravity
	get_input()
	move_and_slide(velocity)

func handleplayerdie():
	self.queue_free()

