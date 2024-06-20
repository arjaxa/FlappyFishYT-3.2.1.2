extends Label

var score = 0

func _ready():
	Signals.connect("increaseplayerscore",self,"increasescore")

func increasescore():
	score+=1
	self.set_text(String(score))
