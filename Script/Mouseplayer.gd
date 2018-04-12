extends Node2D

var terrain_speed = 1.0 #speed of movement in current zone, you have to make code which will change this value when player enters to zone

var speed = 100 #more = slower, less = faster, try to fit the best

func _input(event):
        if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed:
            #helpers
            var player_pos = $Player/Sprite.global_position
            var mouse_pos = (get_global_mouse_position())

            var duration = (abs(player_pos  - mouse_pos) * terrain_speed)/speed

            $Tween.interpolate_property($Player/Sprite, "global_position", player_pos, mouse_pos, duration, Tween.TRANS_LINEAR, Tween.EASE_IN)
            $Tween.start()