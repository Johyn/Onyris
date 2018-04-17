extends Node2D
var terrain_speed = 1.0
var speed = 100
var map_pos = get_node("Player/Sprite").global_position
var mouse_pos = get_global_mouse_position()
var delta_position = mouse_pos - $Player.global_position # mouse click relative to player sprite
var distance = map_pos.distance_to(mouse_pos)
var duration = distance * terrain_speed/speed
            
