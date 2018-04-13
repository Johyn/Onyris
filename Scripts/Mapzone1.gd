extends CollisionPolygon2D





func _on_Area2D6_body_entered(body):
	get_node("/root/Map")
	var speed = 1*20