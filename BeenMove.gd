extends KinematicBody2D


var velocity = Vector2.ZERO #Make a variable for velocity so it can be changed later.

#The following function checks inputs then changes player velocity on physics updates.
func _physics_process(delta): #Anything in this function is done on physics updates.
	if Input.is_action_pressed("ui_left"):
		velocity.x = 4
	elif Input.is_action_pressed("ui_right"):
		velocity.x = -4
	else:
		velocity.x - 0
	if Input.is_action_pressed("ui_up"):
		velocity.y = 4
	elif Input.is_action_pressed("ui_down"):
		velocity.y = -4
	else:
		velocity.y = 0
	#There's probably a better way to move the player without this yanderedev-level spaghetti code but I can't be bothered to find out what it is.
