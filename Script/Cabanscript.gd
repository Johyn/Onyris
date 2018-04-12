extends Node2D



func _on_Button_pressed():
	get_node("AnimationPlayer2").play("Atlotlchat")


func _on_Button2_pressed():
	get_node("AnimationPlayer3").play("Atlotlchat2")
