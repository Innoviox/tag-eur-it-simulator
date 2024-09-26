class_name Route
extends Node2D

@export var track_scene: PackedScene = preload("res://track.tscn")

var cities: Array
var stopTimes: Array

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for city_index in (cities.size() - 1):
		var track = track_scene.instantiate()
		track.cityFrom = cities[city_index]
		track.cityTo = cities[city_index + 1]
		
		add_child(track)
		
		#track.make()
		print("instantiated track", track, track.cityFrom.city, track.cityTo.city)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
