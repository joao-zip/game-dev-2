extends Node2D

onready var picture : Node2D = $lagarta

func _ready():
	pass


func _process(delta):
	if picture.get_win():
		get_tree().change_scene("res://win_level.tscn")
	
	if picture.get_lose():
		SceneTransition.change_scene("res://Game_over.tscn")
