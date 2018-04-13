extends CollisionShape2D

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
        if event.get_button_index() == BUTTON_LEFT and event.is_pressed():
          remove_child(Area2D/CollisionShape2D) and get_node("AnimationPlayer").play("waeldchat6")   