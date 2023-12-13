extends Node2D

var Global

# Called when the node enters the scene tree for the first time.
func _ready():
	Global = preload("res://Global.gd")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_quit_btn_pressed():
	get_tree().quit()


func _on_tentar_btn_pressed():
	SceneTransition.change_scene("res://Levels.tscn")
	#var previous_scene_name = Global.get_previous_scene_name()
	#var current_scene = get_tree().get_current_scene()
	#get_tree().change_scene(current_scene)
	#print(previous_scene_name.type)
	# SceneTransition.change_scene(previous_scene_name)
