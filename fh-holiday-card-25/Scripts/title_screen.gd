extends Node2D

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("action_key"):
		get_tree().change_scene_to_file("res://Scenes/level1-1.tscn")
