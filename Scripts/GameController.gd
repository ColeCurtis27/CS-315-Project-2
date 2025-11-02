extends Node

var gemsCollected = 0
signal gemCollected
signal loseHealth
signal gainHealth
var levelCompleted = false
var playerHP = 3
var previousLevelPath = ""

func collectGem():
	gemsCollected += 1
	gemCollected.emit()

func gainedHealth():
	playerHP += 1
	gainHealth.emit()

func lostHealth():
	playerHP -= 1
	loseHealth.emit()
	if playerHP <= 0:
		death()
	
func resetVariables():
	gemsCollected = 0
	playerHP = 3
	levelCompleted = false
	
func death():
	previousLevelPath = get_tree().current_scene.scene_file_path
	get_tree().change_scene_to_file("res://CS-315-Projevt-2/Scenes/deathScreen.tscn")
