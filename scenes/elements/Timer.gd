extends Node2D

var timerValue = 0
var stopTimer = false

func _ready():
	$WinMessage.hide()
	pass 

func _process(delta):
	$TimeCount.text = String(timerValue)
	pass


func _on_Timer_timeout():
	if stopTimer == false:
		timerValue += 1
	pass 

func _game_over():
	stopTimer = true
	$Timer.stop()
	$WinMessage.show()
	pass
	

