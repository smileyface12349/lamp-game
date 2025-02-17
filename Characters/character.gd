extends Node
class_name Character

var character_name: String
var colour: Color

func _init(name: String, colour: Color) -> void:
	self.character_name = name
	self.colour = colour

func get_text() -> String:
	return "[color=#" + colour.to_html() + "]" + character_name + "[/color]"