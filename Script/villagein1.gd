extends CollisionShape2D


func _on_Area2D_body_entered(body):
		get_node("/root/Map").player_map_position = get_parent().get_parent().get_parent().get_parent().get_node("Map/Sprite").global_position
		get_tree().change_scene("res://Scenes/Pathvillage.tscn")


