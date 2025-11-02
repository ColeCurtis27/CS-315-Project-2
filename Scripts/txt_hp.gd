extends Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.text = "HP: " + str(GameController.playerHP)
	GameController.gainHealth.connect(gainedHealth)
	GameController.loseHealth.connect(lostHealth)
	
func gainedHealth():
	self.text = "HP: " + str(GameController.playerHP)

func lostHealth():
	self.text = "HP: " + str(GameController.playerHP)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
