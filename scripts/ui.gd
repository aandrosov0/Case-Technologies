extends Control

func _ready():
	$InputLabel.set_text("INPUT: " + (char)(GameManager.keycode))
	$RestartButton.visible = false
	$RestartButton.connect("button_down", GameManager.game_restart)
	
func gameover():
	$RestartButton.visible = true
