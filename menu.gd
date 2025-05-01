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
	check_dialogue()
	get_tree().change_scene_to_file("res://main.tscn")

# Checks for non-empty dead links and flags them to console
# (empty string means an intentional ending)
func check_dialogue() -> void:
	for id: String in AllDialogue.DIALOGUE:
		var dialogue: DialogueBase = AllDialogue.DIALOGUE[id]
		if dialogue.action is Action:
			for result: String in [dialogue.action.on_on, dialogue.action.on_off, dialogue.action.off_on, dialogue.action.off_off]:
				if result not in AllDialogue.DIALOGUE and result != "":
					print("DEAD LINK FROM " + id + " TO " + result)
