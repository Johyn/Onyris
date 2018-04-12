extends Node2D

func ready():
    set_process_input(true) 
func _input(event):
	if event is InputEventMouseButton:
        if event.get_button_index() == BUTTON_RIGHT and event.is_pressed():
            get_tree().change_scene("res://Scenes/Map.tscn")