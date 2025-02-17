extends Node

@export var lampOn: Panel
@export var lampOff: Panel
@export var dialogueText: RichTextLabel
@export var readingSpeedDropdown: OptionButton 

var state: Dialogue = AllDialogue.DIALOGUE["initial_0"]
var elapsed: float = 0.0
var timeForDialogue: float = 0.0
var animationIn: float = -ANIMATION_FADE_LENGTH

var wpm: float
var extra_seconds: float

const ANIMATION_IN_CHARACTERS_PER_SECOND: float = 40
const ANIMATION_OUT_DURATION: float = 0.5
const EXTRA_BLACK_TIME: float = 0.2
const ANIMATION_FADE_LENGTH: int = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Initialise reading speed to 0
	reading_speed_changed(1)

	# Initialise state to the first bit of dialogue
	change_state(state)

	# Connect buttons to methods
	readingSpeedDropdown.connect("item_selected", reading_speed_changed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	elapsed += delta

	# Switch when time elapsed
	if elapsed > timeForDialogue:
		change_state(AllDialogue.DIALOGUE[state.action.off_off])
		elapsed = 0

	# Fade in
	animationIn += ANIMATION_IN_CHARACTERS_PER_SECOND * delta
	dialogueText.text = "[fade start=" + str(floor(animationIn)) + " length=" + str(ANIMATION_FADE_LENGTH) + "]" + state.get_text()

	# Fade out
	if elapsed > timeForDialogue - ANIMATION_OUT_DURATION - EXTRA_BLACK_TIME:
		var alpha: float = (timeForDialogue - EXTRA_BLACK_TIME - elapsed) / ANIMATION_OUT_DURATION
		dialogueText.modulate = Color(1, 1, 1, alpha)
	else:
		dialogueText.modulate = Color(1, 1, 1, 1)

# Change the current piece of dialogue
func change_state(new_state: Dialogue) -> void:
	state = new_state
	dialogueText.text = state.get_text()
	timeForDialogue = state.get_total_time(wpm, extra_seconds)
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
		wpm = 300
		extra_seconds = 1.5