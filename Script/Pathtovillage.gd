extends CollisionShape2D

func ready():
    set_process_input(true) 
func _on_Area2D2_input_event(viewport, event, shape_idx):
    if event is InputEventMouseButton and event.pressed and event.button_index == 1:
    	get_node("AnimationPlayer2").play("back")



func _on_AnimationPlayer_animation_finished( change ):
		get_tree().change_scene("res://Scenes/Village.tscn")

