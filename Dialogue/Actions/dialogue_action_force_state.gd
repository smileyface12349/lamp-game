extends Action
class_name ActionForceState

# A dialogue action that doesn't care what the state is at the beginning, but branches based on the state at the end
func _init(on: String, off: String, interrupt: bool = true) -> void:
	super(
		on,
		off,
		on,
		off,
		interrupt,
	)

func get_description() -> String:
	return "Ignores initial state and uses final state. On: <" + self.on_on + ">, Off: <" + self.on_off + ">"