extends KinematicBody2D


const ACCELERATION = 400
const MAX_SPEED = 100
const FRICTION = 400 #Make a variable for velocity so it can be changed later.
var velocity = Vector2.ZERO

#The following function checks inputs then changes player velocity on physics updates.
func _physics_process(delta): #Anything in this function is done on physics updates.
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	if input_vector != Vector2.ZERO:
		velocity = input_vector
	else:
		velocity = Vector2.ZERO
	move_and_collide(velocity)
