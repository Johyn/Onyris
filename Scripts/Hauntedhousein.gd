extends CollisionShape2D

func _on_Area2D5_body_entered(body):
	get_tree().change_scene("res://Scenes/Haunted-house.tscn")
