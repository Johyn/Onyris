extends CollisionPolygon2D

func _on_zone4_body_entered(body):
	get_node("/root/Global").speed = 3
