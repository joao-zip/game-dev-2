extends Node2D

onready var level : Node2D = $".."
onready var rigth_shadown : Area2D = $"../sombra_1"
onready var background : ColorRect = $"../ColorRect"

var init_position : Vector2
var win : bool
var winner : bool setget, get_win
var mouse_over : bool
#we need 2 frames to accept the entered of 2 areas after unpressed the button
var pressed_frame : int

func _ready():
	init_position = global_position
	mouse_over = false
	win = false
	pressed_frame = 0
	background.mouse_filter = Control.MOUSE_FILTER_IGNORE


func _process(delta):
	if (mouse_over and Input.is_action_pressed("ui_left_click")):
		global_position = get_global_mouse_position()
		$Area2DInside/CollisionShape2D.disabled = true
		pressed_frame = 2
	else:
		$Area2DInside/CollisionShape2D.disabled = false
		if !pressed_frame:
			if not win:
				global_position = init_position
			else:
				global_position = rigth_shadown.position
		else:
			pressed_frame -= 1
			
func get_win() -> bool:
	return win


func _on_Area2D_mouse_entered():
	mouse_over = true


func _on_Area2D_mouse_exited():
	mouse_over = false


func _on_sombra_1_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.get_name() == 'Area2DInside':
		win = true
	z_index = 1
