extends CollisionPolygon2D

func _on_Area2D_input_event( viewport, event, shape_idx ):

	if event is InputEventMouseButton:
        if event.get_button_index() == BUTTON_LEFT and event.is_pressed():
            get_node("AnimationPlayer").play("Change")

func _on_AnimationPlayer_animation_finished( Change ):
		get_tree().change_scene("res://Scenes/Oldness.tscn")

