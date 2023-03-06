extends Node2D 

@export var obstacle: PackedScene = preload("res://scenes/obstacle.tscn")

func _ready():
	$SpawnTimer.connect("timeout", self._on_timeout)

func _on_timeout():
	var obstacle_instance = obstacle.instantiate()
	obstacle_instance.position = global_position
 
	get_tree().current_scene.add_child(obstacle_instance)
