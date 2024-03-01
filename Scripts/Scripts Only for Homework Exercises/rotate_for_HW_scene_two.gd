extends Node2D
@export var rotation_speed : int 
var is_rotating : bool
# Figured out that this little bugger was the key.
# I find it interesting how this script follows a different way of rotating than the last problem.


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _start_rotating():
	is_rotating = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (is_rotating):
		transform = transform.rotated_local(rotation_speed)
	pass






func _on_area_2d_body_entered(body):
	_start_rotating() # Calling the function to rotate Sonic.
	pass # Replace with function body.


func _on_area_2d_body_exited(body):
	is_rotating = false # To make it only so Sonic will stop if you leave.
	pass # Replace with function body.
