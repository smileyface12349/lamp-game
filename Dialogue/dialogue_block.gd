class_name LongDialogue
extends DialogueBase

var elements: Array[Line]
var line: int = 0

func _init(elements: Array[Line], action: ActionBase, flags: Array[String] = []) -> void:
	super(action, flags)
	self.elements = elements
	self.action = action
	self.flags = flags
	self.line = 0

# Advances to the next line of dialogue
# Returns false if there are no more lines to read (and then sets the line back to 0 so it can be re-used)
func next_line() -> bool:
	if line >= elements.size() - 1:
		line = 0
		return false
	line += 1
	return true

# Gets the current line
func get_current_line() -> Line:
	return elements[line]

func get_text() -> String:
	return elements[line].get_text()

func get_character() -> Character:
	return elements[line].get_character()

func get_total_time(wpm: float, extra_seconds: float) -> float:
	return elements[line].get_total_time(wpm, extra_seconds)
