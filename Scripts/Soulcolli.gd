extends CollisionPolygon2D

func _on_Area2D_input_event( viewport, event, shape_idx ):
    if event is InputEventMouseButton:
        if event.get_button_index() == BUTTON_LEFT and event.is_pressed():
            get_node("AnimationPlayer1").play("change")
			
func _on_AnimationPlayer1_animation_finished( change ):
		get_tree().change_scene("res://Scenes/Soul.tscn")

