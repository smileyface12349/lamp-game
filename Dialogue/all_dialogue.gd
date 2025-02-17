extends Node
class_name AllDialogue

## All of the dialogue in the game

static var DIALOGUE: Dictionary = {
	# id : dialogue
	
	# INITIAL: Colin walks into the room with his friends and puts the light on.
	# Switching the light on at any point will interrupt this and skip to the next section.
	"initial_0": Dialogue.new(NoCharacter.new(), "[You hear footsteps as people walk into the room]", DialogueActionOff.new("initial_1", "sensor_on_0")),
	"initial_1": Dialogue.new(CharacterColin.new(), "Yeah great thanks how are you?", DialogueActionOff.new("initial_2", "sensor_on_0")),
	"initial_2": Dialogue.new(CharacterWendy.new(), "OMG you wouldn't believe it! This morning there was an ice cream van and it was a-ma-zing!", DialogueActionOff.new("initial_3", "sensor_on_0")),
	"initial_3": Dialogue.new(CharacterEdmund.new(), "An ice cream van in December?", DialogueActionOff.new("initial_4", "sensor_on_0")),
	"initial_4": Dialogue.new(CharacterWendy.new(), "Oh stop being so boring, sweetheart. You can have ice cream whenever you want!", DialogueActionOff.new("initial_5", "sensor_on_0")),
	"initial_5": Dialogue.new(CharacterLaurie.new(), "Surprised they get enough business...", DialogueActionOff.new("initial_6", "sensor_on_0")),
	"initial_6": Dialogue.new(CharacterColin.new(), "Anyway! Take a seat, I'll pop the lamp on and make some tea.", DialogueActionOff.new("initial_7", "voice_activated_0", true, 1.0)),
	"initial_7": Dialogue.new(CharacterColin.new(), "[slower and louder] I said, I'll pop the lamp on...", DialogueActionOff.new("initial_8", "voice_activated_0", true, 3.0), ["SHOW_CONTROLS"]),
	"initial_8": Dialogue.new(CharacterColin.new(), "[sigh] I'M TALKING TO YOU!!", DialogueActionOff.new("initial_9", "voice_activated_0", 1.0)),
	"initial_9": Dialogue.new(CharacterEdmund.new(), "[whisphers] Is he ok?", DialogueActionOff.new("initial_refuse_1", "voice_activated_0")),
	
	# INITIAL_REFUSE: The player refuses to switch the light on when asked by Colin
	"initial_refuse_1": Dialogue.new(CharacterColin.new(), "There's only one lamp here...", DialogueActionOff.new("initial_refuse_2", "voice_activated_0_annoyed", true, 3.0)),
	"initial_refuse_2": Dialogue.new(CharacterColin.new(), "On a scale from off to on, you seem pretty firmly on the off end...", DialogueActionOff.new("initial_refuse_3", "voice_activated_0_annoyed", true, 3.0)),
	"initial_refuse_3": Dialogue.new(CharacterColin.new(), "Oh get on with it, you're embarrassing me", DialogueActionOff.new("initial_refuse_4", "voice_activated_0_annoyed", true, 3.0)),
	"initial_refuse_4": Dialogue.new(CharacterColin.new(), "Switch on already!", DialogueActionOff.new("initial_refuse_1", "voice_activated_0_annoyed", true, 3.0)),
	
	# SENSOR_ON: The player switches the light on early, and the characters assume it's a sensor
	"sensor_on_0": Dialogue.new(CharacterWendy.new(), "Oooh, a sensor-activated light. Cool!", DialogueActionOn.new("sensor_on_0a", "sensor_off_0")),
	"sensor_on_0a": Dialogue.new(CharacterWendy.new(), "Well, I'm assuming it's sensor-activated because it went on as soon as we walked into the room...", DialogueActionOn.new("sensor_on_1", "sensor_off_0")),
	"sensor_on_1": Dialogue.new(CharacterColin.new(), "Uh, yeah, I guess?", DialogueActionOn.new("sensor_on_2", "sensor_off_0")),
	"sensor_on_2": Dialogue.new(CharacterEdmund.new(), "Suspicious...", DialogueActionOn.new("sensor_on_3", "sensor_off_0")),
	"sensor_on_3": Dialogue.new(CharacterColin.new(), "Sometimes it just responds to what I say...", DialogueActionOn.new("sensor_on_4", "sensor_cooperate_0", 2.0)),
	"sensor_on_4": Dialogue.new(CharacterColin.new(), "Come on! Turn off...", DialogueActionOn.new("sensor_on_5", "sensor_cooperate_0", 2.0)),
	"sensor_on_5": Dialogue.new(CharacterEdmund.new(), "Have you considered the possibility that it's just... a light that's activated by a sensor?", DialogueActionOn.new("sensor_on_6", "sensor_cooperate_0")),
	"sensor_on_6": Dialogue.new(CharacterColin.new(), "No, it's better than that. It listens to me!", DialogueActionOn.new("sensor_on_7", "sensor_cooperate_0", 1.0)),
	"sensor_on_7": Dialogue.new(CharacterLaurie.new(), "Sure...", DialogueActionOn.new("sensor_on_8", "sensor_cooperate_0")),
	"sensor_on_8": Dialogue.new(CharacterColin.new(), "Lamp, turn on!", DialogueActionOn.new("initial_8", "sensor_cooperate_0", 2.0)),

	# SENSOR_OFF: The player switches the light off while the characters think it's a sensor
	"sensor_off_0": Dialogue.new(CharacterLaurie.new(), "[laughs] Clearly not, it must just be broken", DialogueActionOff.new("sensor_off_1", "sensor_broken_0")),
	"sensor_off_1": Dialogue.new(CharacterColin.new(), "No it's not! Look, it'll turn back on any moment now...", DialogueActionOff.new("initial_8", "sensor_cooperate_0")),

	# SENSOR_COOPERATE: The player co-operates with Colin and turns the light back on after turning it off
	"sensor_cooperate_0": Dialogue.new(CharacterColin.new(), "See!", DialogueActionOn.new("voice_activated_0", "voice_activated_off_0")),

	# SENSOR_BROKEN: The player switches the light back on too early, and the players think it's broken
	"sensor_broken_0": Dialogue.new(CharacterWendy.new(), "Yep, definitely broken...", DialogueActionOn.new("sensor_broken_1", "voice_activated_off_0")),
	"sensor_broken_1": Dialogue.new(CharacterColin.new(), "It's not broken. It just... can be a bit tempermental", DialogueActionOn.new("sensor_broken_2", "voice_activated_off_0")),

	# VOICE_ACTIVATED: The guests notice the light switch on and start asking questions about the lamp
	"voice_activated_0_annoyed": Dialogue.new(CharacterColin.new(), "Finally!", DialogueActionOn.new("voice_activated_0", "voice_activated_off_0"), ["HIDE_CONTROLS"]),
	"voice_activated_0": Dialogue.new(CharacterWendy.new(), "Woah! Is this light voice activated?", DialogueActionOn.new("voice_activated_1", "voice_activated_off_0"), ["HIDE_CONTROLS"]),
	"voice_activated_1": Dialogue.new(CharacterColin.new(), "Oh yes! Just you watch...", DialogueActionOn.new("voice_activated_2", "voice_activated_off_0")),
	"voice_activated_2": Dialogue.new(CharacterColin.new(), "Lamp, switch off!", DialogueActionOn.new("voice_activated_refuse_1", "voice_activated_3", true, 3.0)),
	"voice_activated_3": Dialogue.new(CharacterColin.new(), "Aaand, on!", DialogueActionOff.new("voice_activated_refuse_2", "voice_activated_4", true, 3.0)),
	"voice_activated_4": Dialogue.new(CharacterLaurie.new(), "[whispers] Woah!", DialogueActionOn.new("voice_activated_5", "voice_activated_off_0")),
	# TODO: Continue this
	
	# VOICE_ACTIVATED_OFF: If the player turns off at the wrong time in the above exchange. 
	"voice_activated_off_0": Dialogue.new(CharacterColin.new(), "Ah crap, it's broken again! Turn back on!", DialogueActionOff.new("", ""))
	# TODO: Various responses here that lead back into the above. Reward player for being adventurous.
}
