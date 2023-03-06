extends Area2D

func _ready():
    connect("body_entered", self._on_body_entered)

func _physics_process(delta):
    position.x += GameManager.game_speed * delta

func _on_body_entered(_body):
    GameManager.set_game_over()