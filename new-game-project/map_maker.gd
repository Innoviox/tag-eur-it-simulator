extends Node

@export var city_scene: PackedScene = preload("res://city.tscn")
@export var route_scene: PackedScene = preload("res://route.tscn")

var map = "res://maps/map1.txt"

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
			cityNode.X = city[1]
			cityNode.Y = city[2]
			
			add_child(cityNode)
		else:
			var train = line.split(",")
			
			var trainNode = route_scene.instantiate()
			


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
