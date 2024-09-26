extends Node

@export var city_scene: PackedScene = preload("res://city.tscn")
@export var route_scene: PackedScene = preload("res://route.tscn")

var map = "res://maps/map1.txt"
var time = 0 # game starts at midnight
var cities = {} # name to object

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var file = FileAccess.open(map, FileAccess.READ)
	var content = file.get_as_text()
	
	var citying = true
	for line in content.split("\n"):
		if !line:
			citying = false
			continue
		
		if citying:
			var city = line.split(",")
			
			var cityNode = city_scene.instantiate()
			cityNode.city = city[0]
			cityNode.X = int(city[1]) + 100
			cityNode.Y = int(city[2]) + 100
			
			cities[cityNode.city] = cityNode
			
			add_child(cityNode)
		else:
			var route = line.split(",")
			
			var routeNode = route_scene.instantiate()
			routeNode.cities = [cities[route[0]], cities[route[1]]]
			routeNode.stopTimes = [route[2], route[3]]
			
			add_child(routeNode)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
