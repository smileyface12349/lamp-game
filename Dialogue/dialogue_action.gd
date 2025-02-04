extends Node
class_name DialogueAction

var on_on: String
var on_off: String
var off_on: String
var off_off: String

var interrupt: bool
var delay: float

# What to do when the dialogue finishes
# on_on: Was on, remained on
# on_off: Was on, switched to off
# off_on: Was off, switched to on
# off_off: Was off, remained off
# interrupt: Whether or not the character's speech should be interrupted when switching the light,
#  or if it should wait until this dialogue finishes before going to the next one
# delay: An optional delay before going to the next dialogue. Only applies if the player does
#  not switch - if they do switch, the action is processed immediately regardless of interrupt
func _init(on_on: String, on_off: String, off_on: String, off_off: String, interrupt: bool = true, delay: float = 0.0) -> void:
	self.on_on = on_on
	self.on_off = on_off
	self.off_on = off_on
	self.off_off = off_off
	self.interrupt = interrupt
	self.delay = delay
