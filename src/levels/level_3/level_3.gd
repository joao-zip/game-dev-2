extends Node2D

onready var picture : Node2D = $flor

func _ready():
	pass


func _process(delta):
	if picture.get_win():
		get_tree().change_scene("res://win_level.tscn")
