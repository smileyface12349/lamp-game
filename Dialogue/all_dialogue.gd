extends Node
class_name AllDialogue

## All of the dialogue in the game

static var DIALOGUE: Dictionary = {
	# id : dialogue
	"TODO": Dialogue.new(NoCharacter.new(), "You've reached a point where there is further dialogue planned, but it is not present for this workshop submission. You will now be taken to the game over screen.", DialogueAction.new("", "", "", "", false, 5.0)),
	
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
	"initial_refuse_1": Dialogue.new(CharacterColin.new(), "Oh get on with it, you're embarrassing me!", DialogueActionOff.new("initial_refuse_2", "voice_activated_0_annoyed", true, 3.0)),
	"initial_refuse_2": Dialogue.new(CharacterColin.new(), "There's only one lamp here...", DialogueActionOff.new("initial_refuse_3", "voice_activated_0_annoyed", true, 3.0)),
	"initial_refuse_3": Dialogue.new(CharacterEdmund.new(), "Is he really talking to a lamp...?", DialogueActionOff.new("initial_refuse_4", "voice_activated_0_annoyed", true)),
	"initial_refuse_4": Dialogue.new(CharacterLaurie.new(), "I think so?", DialogueActionOff.new("initial_refuse_5", "voice_activated_0_annoyed", true)),
	"initial_refuse_5": Dialogue.new(CharacterWendy.new(), "He's crazy!", DialogueActionOff.new("initial_refuse_6", "voice_activated_0_annoyed", true)),
	"initial_refuse_6": Dialogue.new(CharacterColin.new(), "I'm not crazy, it's gonna work!", DialogueActionOff.new("initial_refuse_7", "voice_activated_0_annoyed", true, 1.0)),
	"initial_refuse_7": Dialogue.new(CharacterColin.new(), "Oh, switch on already!", DialogueActionOff.new("initial_refuse_8", "voice_activated_0_annoyed", true, 3.0)),
	"initial_refuse_8": Dialogue.new(CharacterColin.new(), "On a scale from off to on, you seem pretty firmly on the off end...", DialogueActionOff.new("is_it_working_1", "voice_activated_0_annoyed", true, 3.0)),

	# IS_IT_WORKING: If the player keeps refusing to switch on, then the players wonder if it's actually working
	"is_it_working_1": Dialogue.new(CharacterColin.new(), "I know how to get this lamp to switch on...", DialogueActionOff.new("is_it_working_2", "refuse_then_cooperate_1")),
	"is_it_working_2": Dialogue.new(CharacterEdmund.new(), "Should we check it's plugged in first?", DialogueActionOff.new("is_it_working_3", "refuse_then_cooperate_1")),
	"is_it_working_3": Dialogue.new(CharacterWendy.new(), "It's definitely plugged in...", DialogueActionOff.new("is_it_working_4", "refuse_then_cooperate_1")),
	"is_it_working_4": Dialogue.new(CharacterEdmund.new(), "Maybe the bulb has gone?", DialogueActionOff.new("is_it_working_5", "refuse_then_cooperate_1")),
	"is_it_working_5": Dialogue.new(CharacterColin.new(), "The bulb is fine! It just does this sometimes...", DialogueActionOff.new("is_it_working_6", "refuse_then_cooperate_1")),
	"is_it_working_6": Dialogue.new(CharacterWendy.new(), "Have you tried switching it at the switch...?", DialogueActionOff.new("is_it_working_7", "refuse_then_cooperate_1")),
	"is_it_working_7": Dialogue.new(CharacterColin.new(), "THERE IS NO SWITCH!", DialogueActionOff.new("is_it_working_8", "refuse_then_cooperate_1")),
	"is_it_working_8": Dialogue.new(CharacterColin.new(), "It responds to my voice.", DialogueActionOff.new("is_it_working_9", "refuse_then_cooperate_1")),
	"is_it_working_9": Dialogue.new(CharacterWendy.new(), "Yeah, sure it does...", DialogueActionOff.new("is_it_working_10", "refuse_then_cooperate_1")),
	"is_it_working_10": Dialogue.new(CharacterLaurie.new(), "[Sarcastically] Maybe it's some [i]sentient[/i] lamp that is actively refusing your instructions...", DialogueActionOff.new("is_it_working_11", "refuse_then_cooperate_1")),
	"is_it_working_11": Dialogue.new(CharacterColin.new(), "Exactly! It's refusing to do what I ask! I have an idea to make it co-operate though...", DialogueActionOff.new("refuse_moral_1", "refuse_then_cooperate_1")),

	# REFUSE_MORAL: If the player keeps refusing to switch on, then Colin asks some really obvious moral questions to try and encourage it. If they switch, go to the real moral questions
	"refuse_moral_1": Dialogue.new(CharacterColin.new(), "Switch on if you think that murder is wrong", DialogueActionOff.new("refuse_moral_2", "refuse_then_cooperate_1", 3.0)),
	"refuse_moral_2": Dialogue.new(CharacterColin.new(), "Oooh, so murder is ok then?", DialogueActionOff.new("refuse_moral_3", "refuse_then_cooperate_1")),
	"refuse_moral_3": Dialogue.new(CharacterWendy.new(), "I think Colin may have just gone insane...", DialogueActionOff.new("refuse_moral_4", "refuse_then_cooperate_1")),
	"refuse_moral_4": Dialogue.new(CharacterLaurie.new(), "[Still quite sarcastic] Maybe the lamp is saying that murder is okay in some scenarios?", DialogueActionOff.new("refuse_moral_5", "refuse_then_cooperate_1")),
	"refuse_moral_5": Dialogue.new(CharacterColin.new(), "Stay off if you think that murder is always permissible", DialogueActionOff.new("refuse_moral_6", "refuse_then_cooperate_1", 3.0)),
	"refuse_moral_6": Dialogue.new(CharacterLaurie.new(), "That statement doesn't work. If the alleged [i]sentient lamp[/i] thinks that murder isn't always permissible, then the precondition for the statement isn't satisfied and therefore the lamp doesn't have to do anything", DialogueActionOff.new("refuse_moral_7", "refuse_then_cooperate_1")),
	"refuse_moral_7": Dialogue.new(CharacterLaurie.new(), "To fix it, it should be \"Stay off if [i]and only if[/i] you think that murder is always permissible\"", DialogueActionOff.new("refuse_moral_8", "refuse_then_cooperate_1")),
	"refuse_moral_8": Dialogue.new(CharacterWendy.new(), "Laurie, nobody cares", DialogueActionOff.new("refuse_moral_9", "refuse_then_cooperate_1")),
	"refuse_moral_9": Dialogue.new(CharacterColin.new(), "Switch on if genocide is wrong", DialogueActionOff.new("refuse_moral_10", "refuse_then_cooperate_1", 3.0)),
	"refuse_moral_10": Dialogue.new(CharacterLaurie.new(), "Stay off if you're smelly", DialogueActionOff.new("refuse_moral_11", "refuse_then_cooperate_1", 2.0)),
	"refuse_moral_11": Dialogue.new(CharacterEdmund.new(), "So immature...", DialogueActionOff.new("refuse_moral_11a", "refuse_then_cooperate_1")),
	"refuse_moral_11a": Dialogue.new(CharacterColin.new(), "Can lamps be smelly?", DialogueActionOff.new("refuse_moral_11b", "refuse_then_cooperate_1")),
	"refuse_moral_11b": Dialogue.new(CharacterLaurie.new(), "I'm sure you'd manage it if you were a lamp...", DialogueActionOff.new("refuse_moral_11c", "refuse_then_cooperate_1")),
	"refuse_moral_11c": Dialogue.new(CharacterEdmund.new(), "Come on guys...", DialogueActionOff.new("refuse_moral_12", "refuse_then_cooperate_1")),
	"refuse_moral_12": Dialogue.new(CharacterWendy.new(), "Switch on if brexit was a stupid idea", DialogueActionOff.new("refuse_moral_13", "refuse_then_cooperate_1", 3.0)),
	"refuse_moral_13": Dialogue.new(CharacterWendy.new(), "Ok well that settles it then, the lamp is broken!", DialogueActionOff.new("refuse_moral_13a", "refuse_then_cooperate_1")),
	"refuse_moral_13a": Dialogue.new(CharacterEdmund.new(), "As if that is more conclusive than the previous ones...", DialogueActionOff.new("refuse_moral_14", "refuse_then_cooperate_1")),
	"refuse_moral_14": Dialogue.new(CharacterColin.new(), "Ok, I'm going to give you 5 seconds before I smash you and throw you in the bin", DialogueActionOff.new("refuse_moral_15", "refuse_then_cooperate_1", 3.0)),
	"refuse_moral_15": Dialogue.new(CharacterColin.new(), "3... 2.... 1...", DialogueActionOff.new("refuse_moral_16", "refuse_then_cooperate_1", 2.0)),
	"refuse_moral_16": Dialogue.new(CharacterEdmund.new(), "Colin, don't! It might start working again later!", DialogueActionOff.new("refuse_moral_17", "refuse_then_cooperate_1", 2.0)),
	"refuse_moral_17": Dialogue.new(CharacterColin.new(), "TOO LATE!", DialogueActionOff.new("refuse_moral_18", "refuse_then_cooperate_1")),
	"refuse_moral_18": Dialogue.new(CharacterColin.new(), "YOU WORTHLESS PIECE OF METAL AND GLASS!!!", DialogueActionOff.new("broken_24_ending", "refuse_then_cooperate_1")),

	# REFUSE_THEN_COOPERATE: If the player chooses to co-operate after this
	"refuse_then_cooperate_1": Dialogue.new(CharacterColin.new(), "Oh ok, it's working now!", DialogueActionOn.new("refuse_then_cooperate_2", "player_cooperate_refuse_1"), ["HIDE_CONTROLS"]),
	"refuse_then_cooperate_2": Dialogue.new(CharacterEdmund.new(), "It probably just switched on randomly...", DialogueActionOn.new("refuse_then_cooperate_3", "player_cooperate_refuse_1")),
	"refuse_then_cooperate_3": Dialogue.new(CharacterColin.new(), "No, it's fixed!", DialogueActionOn.new("refuse_then_cooperate_4", "player_cooperate_refuse_1")),
	"refuse_then_cooperate_4": Dialogue.new(CharacterColin.new(), "Lamp, switch off!", DialogueActionOn.new("player_cooperate_refuse_1", "refuse_then_cooperate_5", 3.0)),
	"refuse_then_cooperate_5": Dialogue.new(CharacterColin.new(), "See, it's working now!", DialogueActionOff.new("refuse_then_cooperate_6", "player_cooperate_refuse_1")),
	"refuse_then_cooperate_6": Dialogue.new(CharacterColin.new(), "And it's even more advanced than this...", DialogueActionOff.new("intelligence_test_1", "player_cooperate_refuse_1")),
	
	# REFUSE_COOPERATE_REFUSE: If the player then messes it up
	"refuse_cooperate_refuse_1": Dialogue.new(CharacterColin.new(), "Ah, clearly not.", DialogueActionLinear.new("broken_0")),

	# SENSOR_ON: The player switches the light on early, and the characters assume it's a sensor
	"sensor_on_0": Dialogue.new(CharacterWendy.new(), "Oooh, a sensor-activated light. Cool!", DialogueActionOn.new("sensor_on_0a", "sensor_off_0")),
	"sensor_on_0a": Dialogue.new(CharacterWendy.new(), "Well, I'm assuming it's sensor-activated because it went on as soon as we walked into the room...", DialogueActionOn.new("sensor_on_1", "sensor_off_0")),
	"sensor_on_1": Dialogue.new(CharacterColin.new(), "Uh, yeah, I guess?", DialogueActionOn.new("sensor_on_2", "sensor_off_0")),
	"sensor_on_2": Dialogue.new(CharacterEdmund.new(), "Hmmmmm...", DialogueActionOn.new("sensor_on_3", "sensor_off_0")),
	"sensor_on_3": Dialogue.new(CharacterColin.new(), "Sometimes it just responds to what I say...", DialogueActionOn.new("sensor_on_4", "sensor_cooperate_0", 2.0)),
	"sensor_on_4": Dialogue.new(CharacterColin.new(), "Come on! Turn off...", DialogueActionOn.new("sensor_on_5", "sensor_cooperate_0", 3.0)),
	"sensor_on_5": Dialogue.new(CharacterEdmund.new(), "Have you considered the possibility that it's just... a light that's activated by a sensor?", DialogueActionOn.new("sensor_on_6", "sensor_cooperate_0")),
	"sensor_on_6": Dialogue.new(CharacterColin.new(), "No, it's better than that. It listens to me!", DialogueActionOn.new("sensor_on_7", "sensor_cooperate_0", 1.0)),
	"sensor_on_7": Dialogue.new(CharacterLaurie.new(), "Sure...", DialogueActionOn.new("voice_activated_2", "sensor_cooperate_0")),
	# "sensor_on_8": Dialogue.new(CharacterColin.new(), "Lamp, turn off!", DialogueActionOn.new("initial_8", "sensor_cooperate_0", 2.0)),

	# SENSOR_OFF: The player switches the light off while the characters think it's a sensor
	"sensor_off_0": Dialogue.new(CharacterLaurie.new(), "[laughs] Clearly not, it must just be broken", DialogueActionOff.new("sensor_off_1", "sensor_broken_0")),
	"sensor_off_1": Dialogue.new(CharacterColin.new(), "No it's not! Look, it'll turn back on any moment now...", DialogueActionOff.new("initial_8", "sensor_cooperate_0")),

	# SENSOR_COOPERATE: The player co-operates with Colin and turns the light back on after turning it off
	"sensor_cooperate_0": Dialogue.new(CharacterColin.new(), "See!", DialogueActionOn.new("voice_activated_0", "voice_activated_off_0")),

	# SENSOR_BROKEN: The player switches the light back on too early, and the players think it's broken
	"sensor_broken_0": Dialogue.new(CharacterWendy.new(), "Yep, definitely broken...", DialogueActionOn.new("sensor_broken_1", "broken_0")),
	"sensor_broken_1": Dialogue.new(CharacterColin.new(), "It's not broken. It just... can be a bit tempermental", DialogueActionOn.new("sensor_broken_2", "broken_0")),
	"sensor_broken_2": Dialogue.new(CharacterColin.new(), "See, it's staying on now! Look, it will listen to me now!", DialogueActionOn.new("voice_activated_2", "broken_0")),

	# BROKEN: If the player switches it too many times, the characters conclude that it is broken. They then proceed to ignore the lamp.
	"broken_0": Dialogue.new(CharacterEdmund.new(), "Oh well, I guess we don't need the lamp...", DialogueActionLinear.new("broken_1", false)),
	"broken_1": Dialogue.new(CharacterLaurie.new(), "[A little upset] It's me, isn't it.", DialogueActionLinear.new("broken_2", false)),
	"broken_2": Dialogue.new(CharacterLaurie.new(), "[Tears starting to form] Why does everything go wrong when I'm involved?", DialogueActionLinear.new("broken_3", false)),
	"broken_3": Dialogue.new(CharacterLaurie.new(), "I can leave if I'm not wanted...", DialogueActionLinear.new("broken_4", false)),
	"broken_4": Dialogue.new(CharacterWendy.new(), "It's not your fault! Of course we want you here!", DialogueActionLinear.new("broken_4a", false)),
	"broken_4a": Dialogue.new(CharacterEdmund.new(), "Yeah of course we all want you here!!", DialogueActionLinear.new("broken_5", false)),
	"broken_5": Dialogue.new(CharacterLaurie.new(), "Nothing ever goes well for me in life! You two are married, all of you have good jobs...", DialogueActionLinear.new("broken_6", false)),
	"broken_6": Dialogue.new(CharacterLaurie.new(), "But for me, I'm just stuck working in a café! No relationship, no decent job, no car", DialogueActionLinear.new("broken_6a", false)),
	"broken_6a": Dialogue.new(CharacterEdmund.new(), "I don't have a car either! Cycling is great for your physical health!", DialogueActionLinear.new("broken_6b", false)),
	"broken_6b": Dialogue.new(CharacterWendy.new(), "[whispers] Not now, sweetheart...", DialogueActionLinear.new("broken_7", false)),
	"broken_7": Dialogue.new(CharacterLaurie.new(), "I was good in school, but I just can't seem to land a bloody job", DialogueActionLinear.new("broken_8", false)),
	"broken_8": Dialogue.new(CharacterLaurie.new(), "I thought there was a shortage of programmers...", DialogueActionLinear.new("broken_9", false)),
	"broken_9": Dialogue.new(CharacterLaurie.new(), "Nobody invites me to parties. And when they do, I just make it worse!", DialogueActionLinear.new("broken_10", false)),
	"broken_10": Dialogue.new(CharacterLaurie.new(), "I'm just a boring guy who's no good at anything!", DialogueActionLinear.new("broken_11", false)),
	"broken_11": Dialogue.new(CharacterLaurie.new(), "And now this STUPID LAMP won't work!!", DialogueActionLinear.new("broken_12", false)),
	"broken_12": Dialogue.new(CharacterLaurie.new(), "WHEN WILL ANYTHING EVER GO RIGHT IN MY LIFE???", DialogueActionLinear.new("broken_13", false)),
	"broken_13": Dialogue.new(CharacterEdmund.new(), "Don't be silly, Laurie. It's not your fault that the lamp doesn't work...", DialogueActionLinear.new("broken_14", false)),
	"broken_14": Dialogue.new(CharacterLaurie.new(), "DON'T CALL ME SILLY!", DialogueActionLinear.new("broken_15", false)),
	"broken_15": Dialogue.new(CharacterColin.new(), "I know, I can get this lamp to co-operate! Hopefully that'll make you feel better...", DialogueActionLinear.new("broken_16", false)),
	"broken_16": Dialogue.new(CharacterColin.new(), "In 5 seconds, I want you to be on. Do I make myself clear?", DialogueActionForceState.new("broken_cooperate_0", "broken_17", false, 3.0)),
	"broken_17": Dialogue.new(CharacterColin.new(), "ON! Or I'll smash you and throw you in the bin!", DialogueActionForceState.new("broken_cooperate_0", "broken_18", true, 1.0)),
	"broken_18": Dialogue.new(CharacterLaurie.new(), "[Starting to cheer up] Excuse me, are you talking to a lamp?", DialogueActionForceState.new("broken_cooperate_0", "broken_19")),
	"broken_19": Dialogue.new(CharacterWendy.new(), "[Laughs] As if it's some [i]sentient lamp[/i]...", DialogueActionForceState.new("broken_cooperate_0", "broken_20")),
	"broken_20": Dialogue.new(CharacterColin.new(), "Ah, it's no use. It's just staying off now...", DialogueActionForceState.new("broken_cooperate_0", "broken_21", true, 1.0)),
	"broken_21": Dialogue.new(CharacterColin.new(), "Hang on a minute, let's try this. In 5 seconds I want you to be off.", DialogueActionForceState.new("broken_22", "broken_cooperate_off_0", false, 3.0)),
	"broken_22": Dialogue.new(CharacterColin.new(), "See, it's not broken! It's just doing the opposite of what I say.", DialogueActionOn.new("TODO", "broken_23", true, 3.0)),
	"broken_23": Dialogue.new(CharacterColin.new(), "OH COME ON!!! YOU WORTHLESS PIECE OF METAL AND GLASS!!!", DialogueActionLinear.new("broken_24_ending")),
	"broken_24_ending": Dialogue.new(NoCharacter.new(), "Colin smashes you to pieces. The end.", DialogueActionLinear.new("")),
	
	# BROKEN_COOPERATE: The player co-operates after convincing them it's broken, and switches the light on
	"broken_cooperate_0": Dialogue.new(CharacterColin.new(), "See, it's not completely broken!", DialogueActionOn.new("broken_cooperate_1", "broken_23")),
	"broken_cooperate_1": Dialogue.new(CharacterColin.new(), "Let's see if it can follow simple instructions now...", DialogueActionOn.new("voice_activated_2", "broken_23")),

	# BROKEN_COOPERATE_OFF: The player co-operates after convincing them it's broken, and ends up in an off state
	"broken_cooperate_off_0": Dialogue.new(CharacterColin.new(), "See, it's not completely broken!", DialogueActionOff.new("broken_cooperate_off_1", "broken_23")),
	"broken_cooperate_off_1": Dialogue.new(CharacterColin.new(), "Let's see if it can follow simple instructions now...", DialogueActionOff.new("broken_cooperate_off_2", "broken_23")),
	"broken_cooperate_off_2": Dialogue.new(CharacterColin.new(), "Lamp, switch on!", DialogueActionOff.new("broken_cooperate_off_3_last_chance", "broken_cooperate_off_3", 3.0)),
	"broken_cooperate_off_3_last_chance": Dialogue.new(CharacterColin.new(), "One last chance until I smash you to pieces...", DialogueActionOff.new("broken_23", "broken_cooperate_off_3", 3.0)),
	"broken_cooperate_off_3": Dialogue.new(CharacterWendy.new(), "Cool!", DialogueActionOn.new("voice_activated_2", "broken_23")),

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
	"moral_questions_1a_general_5": Dialogue.new(CharacterColin.new(), "See, it's more complicated than you think...", DialogueActionEither.new("moral_questions_2", "moral_questions_1_interrupted")),
	"moral_questions_1_interrupted": Dialogue.new(CharacterColin.new(), "Oh, the lamp is bored. On to the next one!", DialogueActionEither.new("moral_questions_2", "moral_questions_2")),

	# MORAL_QUESTIONS_2: More questions here
	"moral_questions_2": Dialogue.new(NoCharacter.new(), "[a few more moral/political questions will be put in here - some discussion amongst the characters will follow each one but not as extensive as the trolley problem discussion]", DialogueActionLinear.new("post_moral_questions_1")),
	
	# VOICE_ACTIVATED_OFF: If the player turns off at the wrong time in the above exchange. 
	"voice_activated_off_0": Dialogue.new(CharacterColin.new(), "Ah crap, it's broken again! Turn back on!", DialogueActionOff.new("", "")),
	# TODO: Various responses here that lead back into the above. Reward player for being adventurous.

	# POST_MORAL_QUESTIONS: Some text to force the lamp state to on, then some small discussion to make it seem natural before Sophie walks in
	"post_moral_questions_1": Dialogue.new(NoCharacter.new(), "[There will be something here to force the lamp state to on, and a short discussion. YOU HAVE 5 SECONDS TO SWITCH THE LAMP ON OR YOU WILL BE MET WITH A GAME OVER SCREEN. This is not part of the game.]", DialogueActionForceState.new("sophie_walks_in_0_disclaimer", "", false, 5.0)),


	# Sophie walks in
	# (Beyond this point, we will not worry about the edge cases, and it will just focus on the main narrative)
	"sophie_walks_in_0_disclaimer": Dialogue.new(NoCharacter.new(), "[You are about half-way through the story. As this is a workshop release, the second half is not very fleshed out, and many of the branching paths are incomplete. I would suggest being co-operative to see the narrative through, rather than experimenting with switching the lamp as you were encouraged to do in the first half.]", DialogueActionOn.new("sophie_walks_in_0", "TODO")),

	# TODO: Get to the exchange between Sophie and Michael (or continuing with Colin) in the workshop release. Maybe also until they go to bed and finish with the Robber ending but a bit rushed? So then it rounds it out and we can see the narrative. Don't worry about too many of the additional branches for now.
}
