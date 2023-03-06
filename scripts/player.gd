extends CharacterBody2D

@export var jump_force: float = 200

@onready var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _process(_delta):
	if !is_on_floor() && velocity.y < 0: 
		$AnimatedSprite2D.play("up")
	elif !is_on_floor() && velocity.y > 0:
		$AnimatedSprite2D.play("down")
	else:
		$AnimatedSprite2D.play("run")

func _physics_process(delta):
	velocity.y += delta * gravity

	if Input.is_action_just_pressed("up") && is_on_floor():
		velocity.y = -jump_force

	move_and_slide()
