extends Node2D

func _ready():
	Autoload._game_timer()
	$BestTime.text = String(Autoload.bestLevelTime)
	$Time.text = String(Autoload.levelTime)
	Autoload._reset_time()
	pass

func _on_MenuButton_button_down():
	get_tree().change_scene("res://scenes/menu/Menu.tscn")
	pass 
