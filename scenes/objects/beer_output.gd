extends Node2D

@export var left_side : bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if left_side:
		$Sprite2D.flip_h = left_side


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
