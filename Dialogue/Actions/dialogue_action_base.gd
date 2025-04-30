extends Node
class_name ActionBase

var interrupt: bool

# What to do when the dialogue finishes
# on_on: Was on, remained on
# on_off: Was on, switched to off
# off_on: Was off, switched to on
# off_off: Was off, remained off
# interrupt: Whether or not the character's speech should be interrupted when switching the light,
#  or if it should wait until this dialogue finishes before going to the next one
# delay: An optional delay before going to the next dialogue. Only applies if the player does
#  not switch - if they do switch, the action is processed immediately regardless of interrupt
func _init(interrupt: bool = true) -> void:
    self.interrupt = interrupt

# Get the piece of dialogue to go to next
func get_next(old_lamp_state: bool, new_lamp_state: bool) -> String:
    return "ERROR"