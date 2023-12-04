extends Node2D

export var winScene : 

func _ready():
	pass


func _process(delta):
	pass


func _on_sombra_1_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	get_tree().change_scene(winScene.resource_path)
