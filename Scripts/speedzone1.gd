extends CollisionPolygon2D

func _on_Area2D_body_entered(body):
	get_node("/root/Global").speed = 8
	
