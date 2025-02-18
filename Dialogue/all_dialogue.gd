extends Node
class_name AllDialogue

## All of the dialogue in the game

static var DIALOGUE: Dictionary = {
	# id : dialogue
	"TODO": Dialogue.new(NoCharacter.new(), "You've reached some dialogue that hasn't been finished yet! The game will now crash...", DialogueAction.new("", "", "", "", false, 10.0)),
	
	# INITIAL: Colin walks into the room with his friends and puts the light on.
	# Switching the light on at any point will interrupt this and skip to the next section.
	"initial_0": Dialogue.new(NoCharacter.new(), "[You hear footsteps as people walk into the room]", DialogueActionOff.new("initial_1", "sensor_on_0")),
	"initial_1": Dialogue.new(CharacterColin.new(), "Yeah, great thanks! How are you?", DialogueActionOff.new("initial_2", "sensor_on_0")),
	"initial_2": Dialogue.new(CharacterWendy.new(), "OMG you wouldn't believe it! This morning there was an ice cream van and it was a-ma-zing!", DialogueActionOff.new("initial_3", "sensor_on_0")),
	"initial_3": Dialogue.new(CharacterEdmund.new(), "An ice cream van in December?", DialogueActionOff.new("initial_4", "sensor_on_0")),
	"initial_4": Dialogue.new(CharacterWendy.new(), "Oh stop being so boring, sweetheart. You can have ice cream whenever you want!", DialogueActionOff.new("initial_5", "sensor_on_0")),
	"initial_5": Dialogue.new(CharacterLaurie.new(), "Surprised they get enough business...", DialogueActionOff.new("initial_6", "sensor_on_0")),
	"initial_6": Dialogue.new(CharacterColin.new(), "Anyway! Take a seat, I'll pop the lamp on and make some tea.", DialogueActionOff.new("initial_7", "voice_activated_0", true, 1.0)),
	"initial_7": Dialogue.new(CharacterColin.new(), "[slower and louder] I said, I'll pop the lamp on...", DialogueActionOff.new("initial_8", "voice_activated_0", true, 3.0), ["SHOW_CONTROLS"]),
	"initial_8": Dialogue.new(CharacterColin.new(), "[sigh] I'M TALKING TO YOU!!", DialogueActionOff.new("initial_9", "voice_activated_0", 1.0)),
	"initial_9": Dialogue.new(CharacterEdmund.new(), "[whisphers] Is he ok?", DialogueActionOff.new("initial_refuse_1", "voice_activated_0")),
	
	# INITIAL_REFUSE: The player refuses to switch the light on when asked by Colin
	"initial_refuse_1": Dialogue.new(CharacterColin.new(), "Oh get on with it, you're embarrassing me", DialogueActionOff.new("initial_refuse_2", "voice_activated_0_annoyed", true, 3.0)),
	"initial_refuse_2": Dialogue.new(CharacterColin.new(), "There's only one lamp here...", DialogueActionOff.new("initial_refuse_3", "voice_activated_0_annoyed", true, 3.0)),
	"initial_refuse_3": Dialogue.new(CharacterEdmund.new(), "Is he really talking to a lamp...?", DialogueActionOff.new("initial_refuse_4", "voice_activated_0_annoyed", true)),
	"initial_refuse_4": Dialogue.new(CharacterLaurie.new(), "I think so?", DialogueActionOff.new("initial_refuse_5", "voice_activated_0_annoyed", true)),
	"initial_refuse_5": Dialogue.new(CharacterWendy.new(), "He's crazy!", DialogueActionOff.new("initial_refuse_6", "voice_activated_0_annoyed", true)),
	"initial_refuse_6": Dialogue.new(CharacterColin.new(), "I'm not crazy, it's gonna work!", DialogueActionOff.new("initial_refuse_7", "voice_activated_0_annoyed", true, 1.0)),
	"initial_refuse_7": Dialogue.new(CharacterColin.new(), "Oh, switch on already!", DialogueActionOff.new("initial_refuse_8", "voice_activated_0_annoyed", true, 3.0)),
	"initial_refuse_8": Dialogue.new(CharacterColin.new(), "On a scale from off to on, you seem pretty firmly on the off end...", DialogueActionOff.new("initial_refuse_1", "voice_activated_0_annoyed", true, 3.0)),
	# TODO: if the player keeps refusing - skip to (obvious) moral questions. Upon switching, go to the real moral questions

	# SENSOR_ON: The player switches the light on early, and the characters assume it's a sensor
	"sensor_on_0": Dialogue.new(CharacterWendy.new(), "Oooh, a sensor-activated light. Cool!", DialogueActionOn.new("sensor_on_0a", "sensor_off_0")),
	"sensor_on_0a": Dialogue.new(CharacterWendy.new(), "Well, I'm assuming it's sensor-activated because it went on as soon as we walked into the room...", DialogueActionOn.new("sensor_on_1", "sensor_off_0")),
	"sensor_on_1": Dialogue.new(CharacterColin.new(), "Uh, yeah, I guess?", DialogueActionOn.new("sensor_on_2", "sensor_off_0")),
	"sensor_on_2": Dialogue.new(CharacterEdmund.new(), "Suspicious...", DialogueActionOn.new("sensor_on_3", "sensor_off_0")),
	"sensor_on_3": Dialogue.new(CharacterColin.new(), "Sometimes it just responds to what I say...", DialogueActionOn.new("sensor_on_4", "sensor_cooperate_0", 2.0)),
	"sensor_on_4": Dialogue.new(CharacterColin.new(), "Come on! Turn off...", DialogueActionOn.new("sensor_on_5", "sensor_cooperate_0", 3.0)),
	"sensor_on_5": Dialogue.new(CharacterEdmund.new(), "Have you considered the possibility that it's just... a light that's activated by a sensor?", DialogueActionOn.new("sensor_on_6", "sensor_cooperate_0")),
	"sensor_on_6": Dialogue.new(CharacterColin.new(), "No, it's better than that. It listens to me!", DialogueActionOn.new("sensor_on_7", "sensor_cooperate_0", 1.0)),
	"sensor_on_7": Dialogue.new(CharacterLaurie.new(), "Sure...", DialogueActionOn.new("sensor_on_8", "sensor_cooperate_0")),
	"sensor_on_8": Dialogue.new(CharacterColin.new(), "Lamp, turn off!", DialogueActionOn.new("initial_8", "sensor_cooperate_0", 2.0)),

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
	"voice_activated_5": Dialogue.new(CharacterWendy.new(), "Does it listen to me too?", DialogueActionOn.new("voice_activated_6", "voice_activated_7")),
	"voice_activated_6": Dialogue.new(CharacterWendy.new(), "Lamp Off!", DialogueActionOn.new("TODO", "voice_activated_7", true, 3.0)),
	"voice_activated_7": Dialogue.new(CharacterLaurie.new(), "Cool!", DialogueActionOff.new("voice_activated_8", "voice_activated_off_0")),
	"voice_activated_8": Dialogue.new(CharacterEdmund.new(), "Come on guys, it's just a voice activated light...", DialogueActionOff.new("intelligence_test_1", "TODO")),
	
	# INTELLIGENCE_TEST: The characters ask the lamp questions to test their intelligence
	"intelligence_test_1": Dialogue.new(CharacterWendy.new(), "Switch on if 2+2=4", DialogueActionOff.new("TODO", "intelligence_test_2", true, 3.0)),
	"intelligence_test_1_wrong": Dialogue.new(CharacterEdmund.new(), "Clearly not intelligent though...", DialogueActionOff.new("intelligence_test_4", "TODO")),
	"intelligence_test_2": Dialogue.new(CharacterEdmund.new(), "That's too easy for an algorithm to solve. Switch off if Paris is the capital of France", DialogueActionOn.new("TODO", "intelligence_test_3")),
	"intelligence_test_2_wrong": Dialogue.new(CharacterLaurie.new(), "Maybe the algorithm thought you meant the capital letter...", DialogueActionOn.new("TODO", "TODO")),
	"intelligence_test_3": Dialogue.new(CharacterLaurie.new(), "Oh come on that's so easy. If you really want to test it, ask a tough question", DialogueActionOff.new("intelligence_test_4", "TODO")),
	"intelligence_test_4": Dialogue.new(CharacterLaurie.new(), "Switch on if P = NP", DialogueActionOff.new("intelligence_test_5", "intelligence_test_5", 1.0)),
	"intelligence_test_5": Dialogue.new(CharacterWendy.new(), "Oh come on, that's an unsolved problem!", DialogueActionEither.new("intelligence_test_6", "TODO")),
	"intelligence_test_6": Dialogue.new(CharacterEdmund.new(), "I still think we should test its general knowledge over maths problems", DialogueActionEither.new("intelligence_test_7", "TODO")),
	"intelligence_test_7": Dialogue.new(CharacterLaurie.new(), "Go on then, outsmart the lamp...", DialogueActionEither.new("intelligence_test_8", "TODO")),
	"intelligence_test_8": Dialogue.new(CharacterEdmund.new(), "Switch if Henry VIII had 8 wives", DialogueActionEither.new("intelligence_test_8_wrong", "intelligence_test_9")),
	"intelligence_test_8_wrong": Dialogue.new(CharacterWendy.new(), "Wow, didn't think it would get that wrong!", DialogueActionEither.new("intelligence_test_10", "intelligence_test_10")),
	"intelligence_test_9": Dialogue.new(CharacterWendy.new(), "Even I know that one!", DialogueActionEither.new("intelligence_test_10", "intelligence_test_10")),
	"intelligence_test_10": Dialogue.new(CharacterEdmund.new(), "Switch if the Hundred Years' War lasted 100 years", DialogueActionEither.new("intelligence_test_10_correct_1", "intelligence_test_10_wrong", 3.0)),
	"intelligence_test_10_wrong": Dialogue.new(CharacterEdmund.new(), "Ha! Easy mistake...", DialogueActionEither.new("intelligence_test_11", "intelligence_test_11")),
	"intelligence_test_10_correct_1": Dialogue.new(CharacterLaurie.new(), "Really?", DialogueActionEither.new("intelligence_test_10_correct_2", "intelligence_test_11")),
	"intelligence_test_10_correct_2": Dialogue.new(CharacterEdmund.new(), "Yep, it was 116 years.", DialogueActionEither.new("intelligence_test_10_correct_3", "intelligence_test_11")),
	"intelligence_test_10_correct_3": Dialogue.new(CharacterLaurie.new(), "Silly name...", DialogueActionEither.new("intelligence_test_11", "intelligence_test_11")),
	"intelligence_test_11": Dialogue.new(CharacterEdmund.new(), "Switch if the Magna Carta was signed in 1115", DialogueActionEither.new("intelligence_test_11_correct", "intelligence_test_11_wrong", 3.0)),
	"intelligence_test_11_wrong": Dialogue.new(CharacterEdmund.new(), "Nope, silly lamp. It was 1215.", DialogueActionEither.new("intelligence_test_12", "intelligence_test_12")),
	"intelligence_test_11_correct": Dialogue.new(CharacterEdmund.new(), "Good job!", DialogueActionEither.new("intelligence_test_12", "intelligence_test_12")),
	"intelligence_test_12": Dialogue.new(CharacterWendy.new(), "Enough with the boring History, sweetheart. Switch if x^3 - x + 1 = 0 has three real roots", DialogueActionEither.new("intelligence_test_12_correct", "intelligence_test_12_wrong", 3.0)),
	"intelligence_test_12_correct": Dialogue.new(CharacterWendy.new(), "Good job!", DialogueActionEither.new("moral_questions_1", "moral_questions_1")),
	"intelligence_test_12_wrong": Dialogue.new(CharacterWendy.new(), "Not quite. That was a tough one...", DialogueActionEither.new("moral_questions_1", "moral_questions_1")),

	# MORAL_QUESTIONS_1: Trolley problem
	"moral_questions_1": Dialogue.new(CharacterLaurie.new(), "A trolley is going towards 5 people on a track. Switch if you would divert it to hit 1 person instead", DialogueActionEither.new("moral_questions_1_stay_1", "moral_questions_1_switch_1")),
	"moral_questions_1_switch_1": Dialogue.new(CharacterLaurie.new(), "A popular choice! I agree. Why kill 5 people when you can kill just 1 instead?", DialogueActionEither.new("moral_questions_1_general_1", "moral_questions_1_interrupted")),
	"moral_questions_1_stay_1": Dialogue.new(CharacterLaurie.new(), "Are you insane? You'd kill 5 people instead of 1?", DialogueActionEither.new("moral_questions_1_stay_2", "moral_questions_1_interrupted")),
	"moral_questions_1_stay_2": Dialogue.new(CharacterColin.new(), "It's not as clear as you might think. The difference is in the action you take.", DialogueActionEither.new("moral_questions_1_general_1", "moral_questions_1_interrupted")),
	"moral_questions_1_general_1": Dialogue.new(CharacterColin.new(), "Who are you to decide who lives and who dies?", DialogueActionEither.new("moral_questions_1_switch_3", "moral_questions_1_interrupted")),
	"moral_questions_1_general_2": Dialogue.new(CharacterColin.new(), "If you get involved, you are now responsible for intentionally killing that person", DialogueActionEither.new("moral_questions_1_switch_4", "moral_questions_1_interrupted")),
	"moral_questions_1_general_3": Dialogue.new(CharacterWendy.new(), "But you save 5 people! Are you seriously saying you wouldn't switch it?", DialogueActionEither.new("moral_questions_1_switch_5", "moral_questions_1_interrupted")),
	"moral_questions_1_general_4": Dialogue.new(CharacterColin.new(), "I'm not sure. Let me pose you a similar scenario.", DialogueActionEither.new("moral_questions_1a", "moral_questions_1_interrupted")),
	"moral_questions_1a": Dialogue.new(CharacterColin.new(), "You're on a bridge watching a trolley go towards 5 people. Switch if you would push a fat man off the bridge to stop the trolley.", DialogueActionEither.new("moral_questions_1a_stay_1", "moral_questions_1a_switch_1")),
	"moral_questions_1a_switch_1": Dialogue.new(CharacterLaurie.new(), "Nah, surely not!", DialogueActionEither.new("moral_questions_1a_general_1", "moral_questions_1_interrupted")),
	"moral_questions_1a_stay_1": Dialogue.new(CharacterLaurie.new(), "Yeah, that makes sense. You'd have to be evil to push that man off the bridge...", DialogueActionEither.new("moral_questions_1a_general_1", "moral_questions_1_interrupted")),
	"moral_questions_1a_general_1": Dialogue.new(CharacterColin.new(), "But what's the difference between these scenarios?", DialogueActionEither.new("moral_questions_1a_general_2", "moral_questions_1_interrupted", 2.0)),
	"moral_questions_1a_general_2": Dialogue.new(CharacterColin.new(), "In the first, you choose to kill 1 person to save 5", DialogueActionEither.new("moral_questions_1a_general_3", "moral_questions_1_interrupted")),
	"moral_questions_1a_general_3": Dialogue.new(CharacterColin.new(), "In the second, you choose to kill 1 person to save 5", DialogueActionEither.new("moral_questions_1a_general_4", "moral_questions_1_interrupted")),
	"moral_questions_1a_general_4": Dialogue.new(CharacterLaurie.new(), "I'm not really sure. It just feels different.", DialogueActionEither.new("moral_questions_1a_general_5", "moral_questions_1_interrupted")),
	"moral_questions_1a_general_5": Dialogue.new(CharacterColin.new(), "Morality is more complicated than you think...", DialogueActionEither.new("moral_questions_2", "moral_questions_1_interrupted")),
	"moral_questions_1_interrupted": Dialogue.new(CharacterColin.new(), "Oh, the lamp is bored. On to the next one!", DialogueActionEither.new("moral_questions_2", "moral_questions_2")),

	# MORAL_QUESTIONS_2: More questions here
	"moral_questions_2": Dialogue.new(NoCharacter.new(), "[1 or 2 more moral questions will be put in here]", DialogueActionEither.new("TODO", "TODO")),

	# BROKEN: If the player switches it too many times, the characters conclude that it is broken. They then proceed to ignore the lamp.
	# TODO
	
	# VOICE_ACTIVATED_OFF: If the player turns off at the wrong time in the above exchange. 
	"voice_activated_off_0": Dialogue.new(CharacterColin.new(), "Ah crap, it's broken again! Turn back on!", DialogueActionOff.new("", ""))
	# TODO: Various responses here that lead back into the above. Reward player for being adventurous.
}
