extends KinematicBody2D

var singleton = null
func _ready():
	singleton = get_node("/root/Map")
	if singleton.player_map_position != null:
		get_parent().get_node("Map/Sprite").global_position = singleton.player_map_position