extends Action
class_name ActionOn

# A dialogue action for a piece of dialogue that should only happen when the light is on
# This is primarily just to simplify data entry - it will always failsafe if the light is wrong
func _init(stay_on: String, switch_off: String, interrupt: bool = true) -> void:
	super(
		stay_on,
		switch_off,
		stay_on, # shouldn't happen
		switch_off, # shouldn't happen
		interrupt
	)
