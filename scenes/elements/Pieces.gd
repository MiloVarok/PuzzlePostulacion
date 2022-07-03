extends AnimatedSprite

var inside = false
var placement = false
var areaCount = 0

var memory = Vector2()

func _ready():
	pass 

func _process(delta):
	if inside == true:
		self.set_global_position(get_global_mouse_position())
		self.z_index = 2 #Trae la pieza al frente al arrastrarla
	if placement == true and Input.is_action_just_released("left_click"):
		self.set_position(memory)
		self.z_index = 0
		placement = false
	pass

func _on_AreaPieces_area_entered(area):
	areaCount += 1 
	memory = area.global_position #guarda posición del area con la que colisiona
	placement = true 
	pass 


func _on_AreaPieces_area_exited(area):
	areaCount -= 1 
	if areaCount == 0: #Contador de colisión con areas
		placement = false
	pass 


func _on_AreaPieces_input_event(viewport, event, shape_idx): #movimiento de la pieza, detección del click
	if event.is_action_pressed("left_click"):
		inside = true
	if event.is_action_released("left_click"):
		inside = false
	pass
