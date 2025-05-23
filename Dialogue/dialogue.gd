class_name Dialogue
extends DialogueBase

var line: Line

func _init(author: Character, text: String, action: ActionBase, delay: float = 0.0, flags: Array[String] = []) -> void:
    self.line = Line.new(author, text, delay)
    super(action, flags)

func get_text() -> String:
    return line.get_text()

func get_character() -> Character:
    return line.get_character()

func get_total_time(wpm: float, extra_seconds: float) -> float:
    return line.get_total_time(wpm, extra_seconds)

func get_text_body() -> String:
    return line.get_text_body()

func get_description(id: String) -> String:
    var description: String = "<" + id + "> " + line.get_description()
    if flags.size() > 0:
        description += " [FLAGS: " + ", ".join(flags) + "]"
    description += " [ACTION: " + action.get_description() + "]"
    return description