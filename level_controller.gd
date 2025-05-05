extends Node

@export var lampOn: Panel
@export var lampOff: Panel
@export var lampDisabled: Panel
@export var dialogueText: RichTextLabel
@export var readingSpeedDropdown: OptionButton 
@export var controlsHint: RichTextLabel

var current: DialogueBase
var lamp: bool = false
var elapsed: float = 0.0
var timeForDialogue: float = 0.0
var animationIn: float = -ANIMATION_FADE_LENGTH
var powered: bool = true

var wpm: float
var extra_seconds: float

var state: Dictionary = {
	"total_flips": 0
}

const ANIMATION_IN_CHARACTERS_PER_SECOND: float = 40
const ANIMATION_OUT_DURATION: float = 0.5
const EXTRA_BLACK_TIME: float = 0.2
const ANIMATION_FADE_LENGTH: int = 10
const SWITCH_COOLDOWN: float = 0.5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Initialise reading speed to 0
	reading_speed_changed(1)

	# Initialise state to the first bit of dialogue
	change_state(Globals.start_point)

	# Connect buttons to methods
	readingSpeedDropdown.connect("item_selected", reading_speed_changed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	elapsed += delta

	# Switch when time elapsed
	if elapsed > timeForDialogue:
		if not current.next_line():
			var next: String = current.action.get_next(lamp, lamp, state)
			change_state(next)
		else:
			display_line()
		
	# Fade in
	animationIn += ANIMATION_IN_CHARACTERS_PER_SECOND * delta
	dialogueText.text = "[fade start=" + str(floor(animationIn)) + " length=" + str(ANIMATION_FADE_LENGTH) + "]" + current.get_text()

	# Fade out
	if elapsed > timeForDialogue - ANIMATION_OUT_DURATION - EXTRA_BLACK_TIME:
		var alpha: float = (timeForDialogue - EXTRA_BLACK_TIME - elapsed) / ANIMATION_OUT_DURATION
		dialogueText.modulate = Color(1, 1, 1, alpha)
	else:
		dialogueText.modulate = Color(1, 1, 1, 1)

# Toggle lamp with space bar
func _input(event: InputEvent) -> void:
	if not powered:
		return
	if Input.is_action_just_pressed("toggle_lamp"):
		if elapsed < SWITCH_COOLDOWN and not current.flags.has("FAST_SWITCH"):
			return
		if current.action.interrupt:
			change_state(current.action.get_next(lamp, !lamp, state))
		state["total_flips"] += 1
		update_lamp_visuals()

# Update visual state of lamp to match its state. Call each time the lamp is toggled (and more if you want).
func update_lamp_visuals() -> void:
	lamp = !lamp
	lampOn.visible = lamp
	lampOff.visible = !lamp
	if lamp and powered:
		dialogueText.add_theme_color_override("default_color", Color.BLACK)
	else:
		dialogueText.add_theme_color_override("default_color", Color.WHITE)


# Change the current piece of dialogue to a new id
func change_state(id: String) -> void:
	# Track the path (only for testing purposes)
	Globals.path.append(id)

	# If they've reached the end
	if id not in AllDialogue.DIALOGUE:
		get_tree().change_scene_to_file("res://game_over.tscn")
		return

	# Change the dialogue state
	current = AllDialogue.DIALOGUE[id]
	display_line()

	# Process special behaviours
	if not current.flags.is_empty():
		if "SHOW_CONTROLS" in current.flags:
			controlsHint.show()
		elif "HIDE_CONTROLS" in current.flags:
			controlsHint.hide()
		if "POWERED" in current.flags:
			powered = true
			lampDisabled.hide()
		elif "UNPOWERED" in current.flags:
			powered = false
			lampDisabled.show()

func display_line() -> void:
	# Change the dialogue state
	dialogueText.text = current.get_text()
	timeForDialogue = current.get_total_time(wpm, extra_seconds)
	elapsed = 0
	animationIn = -ANIMATION_FADE_LENGTH

# User has adjusted their reading speed
func reading_speed_changed(index: int) -> void:
	if index == 0:
		# Slow reading speed
		wpm = 200
		extra_seconds = 3
	elif index == 1:
		# Medium reading speed
		wpm = 250
		extra_seconds = 2
	elif index == 2:
		# Fast reading speed
		wpm = 350
		extra_seconds = 1.5
