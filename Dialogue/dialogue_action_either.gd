extends DialogueAction
class_name DialogueActionEither

# A dialogue action for a piece of dialogue that can happen on either, but doesn't actually care what state it is
# The action depends only on whether the light stays the same or changes
func _init(stay_same: String, switch: String, interrupt: bool = true, delay: float = 0.0) -> void:
	super(
		stay_same,
		switch,
		switch,
		stay_same,
		interrupt,
		delay
	)
