extends Node

@export var path: RichTextLabel
@export var copyPathButton: Button
@export var mainMenuButton: Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	path.text = "Your Path: " + ", ".join(Globals.path)
	copyPathButton.connect("pressed", copy_path)
	mainMenuButton.connect("pressed", main_menu)

func copy_path() -> void:
	DisplayServer.clipboard_set(", ".join(Globals.path))

func main_menu() -> void:
	get_tree().change_scene_to_file("res://menu.tscn")