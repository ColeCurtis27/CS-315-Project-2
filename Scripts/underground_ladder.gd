extends Area2D

@export var target_position: Vector2 = Vector2(100, 1000)
@export var gemsNeeded = 3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and GameController.gemsCollected >= gemsNeeded:
		body.global_position = target_position
		GameController.levelCompleted = true
