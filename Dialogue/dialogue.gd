class_name Dialogue
extends Node

var author: String
var text: String
var action: DialogueAction

func _init(author: String, text: String, action: DialogueAction) -> void:
	self.author = author
	self.text = text
	self.action = action
