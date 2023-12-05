extends Area2D

onready var rigth_shadown : Area2D = get_parent().get_node("sombra_1")

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
		else:
			global_position = rigth_shadown.position


func _on_sombra_1_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	print('Ganhemo')
	win = true
