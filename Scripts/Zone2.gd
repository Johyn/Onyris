extends CollisionShape2D

func _on_Zone2_body_entered(body):
	get_tree().change_scene("res://Scenes/Pathvillage.tscn")



