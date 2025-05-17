extends Control

func _on_Back_pressed() -> void:
	get_tree().change_scene_to_file("res://Mainmenu_Scene/Mainmenu.tscn")
