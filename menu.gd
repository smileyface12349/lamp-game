extends Node

@export var startButton: Button
@export var startPointTextEdit: TextEdit

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	startButton.connect("pressed", start_game)
	startPointTextEdit.connect("text_changed", change_start_point)

func change_start_point() -> void:
	Globals.start_point = startPointTextEdit.text

func start_game() -> void:
	get_tree().change_scene_to_file("res://main.tscn")
