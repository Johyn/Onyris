extends CollisionPolygon2D


func _on_Area2D2_input_event(viewport, event, shape_idx):
	
    if event is InputEventMouseButton:
        if event.get_button_index() == BUTTON_LEFT and event.is_pressed():
            get_node("AnimationPlayer2").play("change4")
			
func _on_AnimationPlayer2_animation_finished( change4 ):
		get_tree().change_scene("res://Scenes/Mind.tscn")