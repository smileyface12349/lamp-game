class_name DialogueBase
extends Node

var action: ActionBase
var flags: Array[String]

func _init(action: ActionBase, flags: Array[String] = []) -> void:
	self.action = action
	self.flags = flags

func get_text() -> String:
	return ""

func get_character() -> Character:
	return NoCharacter.new()

func get_total_time(wpm: float, extra_seconds: float) -> float:
	return 0

func next_line() -> bool:
	return false

func get_text_body() -> String:
	return ""

func get_description() -> String:
	return ""