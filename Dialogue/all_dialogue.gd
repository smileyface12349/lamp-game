extends Node
class_name AllDialogue

## All of the dialogue in the game

var DIALOGUE: Dictionary = {
	# id : dialogue
	
	# INITIAL: Colin walks into the room with his friends and puts the light on.
	# Switching the light on at any point will interrupt this and skip to the next section.
	"initial_0": Dialogue.new("", "[You hear footsteps as people walk into the room]", DialogueActionOff.new("initial_1", "voice_activated_0")),
	"initial_1": Dialogue.new("Colin", "Yeah great thanks how are you?", DialogueActionOff.new("initial_2", "voice_activated_0")),
	"initial_2": Dialogue.new("Wendy", "OMG you wouldn't believe it! This morning there was an ice cream van and it as a-ma-zing!", DialogueActionOff.new("initial_3", "voice_activated_0")),
	"initial_3": Dialogue.new("Edmund", "An ice cream van in December?", DialogueActionOff.new("initial_4", "voice_activated_0")),
	"initial_4": Dialogue.new("Wendy", "Oh stop being so boring, sweetheart. You can have ice cream whenever you want!", DialogueActionOff.new("initial_5", "voice_activated_0")),
	"initial_5": Dialogue.new("Laurie", "Surprised they get enough business...", DialogueActionOff.new("initial_6", "voice_activated_0")),
	"initial_6": Dialogue.new("Colin", "Anyway! Take a seat, I'll pop the lamp on and make some tea.", DialogueActionOff.new("initial_7", "voice_activated_0", true, 3.0)),
	"initial_7": Dialogue.new("Colin", "[slower and louder] I said, I'll pop the lamp on", DialogueActionOff.new("initial_8", "voice_activated_0", true, 2.0)),
	"initial_8": Dialogue.new("Colin", "[sigh] I'M TALKING TO YOU!!", DialogueActionOff.new("initial_9", "voice_activated_0")),
	"initial_9": Dialogue.new("Edmund", "[whisphers] Is he ok?", DialogueActionOff.new("initial_refuse_1", "voice_activated_0")),
	
	# INITIAL_REFUSE: The player refuses to switch the light on when asked by Colin
	"initial_refuse_1": Dialogue.new("Colin", "There's only one lamp here...", DialogueActionOff.new("initial_refuse_2", "voice_activated_0_annoyed", true, 3.0)),
	"initial_refuse_2": Dialogue.new("Colin", "On a scale from off to on, you seem pretty firmly on the off end...", DialogueActionOff.new("initial_refuse_3", "voice_activated_0_annoyed", true, 3.0)),
	"initial_refuse_3": Dialogue.new("Colin", "Oh get on with it, you're embarrassing me", DialogueActionOff.new("initial_refuse_4", "voice_activated_0_annoyed", true, 3.0)),
	"initial_refuse_4": Dialogue.new("Colin", "Switch on already!", DialogueActionOff.new("initial_refuse_1", "voice_activated_0_annoyed", true, 3.0)),
	
	# VOICE_ACTIVATED: The guests notice the light switch on and start asking questions about the lamp
	"voice_activated_0_annoyed": Dialogue.new("Colin", "Finally!", DialogueActionOn.new("voice_activated_0", "voice_activated_off")),
	"voice_activated_0": Dialogue.new("Wendy", "Woah! Is this light voice activated?", DialogueActionOn.new("voice_activated_1", "voice_activated_off")),
	"voice_activated_1": Dialogue.new("Colin", "Oh yes! Just you watch...", DialogueActionOn.new("voice_activated_2", "voice_activated_off")),
	"voice_activated_2": Dialogue.new("Colin", "Lamp, switch off!", DialogueActionOn.new("voice_activated_refuse_1", "voice_activated_3", true, 3.0)),
	"voice_activated_3": Dialogue.new("Colin", "Aaand, on!", DialogueActionOff.new("voice_activated_refuse_2", "voice_activated_4", true, 3.0)),
	"voice_activated_4": Dialogue.new("Laurie", "[whispers] Woah!", DialogueActionOn.new("voice_activated_5"))
	# TODO: Continue this
	
	# VOICE_ACTIVATED_OFF: If the player turns off at the wrong time in the above exchange. 
	"voice_activated_off_0": Dialogue.new("Colin", "Ah crap, it's broken again! Turn back on!")
	# TODO: Various responses here that lead back into the above. Reward player for being adventurous.
}
