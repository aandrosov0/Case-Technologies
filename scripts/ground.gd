extends StaticBody2D

@export var respawn_position: Vector2

func _ready():
    $VisibleOnScreenNotifier2D.connect("screen_exited", self._on_screen_exited)

func _physics_process(delta: float):
    position.x += GameManager.game_speed * delta

func _on_screen_exited():
    position = respawn_position