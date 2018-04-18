extends Area2D



func _ready():
	connect("body_entered", self, "body_entered")

func body_entered(body):
	
	get_tree().change_scene("res://Scenes/Pathvillage.tscn")