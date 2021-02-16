extends KinematicBody2D


const ACCELERATION = 50
const MAX_SPEED = 250
const FRICTION = 35 #Make a variable for velocity so it can be changed later.
var velocity = Vector2.ZERO

#The following function checks inputs then changes player velocity on physics updates.
func _physics_process(delta): #Anything in this function is done on physics updates.
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		velocity += input_vector * ACCELERATION * delta
		velocity = velocity.clamped(MAX_SPEED * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
	move_and_collide(velocity)
