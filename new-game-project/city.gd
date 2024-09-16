extends Node2D

var city: String
var X: int
var Y: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x = X
	position.y = Y


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
