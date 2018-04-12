extends CollisionShape2D

func _on_Area2D4_body_entered(body):
	get_tree().change_scene("res://Scenes/Hut.tscn")
