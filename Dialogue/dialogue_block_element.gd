extends Node
class_name Line

var author: Character
var text: String
var delay: float = 0.0

func _init(author: Character, text: String, delay: float = 0.0) -> void:
    self.author = author
    self.text = text
    self.delay = delay

func get_text() -> String:
    if author is NoCharacter:
        return "[center][i]" + text + "[/i]"
    else:
        return "[center]" + author.get_text() + ": " + text

func get_total_time(wpm: float, extra_seconds: float) -> float:
    print("New WPM: " + str(wpm))
    var num_words: float = text.split(" ").size()
    var total_time: float = (num_words / wpm) * 60.0 + extra_seconds + delay
    print("Words: " + str(num_words) + ", Time: " + str(total_time))
    return total_time