extends Node2D


func _on_level_1_button_up():
	get_tree().change_scene("res://levels/level_1/level_1.tscn")


func _on_Voltar_button_up():
	get_tree().change_scene("res://MainMenu.tscn")


func _on_level_2_button_up():
	get_tree().change_scene("res://levels/level_2/level_2.tscn")


func _on_level_3_button_up():
	get_tree().change_scene("res://levels/level_3/level_3.tscn")
