extends Node2D

onready var picture : Node2D = $pa_e_luva

func _ready():
	pass


func _process(_delta):
	if picture.get_win():
		SceneTransition.change_scene("res://win_level.tscn")
	
	if picture.get_lose():
		SceneTransition.change_scene("res://Game_over.tscn")


