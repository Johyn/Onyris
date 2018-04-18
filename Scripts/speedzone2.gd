extends CollisionPolygon2D

func _on_Area2D2_body_entered(body):
	get_node("/root/Global").speed = 1
	
	