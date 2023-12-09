extends Node

var previous_scene_name : String = "" setget set_previous_scene_name, get_previous_scene_name

func _ready():
	pass
	
func set_previous_scene_name(name: String):
	previous_scene_name = name
	
func get_previous_scene_name() -> String:
	return previous_scene_name
