extends Node

# Edited By Jennifer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _disable_collision():
	$CollisionShape2D.set_deferred("disabled", true)

func _enable_collision():
	$CollisionShape2D.set_deferred("disabled", false)





func _on_open_door_button_pressed():
	_disable_collision() # This should open the player presses it.
	pass # Replace with function body.



# Okay, so I at least understand that the GodotBot will be allow walk at the door area so long at a part of him is still in "NewArea2D."

func _on_new_area_2d_body_entered(body):
	_disable_collision() # Open the door.
	pass # Replace with function body.


func _on_new_area_2d_body_exited(body):
	_enable_collision() # Close the door.
	pass # Replace with function body.




func _on_open_door_button_button_down():
	_disable_collision()
	pass # Replace with function body.
