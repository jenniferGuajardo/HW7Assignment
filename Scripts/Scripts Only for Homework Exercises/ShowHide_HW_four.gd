extends Node

# Edited by Jennifer.
# Okay, I was lost for a bit trying to find where the tile controlling things were
# but I found it.
# This area isn't alone in recieving a signal. StaticBody2D recieves its input
# from the same sources "OpenDoorButton" and "NewArea2D."

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _show():
	self.visible = true

func _hide():
	self.visible = false



# You pretty much got to keep holding the button down.

func _on_open_door_button_button_down():
	_show() # Appearence matches what happens.
	pass # Replace with function body.


func _on_open_door_button_button_up():
	_hide() # Appearence matches what happens.
	pass # Replace with function body.


func _on_new_area_2d_body_entered(body):
	_show() # Appearence matches what happens.
	pass # Replace with function body.


func _on_new_area_2d_body_exited(body):
	_hide() # Appearence matches what happens.
	pass # Replace with function body.
