extends Node2D

func _on_PlayButton_button_down():
	get_tree().change_scene("res://scenes/levels/LevelOne.tscn")
	pass

func _on_ExitButton_button_down():
	get_tree().quit()
	pass
