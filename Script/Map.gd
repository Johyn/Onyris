extends Node2D
var terrain_speed = 1.0
var speed = 3*50 # triple speed
var first_input = false

func _input(event):
    if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed:
            var map_pos = $Map/Sprite.global_position
            var mouse_pos = get_global_mouse_position()
            var delta_position = mouse_pos - $Player.global_position # mouse click relative to player sprite
            var distance = map_pos.distance_to(mouse_pos)
            var duration = distance * terrain_speed/speed
            if first_input == false:
                first_input = true
            
            $Tween.interpolate_property($Map/Sprite, "global_position", map_pos, map_pos - delta_position, duration,
			 Tween.TRANS_LINEAR, Tween.EASE_IN)
            $Tween.start()
            return
