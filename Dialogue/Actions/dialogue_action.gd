extends ActionBase
class_name Action

var on_on: String
var on_off: String
var off_on: String
var off_off: String

# What to do when the dialogue finishes
# on_on: Was on, remained on
# on_off: Was on, switched to off
# off_on: Was off, switched to on
# off_off: Was off, remained off
# interrupt: Whether or not the character's speech should be interrupted when switching the light,
#  or if it should wait until this dialogue finishes before going to the next one
# delay: An optional delay before going to the next dialogue. Only applies if the player does
#  not switch - if they do switch, the action is processed immediately regardless of interrupt
func _init(on_on: String, on_off: String, off_on: String, off_off: String, interrupt: bool = true) -> void:
    self.on_on = on_on
    self.on_off = on_off
    self.off_on = off_on
    self.off_off = off_off
    super(interrupt)

# Get the piece of dialogue to go to next
func get_next(old_lamp_state: bool, new_lamp_state: bool, state: Dictionary = {}) -> String:
    if old_lamp_state and new_lamp_state:
        return self.on_on
    elif old_lamp_state and not new_lamp_state:
        return self.on_off
    elif not old_lamp_state and new_lamp_state:
        return self.off_on
    else:
        return self.off_off

func get_description() -> String:
    return "On -> On: <" + self.on_on + ">, On -> Off: <" + self.on_off + ">, Off -> On: <" + self.off_on + ">, Off -> Off: <" + self.off_off + ">"