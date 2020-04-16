extends KinematicBody2D

export var speed = 200
var velocity = Vector2.ZERO
var direction = "down"

func _ready():
	$anim.play("wait down")

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		direction = "left"
		velocity.x = -speed
	elif Input.is_action_pressed("ui_right"):
		direction = "right"
		velocity.x = speed
	else:
		velocity.x = 0
		
	if Input.is_action_pressed("ui_up"):
		direction = "up"
		velocity.y = -speed
	elif Input.is_action_pressed("ui_down"):
		direction = "down"
		velocity.y = speed
	else:
		velocity.y = 0
	
	if velocity == Vector2.ZERO:
		$anim.play("wait " + direction)
	else:
		$anim.play("walk " + direction)
		
	move_and_collide(velocity * delta)
