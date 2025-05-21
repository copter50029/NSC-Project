extends Node2D

@onready var sprite: Sprite2D = $Sprite2D
@onready var anim_player: AnimationPlayer = $AnimationPlayer
@onready var area: StaticBody2D = $StaticBody2D

var is_opened = false
var player_near = false

func _ready():
	# Chest starts with closed texture (set in editor)
	pass

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("interact") and player_near and not is_opened:
		open_chest()

func open_chest():
	is_opened = true
	anim_player.play("open")

func _on_area_2d_body_entered(body: Node) -> void:
	if body.name == "Male_character":
		player_near = true

func _on_area_2d_body_exited(body: Node) -> void:
	if body.name == "Male_character":
		player_near = false
