extends Node

var levelTime = 0
var bestLevelTime = 100

func _game_timer():
	if levelTime < bestLevelTime:
		bestLevelTime = levelTime
	pass
	
func _reset_time():
	levelTime = 0
	pass
