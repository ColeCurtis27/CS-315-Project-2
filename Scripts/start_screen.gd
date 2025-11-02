extends Node2D

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://CS-315-Projevt-2/Scenes/p_level_1.tscn")

func _on_instructions_pressed() -> void:
	get_tree().change_scene_to_file("res://CS-315-Projevt-2/Scenes/Instructions.tscn")
	
