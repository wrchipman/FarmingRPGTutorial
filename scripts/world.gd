extends Node2D

@export var starting_scene: PackedScene = null

func _ready():
	var start_scene_node = starting_scene.instantiate()
	add_child(start_scene_node)
	
