extends Action
class_name ActionLinear

# A dialogue action that always leads to the same thing, regardless of the state of the lamp
func _init(next: String, interrupt: bool = true) -> void:
	super(
		next,
		next,
		next,
		next,
		interrupt,
	)
