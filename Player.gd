extends CharacterBody2D

@onready var joystick = $"../Camera2D/Joystick"

var speed = 300

func _physics_process(delta):
	var direction = joystick.posVector
	if direction:
		velocity = direction * speed
	else:
		velocity = Vector2(0,0)
		
	move_and_slide()
