extends DialogueAction
class_name DialogueActionForceState

# A dialogue action that doesn't care what the state is at the beginning, but branches based on the state at the end
func _init(on: String, off: String, interrupt: bool = true, delay: float = 0.0) -> void:
	super(
		on,
		off,
		on,
		off,
		interrupt,
		delay
	)
