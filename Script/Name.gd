extends LineEdit



func _on_AnimationPlayer2_animation_finished(anim_name):
	get_tree().change_scene("res://Scenes/Soul.tscn")

