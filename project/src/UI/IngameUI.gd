extends Control


onready var scene_tree: = get_tree()
onready var pause_overlay: ColorRect = get_node("PauseOverlay")

var paused : =false setget set_paused


func set_paused(value):
	paused = value
	scene_tree.paused = value
	pause_overlay.visible = value
	
	
func _unhandled_input(event):
	if event.is_action("Pause") && event.is_pressed():
		self.paused = !paused
		scene_tree.set_input_as_handled()


func _on_continue_button_up():
	self.paused = false
