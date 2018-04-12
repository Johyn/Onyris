extends AnimationPlayer

func _on_LineEdit_text_entered(new_text):
    Playerstats.player_name = new_text
    play("change")