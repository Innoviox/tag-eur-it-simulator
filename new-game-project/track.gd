class_name Track
extends Node

var cityFrom: City
var cityTo: City
var line: Line2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	line = $Line2D
	line.points[0] = cityFrom.position
	line.points[1] = cityTo.position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
