extends CollisionPolygon2D



func _on_Area2D6_body_entered(body):
	get_tree().change_scene("res://Scenes/Caban.tscn")
