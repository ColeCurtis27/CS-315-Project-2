extends Node2D

func _on_retry_pressed() -> void:
	if GameController.previousLevelPath != "":
		GameController.resetVariables()
		get_tree().change_scene_to_file(GameController.previousLevelPath)
