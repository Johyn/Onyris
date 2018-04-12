extends Node2D

var timer_expired

func _ready():
    pass

func _on_Timer_timeout():
     timer_expired = true

func _input(event):
     if event is InputEventMouseButton:
        if event.get_button_index() == BUTTON_LEFT and event.is_pressed() and timer_expired:
            get_node("AnimationPlayer3").play("Oh") 
			
func _on_Greetings_pressed():
	get_node("AnimationPlayer").play("libchat")   


func _on_Im_pressed():
	get_node("AnimationPlayer2").play("libchat2")   



func _on_AnimationPlayer3_animation_finished(anim_name):
	timer_expired = false