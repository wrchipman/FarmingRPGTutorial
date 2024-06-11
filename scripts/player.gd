extends CharacterBody2D

class_name Player

@export var speed = 100

@onready var body = $Body
@onready var clothes = $Clothes
@onready var pants = $Pants
@onready var shoes = $Shoes
@onready var hair = $Hair


func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed

func _physics_process(_delta):
	get_input()
	set_animation()
	move_and_slide()
	
func set_animation():
	
	if velocity.y > 0:
		down_animation()
	elif velocity.y < 0:
		up_animation()
	elif velocity.x > 0:
		right_animation()
	elif velocity.x < 0:
		left_animation()
	else:
		idle_down_animation()

func idle_down_animation():
	body.play("idle_down")
	clothes.play("idle_down")
	pants.play("idle_down")
	shoes.play("idle_down")
	hair.play("idle_down")
	
func down_animation():
	body.play("walk_down")
	clothes.play("walk_down")
	pants.play("walk_down")
	shoes.play("walk_down")
	hair.play("walk_down")
	
func up_animation():
	body.play("walk_up")
	clothes.play("walk_up")
	pants.play("walk_up")
	shoes.play("walk_up")
	hair.play("walk_up")
	
func left_animation():
	body.play("walk_left")
	clothes.play("walk_left")
	pants.play("walk_left")
	shoes.play("walk_left")
	hair.play("walk_left")
	
func right_animation():
	body.play("walk_right")
	clothes.play("walk_right")
	pants.play("walk_right")
	shoes.play("walk_right")
	hair.play("walk_right")
	
