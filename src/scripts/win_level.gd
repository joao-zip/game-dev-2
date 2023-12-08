extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _on_next_btn_pressed():
	SceneTransition.change_scene("res://Levels.tscn")


func _on_quit_btn_pressed():
	get_tree().quit()
