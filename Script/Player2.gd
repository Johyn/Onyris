extends KinematicBody2D

var left_mouse_down = false
var tween_node = null

func _ready():
	var singleton = get_node("/root/Map")
	if singleton.player_map_position != null:
		global_position = singleton.player_map_position
		singleton.player_map_position = null
	tween_node = get_node("Tween")
	
func _physics_process(delta):
	if Input.is_mouse_button_pressed(1):
		if left_mouse_down == false:
			var mouse_pos = get_global_mouse_position()
			tween_node.interpolate_property(self, "global_position", global_position, mouse_pos, 1, Tween.TRANS_LINEAR, Tween.EASE_IN)
			tween_node.start()
		left_mouse_down = true
	else:
		left_mouse_down = false