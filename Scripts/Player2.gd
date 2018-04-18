extends KinematicBody2D

var left_mouse_down = false
var tween_node = null
onready var global = get_node("/root/Global")

func _ready():
    tween_node = get_node("Tween") 
				if (global.player_map_position != null):
        self.global_position = global.player_map_position
				
func _physics_process(delta):
	if Input.is_mouse_button_pressed(1):
		if left_mouse_down == false:
			var speed = get_parent().get_node("/root/Global").speed 
			var mouse_pos = get_global_mouse_position()
			tween_node.interpolate_property(self, "global_position", global_position, mouse_pos, speed, Tween.TRANS_LINEAR, Tween.EASE_IN)
			tween_node.start()
		left_mouse_down = true
	else:
		left_mouse_down = false