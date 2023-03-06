extends Node

@export var game_speed: float = -200
@export var score: float = 0

var keycode = 0

func _ready():
	score = 0
	generate_new_key_code()

func _input(event):
	if event is InputEventKey && event.keycode == keycode:
		Input.action_press("up")
		generate_new_key_code()

func generate_new_key_code():
	keycode = randi_range(65, 90)
	get_tree().current_scene.get_node("UI/InputLabel").set_text("INPUT: " + (char)(keycode))

func game_restart():
	get_tree().paused = false
	get_tree().reload_current_scene()
	self._ready()

func set_game_over():
	get_tree().paused = true
	get_tree().current_scene.get_node("UI").gameover()
