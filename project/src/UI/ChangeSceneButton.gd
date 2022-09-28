extends Button


export var scene_path: String = ""


func _on_button_up():
	get_tree().paused = false
	get_tree().change_scene(scene_path)
