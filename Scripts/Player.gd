extends KinematicBody2D

var singleton = null
func _ready():
	singleton = get_node("/root/Global")
	if singleton.player_map_position != null:
		get_parent().get_node("