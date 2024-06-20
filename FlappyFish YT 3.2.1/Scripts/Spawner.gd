extends Node

onready var obstacleprefab = preload("res://Obstacle.tscn")

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	var obstacle = obstacleprefab.instance()
	add_child_below_node($Obstacles, obstacle)
	obstacle.connect("killplayer",$Player.get_node("KinematicBody2D"),"handleplayerdie")
	obstacle.connect("killplayer",$Menu,"handleplayerdie")
