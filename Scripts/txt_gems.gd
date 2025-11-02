extends Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.text = "Gems: " + str(GameController.gemsCollected)
	GameController.gemCollected.connect(gemCollected)
	
func gemCollected():
	self.text = "Gems: " + str(GameController.gemsCollected)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
