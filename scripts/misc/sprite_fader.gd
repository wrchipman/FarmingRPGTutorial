extends Node

func _on_area_2d_body_entered(_body):
	var tween = get_tree().create_tween()
	tween.tween_property(self, "modulate", Color(1,1,1,0.6), .3)


func _on_area_2d_body_exited(_body):
	var tween = get_tree().create_tween()
	tween.tween_property(self, "modulate", Color(1,1,1,1), .3)
