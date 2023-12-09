extends Node2D

onready var picture : Node2D = $abelha

var Global : Global

func _ready():
	Global  = preload("res://Global.gd").new()
	var current_scene_name : String = get_tree().get_current_scene().get_filename()
	Global.set_previous_scene_name(current_scene_name)
	print(Global.get_previous_scene_name())


func _process(delta):
	if picture.get_win():
		SceneTransition.change_scene("res://win_level.tscn")
	
	if picture.get_lose():
		SceneTransition.change_scene("res://Game_over.tscn")



