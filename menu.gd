extends Node

@export var startButton: Button
@export var startPointTextEdit: TextEdit
@export var wordsDisplay: RichTextLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	startButton.connect("pressed", start_game)
	startPointTextEdit.connect("text_changed", change_start_point)
	wordsDisplay.text = "Word Count: " + str(count_words())

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
			var done: Array[String] = []
			for result: String in [dialogue.action.on_on, dialogue.action.on_off, dialogue.action.off_on, dialogue.action.off_off]:
				if result != "" and result not in done:
					done.append(result)
					if result not in AllDialogue.DIALOGUE:
						print("DEAD LINK FROM " + id + " TO " + result)

func count_words() -> int:
	var count: int = 0
	for id: String in AllDialogue.DIALOGUE:
		var dialogue: DialogueBase = AllDialogue.DIALOGUE[id]
		count += dialogue.get_text().split(" ").size()
		# Multiple lines
		while dialogue.next_line():
			count += dialogue.get_text().split(" ").size()
	return count
