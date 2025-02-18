extends DialogueAction
class_name DialogueActionLinear

# A dialogue action that always leads to the same thing, regardless of the state of the lamp
func _init(next: String, interrupt: bool = true, delay: float = 0.0) -> void:
	super(
		next,
		next,
		next,
		next,
		interrupt,
		delay
	)
