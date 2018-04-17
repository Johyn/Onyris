extends Area2D

export (Vector2) var new_scene_player_start_pos = null
export (String, FILE) var new_scene_path = null

func _ready():
	connect("body_entered", self, "body_entered")

func body_entered(body):
	var singleton = get_node("/root/Global")
	singleton.player_map_position = new_scene_player_start_pos
	get_tree().change_scene("res://Scenes/Village1.tscn")