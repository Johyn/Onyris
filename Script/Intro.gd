extends Node2D
func ready():
    set_process_input(true) 
func _input(event):
    if event is InputEventMouseButton and event.pressed and event.button_index == 1:
    	get_node("AnimationPlayer").play("change")



func _on_AnimationPlayer_animation_finished( change ):
		get_tree().change_scene("res://Scenes/World.tscn")