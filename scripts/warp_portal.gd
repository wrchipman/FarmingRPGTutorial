extends Area2D

@export var new_scene: PackedScene = null


func _on_body_entered(body):
	print("on_body")
	if body is Player:
		var root_node = get_tree().get_root().get_node("World")
		
		var current_scene = root_node.get_child(0)
		var new_scene_node = new_scene.instantiate()
		root_node.call_deferred("add_child", new_scene_node)
		current_scene.queue_free()
