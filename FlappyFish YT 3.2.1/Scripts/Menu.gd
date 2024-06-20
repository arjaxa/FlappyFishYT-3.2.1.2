extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#get_node("/root/Game/Obstacle").connect("killplayer",self,"handleplayerdie")

func handleplayerdie():
	self.show()


func _on_Button_button_down():
	get_tree().reload_current_scene()
