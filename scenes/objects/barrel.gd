class_name Barrel
extends Node2D

@onready var progress_bar: ProgressBar = $BarrelLoad/ProgressBar

var progress_timer : float = 0.3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	progress_bar.value = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if progress_bar.value >= progress_bar.max_value:
		queue_free()


func increase_progress_timer(p_timer : float) -> void:
	progress_timer = p_timer

func start_filling() -> void:
	$IncreaseLoad.start(progress_timer)

func _on_increase_load_timeout() -> void:
	progress_bar.value += 1
