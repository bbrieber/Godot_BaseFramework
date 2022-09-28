extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"



func _on_button_up():
	get_tree().reload_current_scene()
	get_tree().paused = false
