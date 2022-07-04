extends Node2D

var piece1 = false
var piece2 = false
var piece3 = false
var piece4 = false
var piece5 = false
var piece6 = false
var piece7 = false
var piece8 = false
var piece9 = false

func _ready():
	$ContinueText.hide()
	$ContinueButton.hide()
	pass 

func _process(delta):
	if $Piec1.global_position == $Pos1.global_position:
		piece1 = true
	if $Piec1.global_position != $Pos1.global_position:
		piece1 = false
	if $Piec2.global_position == $Pos2.global_position:
		piece2 = true
	if $Piec2.global_position != $Pos2.global_position:
		piece2 = false
	if $Piec3.global_position == $Pos3.global_position:
		piece3 = true
	if $Piec3.global_position != $Pos3.global_position:
		piece3 = false
	if $Piec4.global_position == $Pos4.global_position:
		piece4 = true
	if $Piec4.global_position != $Pos4.global_position:
		piece4 = false
	if $Piec5.global_position == $Pos5.global_position:
		piece5 = true
	if $Piec5.global_position != $Pos5.global_position:
		piece5 = false
	if $Piec6.global_position == $Pos6.global_position:
		piece6 = true
	if $Piec6.global_position != $Pos6.global_position:
		piece6 = false
	if $Piec7.global_position == $Pos7.global_position:
		piece7 = true
	if $Piec7.global_position != $Pos7.global_position:
		piece7 = false
	if $Piec8.global_position == $Pos8.global_position:
		piece8 = true
	if $Piec8.global_position != $Pos8.global_position:
		piece8 = false
	if $Piec9.global_position == $Pos9.global_position:
		piece9 = true
	if $Piec9.global_position != $Pos9.global_position:
		piece9 = false
	if piece1 == true and piece2 == true and piece3 == true and piece4 == true and piece5 == true and piece6 == true and piece7 == true and piece8 == true and piece9 == true:
		_win()
	pass

func _win():
	get_tree().call_group("time", "_game_over")
	$ContinueText.show()
	$ContinueButton.show()
	pass

func _on_ContinueButton_button_down():
	get_tree().change_scene("res://scenes/menu/GameOver.tscn")
	pass
