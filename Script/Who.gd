extends CollisionPolygon2D

func _on_Area2D_input_event( viewport, event, shape_idx ):
    if event is InputEventMouseButton:
        if event.get_button_index() == BUTTON_LEFT and event.is_pressed():
            get_node("AnimationPlayer3").play("change2")
			
func _on_AnimationPlayer3_animation_finished( change2 ):
		get_tree().change_scene("res://Scenes/Name.tscn")
		
