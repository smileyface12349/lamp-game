extends Action
class_name ActionOff

# A dialogue action for a piece of dialogue that should only happen when the light is on
# This is primarily just to simplify data entry - it will always failsafe if the light is wrong
func _init(stay_off: String, switch_on: String, interrupt: bool = true) -> void:
	super(
		switch_on, # shouldn't happen
		stay_off, # shouldn't happen
		switch_on,
		stay_off,
		interrupt,
	)
