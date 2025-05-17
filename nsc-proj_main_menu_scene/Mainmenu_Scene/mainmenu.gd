extends Control

func _process(_delta):
	# เลื่อน ParallaxBackground ตามเมาส์ (หรือกล้อง) เพื่อให้เกิด effect
	var mouse_pos = get_viewport().get_mouse_position()
	$ParallaxBackground.scroll_base_offset = mouse_pos * 0.05  # ปรับค่าตามความเร็วที่ต้องการ

func _on_Start_pressed():
	get_tree().change_scene_to_file("res://Copter_map/Levels/game_level.tscn")

func _on_Option_pressed():
	get_tree().change_scene_to_file("res://Option Scene/Option.tscn")

func _on_Quit_pressed():
	get_tree().quit()
