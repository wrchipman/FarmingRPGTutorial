extends CharacterBody2D

@export var speed = 100

@onready var body = $Body


func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	set_animation()
	move_and_slide()
	
func set_animation():
	
	if velocity.y > 0:
		body.play("walk_down")
	elif velocity.y < 0:
		body.play("walk_up")
	elif velocity.x > 0:
		body.play("walk_right")
	elif velocity.x < 0:
		body.play("walk_left")
	else:
		body.play("idle_down")
