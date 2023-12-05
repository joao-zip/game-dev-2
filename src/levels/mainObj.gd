extends Area2D

var win : bool
var init_position : Vector2

func _ready():
	init_position = global_position
	win = false


func _process(delta):
	if Input.is_action_pressed("ui_left_click"):
		global_position = get_global_mouse_position()
	else:
		if not win:
			global_position = init_position


func _on_sombra_1_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	print('Ganhemo')
	z_index = 1
