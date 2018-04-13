extends CollisionPolygon2D

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == 1:
		get_node("AnimationPlayer").play("quit")
