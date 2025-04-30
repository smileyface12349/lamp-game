extends ActionBase
class_name ActionCustom

var custom_action: Callable

func _init(custom_action: Callable, interrupt: bool = true) -> void:
    super(interrupt)
    self.custom_action = custom_action

# Get the piece of dialogue to go to next
func get_next(old_lamp_state: bool, new_lamp_state: bool) -> String:
    return custom_action.call(old_lamp_state, new_lamp_state)