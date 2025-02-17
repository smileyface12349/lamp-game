extends Node

@export var startButton: Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	startButton.connect("pressed", start_game)


func start_game() -> void:
	get_tree().change_scene_to_file("res://main.tscn")