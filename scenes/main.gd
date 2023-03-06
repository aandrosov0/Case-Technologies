extends Node2D

func _ready():
	$ScoreUpdateTimer.connect("timeout", 
		func(): 
			GameManager.score += 1
			$UI.get_node("ScoreLabel").set_text("Score: " + str(GameManager.score)))
