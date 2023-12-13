extends Node2D

export var levelScene : PackedScene

func _init() -> void:
	var screen_size: Vector2 = OS.get_screen_size()
	var window_size: Vector2 = OS.get_window_size()
	
	OS.set_window_position(screen_size * 0.6 - window_size * 0.6)


func _on_Jogar_button_up():
	SceneTransition.change_scene(levelScene.resource_path)


func _on_Criadores_button_up():
	SceneTransition.change_scene("res://Creators.tscn")


func _on_Sair_button_up():
	get_tree().quit()


