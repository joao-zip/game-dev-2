extends Node2D



func _ready():
	pass


#func _process(delta):
#	pass


func _on_Voltar_button_up():
	get_tree().change_scene("res://MainMenu.tscn")
