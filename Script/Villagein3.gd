extends CollisionShape2D

func _on_Area2D3_body_entered(body):
	get_tree().change_scene("res://Scenes/Village1.tscn")
