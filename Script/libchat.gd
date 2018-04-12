extends AnimationPlayer

func _on_Greetings_pressed():
	get_node(AnimationPlayer).play("libchat")
