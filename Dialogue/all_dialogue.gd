extends Node
class_name AllDialogue

## All of the dialogue in the game

static var DIALOGUE: Dictionary = {
	# id : dialogue
	"TODO": Dialogue.new(NoCharacter.new(), "You've reached a point where there is further dialogue planned, but it is not present for this workshop submission. You will now be taken to the game over screen.", Action.new("", "", "", ""), 5.0),
	"ERROR": Dialogue.new(NoCharacter.new(), "Hello, this is an error message. Hopefully you know what it means. You will now be taken to the game over screen.", Action.new("", "", "", ""), 5.0),
	
	# INITIAL: The characters walk into the room and try to switch the light on
	"initial": LongDialogue.new([
		Line.new(NoCharacter.new(), "[You hear a door closing in the distance, followed by some distant conversation that you can barely hear]"),
		Line.new(Colin.new(), "[inaudible] great thanks! [inaudible]"),
		Line.new(Wendy.new(), "I GOT THE JOB!!!"),
		Line.new(Colin.new(), "Oh wow, congratulations!"),
		Line.new(Laurie.new(), "What job?"),
		Line.new(Edmund.new(), "[inaudible] group chat..."),
		Line.new(Colin.new(), "Look forward to hearing more about it later."),
		Line.new(Colin.new(), "But first, who wants a cuppa?"),
		Line.new(Laurie.new(), "Uh, yeah, coffee, please."),
		Line.new(Edmund.new(), "Bit late for coffee..."),
		Line.new(Wendy.new(), "We'll both have tea please! Decaf for him."),
		Line.new(Colin.new(), "Ok, 2 teas and a coffee! Make yourselves comfortable in the living room."),
		Line.new(NoCharacter.new(), "[You hear footsteps getting louder and then a door closing]")
	], ActionOff.new("initial_2", "on_outside")),
	"initial_2": LongDialogue.new([
		Line.new(Wendy.new(), "Blimey it's dark in 'ere! Hey! Where's the old lamp gone?"),
		Line.new(Wendy.new(), "He's really changed the bloody lamp in the past two weeks?"),
		Line.new(NoCharacter.new(), "", 1.0)
	], ActionOff.new("initial_3", "sensor_on")),
	"initial_3": LongDialogue.new([
		Line.new(Edmund.new(), "Doesn't even have a switch! What kind of idiot would make a lamp without a switch?"),
		Line.new(Laurie.new(), "Maybe it's a smart lamp?"),
		Line.new(Edmund.new(), "[Scoffs] Why does everything have to be smart these days?"),
		Line.new(Wendy.new(), "It doesn't seem to be very smart if it's not turning on when we want it to..."),
		Line.new(Edmund.new(), "Anyone got any idea how to switch this thing on?"),
		Line.new(Wendy.new(), "I'll have a go")
	], ActionOff.new("initial_4", "smart_on")),
	"initial_4": LongDialogue.new([
		Line.new(NoCharacter.new(), "[You feel multiple sharp pains in your side. It hurts a little, although the pain fades quickly]"),
		Line.new(Edmund.new(), "I don't think that's going to work, sweetheart."),
		Line.new(Edmund.new(), "Come on then, Mr Computer Science. Amaze us with your infinite wisdom..."),
		Line.new(NoCharacter.new(), "[You feel one significant bash in your side, bigger than the others. Despite being a lamp, you have developed a significant bruise there.]"),
		Line.new(Edmund.new(), "Oh for god's sake Laurie. You literally studied Computer Science, when has bashing something ever fixed it?"),
		Line.new(Wendy.new(), "Worked for the downstairs printer last week..."),
		Line.new(Laurie.new(), "Nope, can't see how it works. Wouldn't want to try anything else without Colin here.")
	], ActionOff.new("initial_5", "bashing_on")),
	"initial_5": LongDialogue.new([
		Line.new(NoCharacter.new(), "[You hear some footsteps getting louder]"),
		Line.new(Wendy.new(), "I'll get it!"),
		Line.new(NoCharacter.new(), "[You hear someone scurry towards the door, and then the door opening]"),
		Line.new(Colin.new(), "Thanks!"),
		Line.new(NoCharacter.new(), "[The door slowly closes, and then clicks shut after another second]"),
		Line.new(Colin.new(), "Oh yes of course, I forgot to tell you about the new lamp! Sorry for leaving you in the dark..."),
		Line.new(Wendy.new(), "Bu-dum tiss!"),
		Line.new(Colin.new(), "I picked it up from a car boot sale last week and it seems to turn on when I ask it to?"),
		Line.new(Wendy.new(), "Clearly didn't turn on for us..."),
		Line.new(Edmund.new(), "Why didn't you try that, Laurie? Instead of bashing it like it's a slave in the Roman empire..."),
		Line.new(Wendy.new(), "You shouldn't joke about that, sweetheart."),
		Line.new(Laurie.new(), "[i]Asking[/i] it? You think [i]that[/i] is more logical? Next time the printer breaks, how about you try just [i]asking[/i] it nicely? Idiot."),
		Line.new(Colin.new(), "Anyway, let's see if this lamp will turn on when I ask it to."),
	], ActionOff.new("initial_6", "colin_on")),
	"initial_6": LongDialogue.new([
		Line.new(Colin.new(), "Lamp on!", 3.0),
		Line.new(Colin.new(), "Please could you switch on, kind lamp?", 3.0),
		Line.new(Colin.new(), "Oh, come on you stupid thing!"),
	], ActionOff.new("initial_7", "switch_on"), ["SHOW_CONTROLS"]),
	"initial_7": LongDialogue.new([
		Line.new(NoCharacter.new(), "[You feel a really light touch, but it's precisely where the bruise is so it hurts way more than it should]"),
		Line.new(Edmund.new(), "Tried that already..."),
	], ActionOff.new("initial_8", "bashing_on")),
	"initial_8": LongDialogue.new([
		Line.new(Laurie.new(), "How about, sort of, switching it off and on again?"),
		Line.new(Edmund.new(), "Is that the only thing you've learned from your degree?"),
		Line.new(Wendy.new(), "Stop being mean, sweetheart. I think it's a sensible idea."),
		Line.new(Edmund.new(), "Even if it was a sensible idea, we have very much established that THERE IS NO SWITCH!"),
		Line.new(Laurie.new(), "Oh stop criticising every flipping thing I say! I mean at the wall you idiot!"),
		Line.new(Edmund.new(), "Could've said that then..."),
		Line.new(Wendy.new(), "Good idea Laurie! I'll do it!"),
		Line.new(NoCharacter.new(), "[Rustling and movement]"),
		Line.new(NoCharacter.new(), "[A distinctive click]"),
		Line.new(Wendy.new(), "Whoops, that's me phone charger. Let me try the other -"),
	], ActionOff.new("initial_9", "refuse_moral_1")),
	"initial_9": LongDialogue.new([
		EmptyLine.new(3.0),
	], ActionOff.new("initial_10", "on_off_worked", false), ["UNPOWERED"]),
	"initial_10": LongDialogue.new([
		Line.new(Wendy.new(), "- back on!"),
		Line.new(Wendy.new(), "Try now!"),
		Line.new(Colin.new(), "Lamp on!", 3.0),
		Line.new(Wendy.new(), "What if the bulb has gone?"),
		Line.new(Colin.new(), "[Sigh] The bulb is fairly new but I can change it if you think it'll help..."),
		Line.new(Colin.new(), "I'll go and get a new bulb from the utility room."),
		Line.new(NoCharacter.new(), "[You hear footsteps as the door opens and closes. While I'm here, I just wanted to remind you that you are still in great pain due to your bruises, in case you forgot.]"),
	], ActionOff.new("smart_discussion", "on_off_worked"), ["POWERED"]),

	# SMART_DISCUSSION: The lamp is still off, and the characters discuss the advancement of technology
	"smart_discussion": LongDialogue.new([
		Line.new(Edmund.new(), "Why does everything have to be 'smart' these days? First it was phones, now it's fridges and washing machines!"),
		Line.new(Wendy.new(), "And now lamps, maybe?"),
		Line.new(Edmund.new(), "I mean, what's next? Smart [i]toilets[/i]? Pens? Shower gel?"),
		Line.new(Laurie.new(), "Why do you always have to be so skeptical of change? Things are getting better, do you not see?"),
		Line.new(Edmund.new(), "\"Better\". Mental health issues up. Depression up. Suicide up. How are things getting better?"),
		# TODO: Continue this, using the fact that Laurie struggles with depression, and the impact of technology on this. Talk about social media bans and stuff.
	], ActionOff.new("smart_discussion", "random_on")),

	# ON_OUTSIDE: The player switches the lamp on before the characters enter the room. (maybe only do this when they enter the room?)

	# SENSOR: The player switches the lamp on as the characters walk in, and they assume it's a sensor.

	# SWITCH_ON: The player switches the lamp on when asked.

	# COLIN_ON: The lamp switches on when Colin enters the room, but not explicitly asked to

	# REFUSE_MORAL: If the player keeps refusing to switch on, then Colin asks some really obvious moral questions to try and encourage it. If they switch, go to the real moral questions
	"refuse_moral_1": Dialogue.new(Colin.new(), "Switch on if you think that murder is wrong", ActionOff.new("refuse_moral_2", "refuse_then_cooperate_1"), 3.0),
	"refuse_moral_2": Dialogue.new(Colin.new(), "Oooh, so murder is ok then?", ActionOff.new("refuse_moral_3", "refuse_then_cooperate_1")),
	"refuse_moral_3": Dialogue.new(Wendy.new(), "I think Colin may have just gone insane...", ActionOff.new("refuse_moral_4", "refuse_then_cooperate_1")),
	"refuse_moral_4": Dialogue.new(Laurie.new(), "[Still quite sarcastic] Maybe the lamp is saying that murder is okay in some scenarios?", ActionOff.new("refuse_moral_5", "refuse_then_cooperate_1")),
	"refuse_moral_5": Dialogue.new(Colin.new(), "Stay off if you think that murder is always permissible", ActionOff.new("refuse_moral_6", "refuse_then_cooperate_1"), 3.0),
	"refuse_moral_6": Dialogue.new(Laurie.new(), "That statement doesn't work. If the alleged [i]sentient lamp[/i] thinks that murder isn't always permissible, then the precondition for the statement isn't satisfied and therefore the lamp doesn't have to do anything", ActionOff.new("refuse_moral_7", "refuse_then_cooperate_1")),
	"refuse_moral_7": Dialogue.new(Laurie.new(), "To fix it, it should be \"Stay off if [i]and only if[/i] you think that murder is always permissible\"", ActionOff.new("refuse_moral_8", "refuse_then_cooperate_1")),
	"refuse_moral_8": Dialogue.new(Wendy.new(), "Laurie, nobody cares", ActionOff.new("refuse_moral_9", "refuse_then_cooperate_1")),
	"refuse_moral_9": Dialogue.new(Colin.new(), "Switch on if genocide is wrong", ActionOff.new("refuse_moral_10", "refuse_then_cooperate_1"), 3.0),
	"refuse_moral_10": Dialogue.new(Laurie.new(), "Stay off if you're smelly", ActionOff.new("refuse_moral_11", "refuse_then_cooperate_1"), 2.0),
	"refuse_moral_11": Dialogue.new(Edmund.new(), "So immature...", ActionOff.new("refuse_moral_11a", "refuse_then_cooperate_1")),
	"refuse_moral_11a": Dialogue.new(Colin.new(), "Can lamps be smelly?", ActionOff.new("refuse_moral_11b", "refuse_then_cooperate_1")),
	"refuse_moral_11b": Dialogue.new(Laurie.new(), "I'm sure you'd manage it if you were a lamp...", ActionOff.new("refuse_moral_11c", "refuse_then_cooperate_1")),
	"refuse_moral_11c": Dialogue.new(Edmund.new(), "Come on guys...", ActionOff.new("refuse_moral_12", "refuse_then_cooperate_1")),
	"refuse_moral_12": Dialogue.new(Wendy.new(), "Switch on if brexit was a stupid idea", ActionOff.new("refuse_moral_13", "refuse_then_cooperate_1"), 3.0),
	"refuse_moral_13": Dialogue.new(Wendy.new(), "Ok well that settles it then, the lamp is broken!", ActionOff.new("refuse_moral_13a", "refuse_then_cooperate_1")),
	"refuse_moral_13a": Dialogue.new(Edmund.new(), "As if that is more conclusive than the previous ones...", ActionOff.new("refuse_moral_14", "refuse_then_cooperate_1")),
	"refuse_moral_14": Dialogue.new(Colin.new(), "Ok, I'm going to give you 5 seconds before I smash you and throw you in the bin", ActionOff.new("refuse_moral_15", "refuse_then_cooperate_1"), 3.0),
	"refuse_moral_15": Dialogue.new(Colin.new(), "3... 2.... 1...", ActionOff.new("refuse_moral_16", "refuse_then_cooperate_1"), 2.0),
	"refuse_moral_16": Dialogue.new(Edmund.new(), "Colin, don't! It might start working again later!", ActionOff.new("refuse_moral_17", "refuse_then_cooperate_1"), 2.0),
	"refuse_moral_17": Dialogue.new(Colin.new(), "TOO LATE!", ActionOff.new("refuse_moral_18", "refuse_then_cooperate_1")),
	"refuse_moral_18": Dialogue.new(Colin.new(), "YOU WORTHLESS PIECE OF METAL AND GLASS!!!", ActionOff.new("broken_24_ending", "refuse_then_cooperate_1")),

	# REFUSE_THEN_COOPERATE: If the player chooses to co-operate after this
	"refuse_then_cooperate_1": Dialogue.new(Colin.new(), "Oh ok, it's working now!", ActionOn.new("refuse_then_cooperate_2", "refuse_cooperate_refuse_1"), 0.0, ["HIDE_CONTROLS"]),
	"refuse_then_cooperate_2": Dialogue.new(Edmund.new(), "It probably just switched on randomly...", ActionOn.new("refuse_then_cooperate_3", "refuse_cooperate_refuse_1")),
	"refuse_then_cooperate_3": Dialogue.new(Colin.new(), "No, it's fixed!", ActionOn.new("refuse_then_cooperate_4", "refuse_cooperate_refuse_1")),
	"refuse_then_cooperate_4": Dialogue.new(Colin.new(), "Lamp, switch off!", ActionOn.new("refuse_cooperate_refuse_1", "refuse_then_cooperate_5"), 3.0),
	"refuse_then_cooperate_5": Dialogue.new(Colin.new(), "See, it's working now!", ActionOff.new("refuse_then_cooperate_6", "refuse_cooperate_refuse_1")),
	"refuse_then_cooperate_6": Dialogue.new(Colin.new(), "And it's even more advanced than this...", ActionOff.new("intelligence_test_1", "refuse_cooperate_refuse_1")),
	
	# REFUSE_COOPERATE_REFUSE: If the player then messes it up
	"refuse_cooperate_refuse_1": Dialogue.new(Colin.new(), "Ah, clearly not.", ActionLinear.new("broken_0")),

	# SENSOR_ON: The player switches the light on early, and the characters assume it's a sensor
	"sensor_on_0": Dialogue.new(Wendy.new(), "Oooh, a sensor-activated light. Cool!", ActionOn.new("sensor_on_0a", "sensor_off_0")),
	"sensor_on_0a": Dialogue.new(Wendy.new(), "Well, I'm assuming it's sensor-activated because it went on as soon as we walked into the room...", ActionOn.new("sensor_on_1", "sensor_off_0")),
	"sensor_on_1": Dialogue.new(Colin.new(), "Uh, yeah, I guess?", ActionOn.new("sensor_on_2", "sensor_off_0")),
	"sensor_on_2": Dialogue.new(Edmund.new(), "Hmmmmm...", ActionOn.new("sensor_on_3", "sensor_off_0")),
	"sensor_on_3": Dialogue.new(Colin.new(), "Sometimes it just responds to what I say...", ActionOn.new("sensor_on_4", "sensor_cooperate_0"), 2.0),
	"sensor_on_4": Dialogue.new(Colin.new(), "Come on! Turn off...", ActionOn.new("sensor_on_5", "sensor_cooperate_0"), 3.0),
	"sensor_on_5": Dialogue.new(Edmund.new(), "Have you considered the possibility that it's just... a light that's activated by a sensor?", ActionOn.new("sensor_on_6", "sensor_cooperate_0")),
	"sensor_on_6": Dialogue.new(Colin.new(), "No, it's better than that. It listens to me!", ActionOn.new("sensor_on_7", "sensor_cooperate_0"), 1.0),
	"sensor_on_7": Dialogue.new(Laurie.new(), "Sure...", ActionOn.new("voice_activated_2", "sensor_cooperate_0")),
	# "sensor_on_8": Dialogue.new(Colin.new(), "Lamp, turn off!", ActionOn.new("initial_8", "sensor_cooperate_0", 2.0)),

	# SENSOR_OFF: The player switches the light off while the characters think it's a sensor
	"sensor_off_0": Dialogue.new(Laurie.new(), "[laughs] Clearly not, it must just be broken", ActionOff.new("sensor_off_1", "sensor_broken_0")),
	"sensor_off_1": Dialogue.new(Colin.new(), "No it's not! Look, it'll turn back on any moment now...", ActionOff.new("initial_8", "sensor_cooperate_0")),

	# SENSOR_COOPERATE: The player co-operates with Colin and turns the light back on after turning it off
	"sensor_cooperate_0": Dialogue.new(Colin.new(), "See!", ActionOn.new("voice_activated_0", "sensor_cooperate_1")),
	"sensor_cooperate_1": Dialogue.new(Colin.new(), "Nevermind, I don't think it's working properly today", ActionLinear.new("broken_0")),

	# SENSOR_BROKEN: The player switches the light back on too early, and the players think it's broken
	"sensor_broken_0": Dialogue.new(Wendy.new(), "Yep, definitely broken...", ActionOn.new("sensor_broken_1", "broken_0")),
	"sensor_broken_1": Dialogue.new(Colin.new(), "It's not broken. It just... can be a bit tempermental", ActionOn.new("sensor_broken_2", "broken_0")),
	"sensor_broken_2": Dialogue.new(Colin.new(), "See, it's staying on now! Look, it will listen to me now!", ActionOn.new("voice_activated_2", "broken_0")),

	# BROKEN: If the player switches it too many times, the characters conclude that it is broken. They then proceed to ignore the lamp.
	"broken_0": Dialogue.new(Edmund.new(), "Oh well, I guess we don't need the lamp...", ActionLinear.new("broken_1", false)),
	"broken_1": Dialogue.new(Laurie.new(), "[A little upset] It's me, isn't it.", ActionLinear.new("broken_2", false)),
	"broken_2": Dialogue.new(Laurie.new(), "[Tears starting to form] Why does everything go wrong when I'm involved?", ActionLinear.new("broken_3", false)),
	"broken_3": Dialogue.new(Laurie.new(), "I can leave if I'm not wanted...", ActionLinear.new("broken_4", false)),
	"broken_4": Dialogue.new(Wendy.new(), "It's not your fault! Of course we want you here!", ActionLinear.new("broken_4a", false)),
	"broken_4a": Dialogue.new(Edmund.new(), "Yeah of course we all want you here!!", ActionLinear.new("broken_5", false)),
	"broken_5": Dialogue.new(Laurie.new(), "Nothing ever goes well for me in life! You two are married, all of you have good jobs...", ActionLinear.new("broken_6", false)),
	"broken_6": Dialogue.new(Laurie.new(), "But for me, I'm just stuck working in a café! No relationship, no decent job, no car", ActionLinear.new("broken_6a", false)),
	"broken_6a": Dialogue.new(Edmund.new(), "I don't have a car either! Cycling is great for your physical health!", ActionLinear.new("broken_6b", false)),
	"broken_6b": Dialogue.new(Wendy.new(), "[whispers] Not now, sweetheart...", ActionLinear.new("broken_7", false)),
	"broken_7": Dialogue.new(Laurie.new(), "I was good in school, but I just can't seem to land a bloody job", ActionLinear.new("broken_8", false)),
	"broken_8": Dialogue.new(Laurie.new(), "I thought there was a shortage of programmers...", ActionLinear.new("broken_9", false)),
	"broken_9": Dialogue.new(Laurie.new(), "Nobody invites me to parties. And when they do, I just make it worse!", ActionLinear.new("broken_10", false)),
	"broken_10": Dialogue.new(Laurie.new(), "I'm just a boring guy who's no good at anything!", ActionLinear.new("broken_11", false)),
	"broken_11": Dialogue.new(Laurie.new(), "And now this STUPID LAMP won't work!!", ActionLinear.new("broken_12", false)),
	"broken_12": Dialogue.new(Laurie.new(), "WHEN WILL ANYTHING EVER GO RIGHT IN MY LIFE???", ActionLinear.new("broken_13", false)),
	"broken_13": Dialogue.new(Edmund.new(), "Don't be silly, Laurie. It's not your fault that the lamp doesn't work...", ActionLinear.new("broken_14", false)),
	"broken_14": Dialogue.new(Laurie.new(), "DON'T CALL ME SILLY!", ActionLinear.new("broken_15", false)),
	"broken_15": Dialogue.new(Colin.new(), "I know, I can get this lamp to co-operate! Hopefully that'll make you feel better...", ActionLinear.new("broken_16", false)),
	"broken_16": Dialogue.new(Colin.new(), "In 5 seconds, I want you to be on. Do I make myself clear?", ActionForceState.new("broken_cooperate_0", "broken_17", false), 3.0),
	"broken_17": Dialogue.new(Colin.new(), "ON! Or I'll smash you and throw you in the bin!", ActionForceState.new("broken_cooperate_0", "broken_18", true), 1.0),
	"broken_18": Dialogue.new(Laurie.new(), "[Starting to cheer up] Excuse me, are you talking to a lamp?", ActionForceState.new("broken_cooperate_0", "broken_19")),
	"broken_19": Dialogue.new(Wendy.new(), "[Laughs] As if it's some [i]sentient lamp[/i]...", ActionForceState.new("broken_cooperate_0", "broken_20")),
	"broken_20": Dialogue.new(Colin.new(), "Ah, it's no use. It's just staying off now...", ActionForceState.new("broken_cooperate_0", "broken_21", true), 1.0),
	"broken_21": Dialogue.new(Colin.new(), "Hang on a minute, let's try this. In 5 seconds I want you to be off.", ActionForceState.new("broken_22", "broken_cooperate_off_0", false), 3.0),
	"broken_22": Dialogue.new(Colin.new(), "See, it's not broken! It's just doing the opposite of what I say.", ActionOn.new("TODO", "broken_23", true), 3.0),
	"broken_23": Dialogue.new(Colin.new(), "OH COME ON!!! YOU WORTHLESS PIECE OF METAL AND GLASS!!!", ActionLinear.new("broken_24_ending")),
	"broken_24_ending": Dialogue.new(NoCharacter.new(), "Colin smashes you to pieces. The end. [Ending 1/4].", ActionLinear.new("")),
	
	# BROKEN_COOPERATE: The player co-operates after convincing them it's broken, and switches the light on
	"broken_cooperate_0": Dialogue.new(Colin.new(), "See, it's not completely broken!", ActionOn.new("broken_cooperate_1", "broken_23")),
	"broken_cooperate_1": Dialogue.new(Colin.new(), "Let's see if it can follow simple instructions now...", ActionOn.new("voice_activated_2", "broken_23")),

	# BROKEN_COOPERATE_OFF: The player co-operates after convincing them it's broken, and ends up in an off state
	"broken_cooperate_off_0": Dialogue.new(Colin.new(), "See, it's not completely broken!", ActionOff.new("broken_cooperate_off_1", "broken_23")),
	"broken_cooperate_off_1": Dialogue.new(Colin.new(), "Let's see if it can follow simple instructions now...", ActionOff.new("broken_cooperate_off_2", "broken_23")),
	"broken_cooperate_off_2": Dialogue.new(Colin.new(), "Lamp, switch on!", ActionOff.new("broken_cooperate_off_3_last_chance", "broken_cooperate_off_3"), 3.0),
	"broken_cooperate_off_3_last_chance": Dialogue.new(Colin.new(), "One last chance until I smash you to pieces...", ActionOff.new("broken_23", "broken_cooperate_off_3"), 3.0),
	"broken_cooperate_off_3": Dialogue.new(Wendy.new(), "Cool!", ActionOn.new("voice_activated_2", "broken_23")),

	# VOICE_ACTIVATED: The guests notice the light switch on and start asking questions about the lamp
	"voice_activated_0_annoyed": Dialogue.new(Colin.new(), "Finally!", ActionOn.new("voice_activated_0", "voice_activated_off_0"), 0.0, ["HIDE_CONTROLS"]),
	"voice_activated_0": Dialogue.new(Wendy.new(), "Woah! Is this light voice activated?", ActionOn.new("voice_activated_1", "voice_activated_off_0"), 0.0, ["HIDE_CONTROLS"]),
	"voice_activated_1": Dialogue.new(Colin.new(), "Oh yes! Just you watch...", ActionOn.new("voice_activated_2", "voice_activated_off_0")),
	"voice_activated_2": Dialogue.new(Colin.new(), "Lamp, switch off!", ActionOn.new("voice_activated_on_0", "voice_activated_3", true), 3.0),
	"voice_activated_3": Dialogue.new(Colin.new(), "Aaand, on!", ActionOff.new("voice_activated_off_0", "voice_activated_4", true), 3.0),
	"voice_activated_4": Dialogue.new(Laurie.new(), "[whispers] Woah!", ActionOn.new("voice_activated_5", "sensor_cooperate_1")),
	"voice_activated_5": Dialogue.new(Wendy.new(), "Does it listen to me too?", ActionOn.new("voice_activated_6", "voice_activated_7")),
	"voice_activated_6": Dialogue.new(Wendy.new(), "Lamp Off!", ActionOn.new("sensor_cooperate_1", "voice_activated_7", true), 3.0),
	"voice_activated_7": Dialogue.new(Laurie.new(), "Cool!", ActionOff.new("voice_activated_8", "sensor_cooperate_1")),
	"voice_activated_8": Dialogue.new(Edmund.new(), "Come on guys, it's just a voice activated light...", ActionOff.new("intelligence_test_1", "sensor_cooperate_1")),

	# VOICE_ACTIVATED_OFF: The players think it's voice activated, then it switches off (when it's not supposed to)
	"voice_activated_off_0": Dialogue.new(Wendy.new(), "[laughs] It's clearly not voice activated...", ActionOff.new("voice_activated_off_1", "sensor_broken_0")),
	"voice_activated_off_1": Dialogue.new(Colin.new(), "Yes it is! Look, it'll turn back on any moment now...", ActionOff.new("voice_activated_off_2", "voice_activated_cooperate_0", true), 3.0),
	"voice_activated_off_2": Dialogue.new(Colin.new(), "Oh, get on with it!", ActionOff.new("voice_activated_off_3", "voice_activated_cooperate_0", true), 3.0),
	"voice_activated_off_3": Dialogue.new(Wendy.new(), "Maybe, just maybe, it isn't actually a voice activated light?", ActionOff.new("voice_activated_off_4", "voice_activated_cooperate_0")),
	"voice_activated_off_4": Dialogue.new(Colin.new(), "It is!", ActionOff.new("is_it_working_1", "voice_activated_cooperate_0", true), 1.0),

	# VOICE_ACTIVATED_ON: If the player leaves it on when it should be off
	"voice_activated_on_0": Dialogue.new(Wendy.new(), "[laughs] It's clearly not working properly...", ActionOn.new("voice_activated_on_1", "sensor_broken_0")),
	"voice_activated_on_1": Dialogue.new(Colin.new(), "Yes it is! Look, it'll turn off any moment now...", ActionOn.new("sensor_cooperate_1", "voice_activated_cooperate_1", true), 3.0),

	# VOICE_ACTIVATED_COOPERATE: The player ends up in one of the above cases, but then decides to co-operate
	"voice_activated_cooperate_0": Dialogue.new(Colin.new(), "Aaaaand off", ActionOn.new("sensor_cooperate_1", "voice_activated_cooperate_1")),
	"voice_activated_cooperate_1": Dialogue.new(Colin.new(), "See! All working as intended...", ActionOff.new("intelligence_test_1", "sensor_cooperate_1")),
	
	# INTELLIGENCE_TEST: The characters ask the lamp questions to test their intelligence
	"intelligence_test_1": Dialogue.new(Wendy.new(), "Switch on if 2+2=4", ActionOff.new("intelligence_test_1_wrong", "intelligence_test_2", true), 3.0),
	"intelligence_test_1_wrong": Dialogue.new(Edmund.new(), "Clearly not intelligent though...", ActionOff.new("intelligence_test_4", "intelligence_test_refuse_1")),
	"intelligence_test_2": Dialogue.new(Edmund.new(), "That's too easy for an algorithm to solve. Switch off if Paris is the capital of France", ActionOn.new("intelligence_test_refuse_1", "intelligence_test_3")),
	"intelligence_test_2_wrong": Dialogue.new(Laurie.new(), "Maybe the algorithm thought you meant the capital letter...", ActionOn.new("intelligence_test_3", "intelligence_test_refuse_1")),
	"intelligence_test_3": Dialogue.new(Laurie.new(), "Oh come on that's so easy. If you really want to test it, ask a tough question", ActionOff.new("intelligence_test_4", "intelligence_test_refuse_1")),
	"intelligence_test_4": Dialogue.new(Laurie.new(), "Switch on if P = NP", ActionOff.new("intelligence_test_5", "intelligence_test_5", 1.0)),
	"intelligence_test_5": Dialogue.new(Wendy.new(), "Oh come on, that's an unsolved problem!", ActionEither.new("intelligence_test_6", "intelligence_test_8")),
	"intelligence_test_6": Dialogue.new(Edmund.new(), "I still think we should test its general knowledge over maths problems", ActionEither.new("intelligence_test_7", "TOintelligence_test_8DO")),
	"intelligence_test_7": Dialogue.new(Laurie.new(), "Go on then, outsmart the lamp...", ActionEither.new("intelligence_test_8", "intelligence_test_8")),
	"intelligence_test_8": Dialogue.new(Edmund.new(), "Switch if Henry VIII had 8 wives", ActionEither.new("intelligence_test_8_wrong", "intelligence_test_9")),
	"intelligence_test_8_wrong": Dialogue.new(Wendy.new(), "Wow, didn't think it would get that wrong!", ActionEither.new("intelligence_test_10", "intelligence_test_10")),
	"intelligence_test_9": Dialogue.new(Wendy.new(), "Even I know that one!", ActionEither.new("intelligence_test_10", "intelligence_test_10")),
	"intelligence_test_10": Dialogue.new(Edmund.new(), "Switch if the Hundred Years' War lasted 100 years", ActionEither.new("intelligence_test_10_correct_1", "intelligence_test_10_wrong", 3.0)),
	"intelligence_test_10_wrong": Dialogue.new(Edmund.new(), "Ha! Easy mistake...", ActionEither.new("intelligence_test_11", "intelligence_test_11")),
	"intelligence_test_10_correct_1": Dialogue.new(Laurie.new(), "Really?", ActionEither.new("intelligence_test_10_correct_2", "intelligence_test_11")),
	"intelligence_test_10_correct_2": Dialogue.new(Edmund.new(), "Yep, it was 116 years.", ActionEither.new("intelligence_test_10_correct_3", "intelligence_test_11")),
	"intelligence_test_10_correct_3": Dialogue.new(Laurie.new(), "Silly name...", ActionEither.new("intelligence_test_11", "intelligence_test_11")),
	"intelligence_test_11": Dialogue.new(Edmund.new(), "Switch if the Magna Carta was signed in 1115", ActionEither.new("intelligence_test_11_correct", "intelligence_test_11_wrong", 3.0)),
	"intelligence_test_11_wrong": Dialogue.new(Edmund.new(), "Nope, silly lamp. It was 1215.", ActionEither.new("intelligence_test_12", "intelligence_test_12")),
	"intelligence_test_11_correct": Dialogue.new(Edmund.new(), "Good job!", ActionEither.new("intelligence_test_12", "intelligence_test_12")),
	"intelligence_test_12": Dialogue.new(Wendy.new(), "Enough with the boring History, sweetheart. Switch if x^3 - x + 1 = 0 has three real roots", ActionEither.new("intelligence_test_12_correct", "intelligence_test_12_wrong", 3.0)),
	"intelligence_test_12_correct": Dialogue.new(Wendy.new(), "Good job!", ActionEither.new("moral_questions_1", "moral_questions_1")),
	"intelligence_test_12_wrong": Dialogue.new(Wendy.new(), "Not quite. That was a tough one...", ActionEither.new("moral_questions_1", "moral_questions_1")),

	# INTELLIGENCE_TEST_REFUSE: If the player is disruptive during the intelligence questions
	"intelligence_test_refuse_1": Dialogue.new(Colin.new(), "It doesn't seem very co-operative today. Maybe try the quiz questions another day.", ActionLinear.new("intelligence_test_refuse_2", false)),
	"intelligence_test_refuse_2": Dialogue.new(Laurie.new(), "What if there isn't a wrong answer? Then it might cooperate...", ActionLinear.new("moral_questions_1")),

	# MORAL_QUESTIONS_1: Trolley problem
	"moral_questions_1": Dialogue.new(Laurie.new(), "A trolley is going towards 5 people on a track. Switch if you would divert it to hit 1 person instead", ActionEither.new("moral_questions_1_stay_1", "moral_questions_1_switch_1")),
	"moral_questions_1_switch_1": Dialogue.new(Laurie.new(), "A popular choice! I agree. Why kill 5 people when you can kill just 1 instead?", ActionEither.new("moral_questions_1_general_1", "moral_questions_1_interrupted")),
	"moral_questions_1_stay_1": Dialogue.new(Laurie.new(), "Are you insane? You'd kill 5 people instead of 1?", ActionEither.new("moral_questions_1_stay_2", "moral_questions_1_interrupted")),
	"moral_questions_1_stay_2": Dialogue.new(Colin.new(), "It's not as clear as you might think. The difference is in the action you take.", ActionEither.new("moral_questions_1_general_1", "moral_questions_1_interrupted")),
	"moral_questions_1_general_1": Dialogue.new(Colin.new(), "Who are you to decide who lives and who dies?", ActionEither.new("moral_questions_1_general_2", "moral_questions_1_interrupted")),
	"moral_questions_1_general_2": Dialogue.new(Colin.new(), "If you get involved, you are now responsible for intentionally killing that person", ActionEither.new("moral_questions_1_general_3", "moral_questions_1_interrupted")),
	"moral_questions_1_general_3": Dialogue.new(Wendy.new(), "But you save 5 people! Are you seriously saying you wouldn't switch it?", ActionEither.new("moral_questions_1_general_4", "moral_questions_1_interrupted")),
	"moral_questions_1_general_4": Dialogue.new(Colin.new(), "I'm not sure. Let me pose you a similar scenario.", ActionEither.new("moral_questions_1a", "moral_questions_1_interrupted")),
	"moral_questions_1a": Dialogue.new(Colin.new(), "You're on a bridge watching a trolley go towards 5 people. Switch if you would push a fat man off the bridge to stop the trolley.", ActionEither.new("moral_questions_1a_stay_1", "moral_questions_1a_switch_1")),
	"moral_questions_1a_switch_1": Dialogue.new(Laurie.new(), "Nah, surely not!", ActionEither.new("moral_questions_1a_general_1", "moral_questions_1_interrupted")),
	"moral_questions_1a_stay_1": Dialogue.new(Laurie.new(), "Yeah, that makes sense. You'd have to be evil to push that man off the bridge...", ActionEither.new("moral_questions_1a_general_1", "moral_questions_1_interrupted")),
	"moral_questions_1a_general_1": Dialogue.new(Colin.new(), "But what's the difference between these scenarios?", ActionEither.new("moral_questions_1a_general_2", "moral_questions_1_interrupted", 2.0)),
	"moral_questions_1a_general_2": Dialogue.new(Colin.new(), "In the first, you choose to kill 1 person to save 5", ActionEither.new("moral_questions_1a_general_3", "moral_questions_1_interrupted")),
	"moral_questions_1a_general_3": Dialogue.new(Colin.new(), "In the second, you choose to kill 1 person to save 5", ActionEither.new("moral_questions_1a_general_4", "moral_questions_1_interrupted")),
	"moral_questions_1a_general_4": Dialogue.new(Laurie.new(), "I'm not really sure. It just feels different.", ActionEither.new("moral_questions_1a_general_5", "moral_questions_1_interrupted")),
	"moral_questions_1a_general_5": Dialogue.new(Colin.new(), "See, it's more complicated than you think...", ActionEither.new("moral_questions_2", "moral_questions_1_interrupted")),
	"moral_questions_1_interrupted": Dialogue.new(Colin.new(), "Oh, the lamp is bored. On to the next one!", ActionEither.new("moral_questions_2", "moral_questions_2")),

	# MORAL_QUESTIONS_2: More questions here
	"moral_questions_2": Dialogue.new(NoCharacter.new(), "[a few more moral/political questions will be put in here - some discussion amongst the characters will follow each one but not as extensive as the trolley problem discussion]", ActionLinear.new("post_moral_questions_1")),

	# POST_MORAL_QUESTIONS: Some text to force the lamp state to on, then some small discussion to make it seem natural before Sophie walks in
	"post_moral_questions_1": Dialogue.new(NoCharacter.new(), "[There will be something here to force the lamp state to on, and a short discussion that will be cut off half-way through. Please switch the lamp on now. This is not part of the game.]", ActionForceState.new("sophie_walks_in_0_disclaimer", "post_moral_questions_1", false), 3.0),

	# SOPHIE_WALKS_IN: Michael comes into the house and Sophie comes into the room
	"sophie_walks_in_0_disclaimer": Dialogue.new(NoCharacter.new(), "[You are about half-way through the story. As this is a workshop release, the second half is not very fleshed out, a lot of the dialogue is incomplete. However, I wanted to include this to demonstrate the structure, even if I haven't written most of the actual dialogue. All of the branching paths are complete, except for when George walks in (when this happens, don't switch the lamp!)]", ActionOn.new("sophie_walks_in_0_disclaimer_1", "")),
	"sophie_walks_in_0_disclaimer_1": Dialogue.new(NoCharacter.new(), "[If you would like to skip ahead to this point in the future, set the custom start point to 'sophie_walks_in_0'. The following dialogue is part of the game]", ActionOn.new("sophie_walks_in_0", "")),
	"sophie_walks_in_0": Dialogue.new(NoCharacter.new(), "[The front door slams shut]", ActionOn.new("sophie_walks_in_1", "sophie_off_0")),
	"sophie_walks_in_1": Dialogue.new(Michael.new(), "[Faintly] Oh, there's people in the living room again", ActionOn.new("sophie_walks_in_2", "sophie_off_0")),
	"sophie_walks_in_2": Dialogue.new(Sophie.new(), "[Faintly] It's Colin and his friends", ActionOn.new("sophie_walks_in_3", "sophie_off_0")),
	"sophie_walks_in_3": Dialogue.new(Michael.new(), "[Faintly] Those buggers are always using the living room when we want to use it...", ActionOn.new("sophie_walks_in_4", "sophie_off_0")),
	"sophie_walks_in_4": Dialogue.new(Colin.new(), "[Raises Voice] We can hear you by the way!", ActionOn.new("sophie_walks_in_5", "sophie_off_0")),
	"sophie_walks_in_5": Dialogue.new(Michael.new(), "[Raises Voice] Oh shut up, smartass. Why are you always so annoying?", ActionOn.new("sophie_walks_in_6", "sophie_off_0")),
	"sophie_walks_in_6": Dialogue.new(Sophie.new(), "[Approaches the living room] EVERY SINGLE TIME I WANT TO USE THIS ROOM, YOU AND YOUR BLOODY FRIENDS ARE ALWAYS HERE!", ActionOn.new("sophie_walks_in_7", "sophie_off_0")),
	"sophie_walks_in_7": Dialogue.new(Sophie.new(), "GET OUT! HAVE SOME RESPECT FOR YOUR OTHER HOUSEMATES!", ActionOn.new("sophie_walks_in_8", "sophie_off_0")),
	"sophie_walks_in_8": Dialogue.new(Edmund.new(), "[whispers] We should go...", ActionOn.new("sophie_walks_in_9", "sophie_off_0")),
	"sophie_walks_in_9": Dialogue.new(Wendy.new(), "[whispers] Nah, I'm enjoying this...", ActionOn.new("sophie_walks_in_9a", "sophie_off_0")),
	"sophie_walks_in_9a": Dialogue.new(Edmund.new(), "[whispers] She didn't used to be like this before Michael...", ActionOn.new("sophie_walks_in_10", "sophie_off_0")),
	"sophie_walks_in_10": Dialogue.new(Sophie.new(), "WHAT DID YOU SAY?", ActionOn.new("sophie_walks_in_11", "sophie_off_0")),
	"sophie_walks_in_11": Dialogue.new(Wendy.new(), "I SAID, WE AIN'T GOIN' NOWHERE!", ActionOn.new("sophie_walks_in_12", "sophie_off_0")),
	"sophie_walks_in_12": Dialogue.new(Colin.new(), "WENDY!", ActionOn.new("sophie_walks_in_12a", "sophie_off_0")),
	"sophie_walks_in_12a": Dialogue.new(Laurie.new(), "[whispers] Is Sophie pregnant?", ActionOn.new("sophie_walks_in_12b", "sophie_off_0")),
	"sophie_walks_in_12b": Dialogue.new(Sophie.new(), "I HEARD THAT!", ActionOn.new("sophie_walks_in_12c", "sophie_off_0")),
	"sophie_walks_in_12c": Dialogue.new(Sophie.new(), "I AM NOT PREGNANT!", ActionOn.new("sophie_walks_in_12d", "sophie_off_0")),
	"sophie_walks_in_12d": Dialogue.new(Wendy.new(), "[i]awkward...[/i]", ActionOn.new("sophie_walks_in_13", "sophie_off_0")),
	"sophie_walks_in_13": Dialogue.new(Colin.new(), "Sophie, we're not here very often. You got to use this room yesterday, the day before and the day before that. I think it's our turn now.", ActionOn.new("sophie_walks_in_13a", "sophie_off_0")),
	"sophie_walks_in_13a": Dialogue.new(Sophie.new(), "I HATE YOU GUYS!", ActionOn.new("sophie_walks_in_14", "sophie_off_0")),
	"sophie_walks_in_14": Dialogue.new(NoCharacter.new(), "[Sophie storms off. Michael follows closely behind]", ActionOn.new("sophie_walks_in_15", "sophie_off_0")),
	"sophie_walks_in_15": Dialogue.new(Sophie.new(), "[Faintly] Maybe we could disrupt the electrical supply to force them to leave?", ActionOn.new("sophie_walks_in_16", "sophie_off_0")),
	"sophie_walks_in_16": Dialogue.new(Michael.new(), "[Faintly] Pop the breaker?", ActionOn.new("sophie_walks_in_17", "sophie_off_0")),
	"sophie_walks_in_17": Dialogue.new(Michael.new(), "[Faintly] I'm not sure where I'd find that. We don't want to cause any permanent damage.", ActionOn.new("sophie_walks_in_17a", "sophie_off_0")),
	"sophie_walks_in_17a": Dialogue.new(Sophie.new(), "[Faintly] Yeah, let's just wait and hope they leave. It's the only proper telly in the house!", ActionOn.new("sophie_walks_in_18", "sophie_off_0")),
	"sophie_walks_in_18": Dialogue.new(Colin.new(), "Do they realise that we can still hear them talking?", ActionOn.new("sophie_walks_in_19", "sophie_off_0")),
	"sophie_walks_in_19": Dialogue.new(Wendy.new(), "Yeah, I think they just don't care", ActionOn.new("colin_discussion_0", "sophie_off_0")),

	# SOPHIE_OFF: The light switches off when Sophie walks in and she gets annoyed
	"sophie_off_0": Dialogue.new(NoCharacter.new(), "[MORE DIALOGUE HERE: Sophie gets annoyed at the light switching off, but continues talking regardless (similar to the dialogue when light is kept on)]", ActionOff.new("sophie_off_1", "sophie_walks_in_15")),
	"sophie_off_1": Dialogue.new(Sophie.new(), "I bet they'll get fed up if that light stays off...", ActionOff.new("sophie_off_1", "sophie_walks_in_15")),

	# COLIN_DISCUSSION: Colin and his friends have a discussion before going to bed
	"colin_discussion_0": Dialogue.new(NoCharacter.new(), "[MORE DIALOGUE HERE: Colin and his friends have an interesting discussion™. Topics include politics and religion. While the players won't directly ask questions to the lamp as much as they did before, the player will be able to implicitly provide their opinion by switching at certain times. The game should try and respond to the player's opinion as much as possible, giving them arguments against their own opinion. Switch the lamp now if you'd like to switch the lamp off during this discussion]", ActionOn.new("colin_george_0", "colin_sophie_transition_0", true), 3.0),

	# COLIN_GEORGE: George walks into Colin's discussion
	"colin_george_0": Dialogue.new(NoCharacter.new(), "[The door opens slowly]", ActionOn.new("colin_george_1", "TODO")),
	"colin_george_1": Dialogue.new(NoCharacter.new(), "[George is standing there in his pyjamas]", ActionOn.new("colin_george_2", "TODO")),
	"colin_george_2": Dialogue.new(George.new(), "[Nervously] Colin, are you going to Church tomorrow?", ActionOn.new("colin_george_3", "TODO")),
	"colin_george_3": Dialogue.new(Colin.new(), "'Course! 10 past 10?", ActionOn.new("colin_george_4", "TODO")),
	"colin_george_4": Dialogue.new(George.new(), "Ok, goodnight everyone!", ActionOn.new("colin_george_5", "TODO")),
	"colin_george_5": Dialogue.new(Wendy.new(), "'night, George!", ActionOn.new("colin_tv_0", "TODO")),

	# COLIN_TV: Colin and his friends pop the TV on
	"colin_tv_0": Dialogue.new(NoCharacter.new(), "[They decide to pop the TV on. Switching the lamp seems to intefere with the TV in some way / change the channel. Depending on how long the TV stays on, George may complain about a lack of sleep tomorrow. By switching the channel, you get to see different characters reacting to the same channels in different ways. Please switch the lamp off to proceed to the next section]", ActionForceState.new("colin_tv_0", "colin_home_0", false)),

	# COLIN_HOME: Colin and his friends go home
	"colin_home_0": Dialogue.new(NoCharacter.new(), "[MORE DIALOGUE HERE: Colin and his friends go home]", ActionForceState.new("colin_home_0", "night_time_0")),

	# COLIN_SOPHIE_TRANSITION: Colin and his friends get fed up, and vacate the room for Sophie to use it
	"colin_sophie_transition_0": Dialogue.new(NoCharacter.new(), "[Colin and his friends notice the light go off and decide to leave. Sophie and Michael replace them in the living room. They will not start the discussion unless you switch the lamp on - if you don't, they will soon give up as well and skip straight to night time]", ActionOff.new("night_time_0", "sophie_discussion_0", true), 3.0),

	# SOPHIE_DISCUSSION
	"sophie_discussion_0": Dialogue.new(NoCharacter.new(), "[MORE DIALOGUE HERE: Sophie and Michael have an interesting discussion, largely consisting of Michael stating some outrageous opinions and Sophie just agreeing. There is also a discussion around Sophie's pregnancy. Sophie wants an abortion, whereas Michael is using it to pressure her to get married.", ActionOn.new("sophie_george_0", "night_time_0")),

	# SOPHIE_GEORGE: George walks past the living room and ends up engaging in conversation against his will
	"sophie_george_0": Dialogue.new(NoCharacter.new(), "[George walks past the door to the room]", ActionOn.new("sophie_george_1", "TODO")),
	"sophie_george_1": Dialogue.new(Michael.new(), "[Shouts] George! Long time no see!", ActionOn.new("sophie_george_2", "TODO")),
	"sophie_george_2": Dialogue.new(NoCharacter.new(), "[George hesistantly approaches the room and opens the door]", ActionOn.new("sophie_george_3", "TODO")),
	"sophie_george_3": Dialogue.new(Michael.new(), "Pyjamas already? It's only half 11...", ActionOn.new("sophie_george_4", "TODO")),
	"sophie_george_4": Dialogue.new(George.new(), "[Nervously] I've got to get up for Church tomorrow?", ActionOn.new("sophie_george_5", "TODO")),
	"sophie_george_5": Dialogue.new(Michael.new(), "[Scoffs] Church! That's cute", ActionOn.new("sophie_george_6", "TODO")),
	"sophie_george_6": Dialogue.new(Michael.new(), "Everyone knows all the churches went woke years ago!", ActionOn.new("sophie_george_7", "TODO")),
	"sophie_george_7": Dialogue.new(Michael.new(), "Real Christians don't go to Church...", ActionOn.new("sophie_george_8", "TODO")),
	"sophie_george_8": Dialogue.new(Sophie.new(), "Yeah George!", ActionOn.new("sophie_george_9", "TODO")),
	"sophie_george_9": Dialogue.new(George.new(), "Thank you for your opinion, but I must go to bed.", ActionOn.new("sophie_george_10", "TODO")),
	"sophie_george_10": Dialogue.new(Michael.new(), "Ha! Not even willing to debate me! 'Christians' these days...", ActionOn.new("sophie_george_11", "TODO")),
	"sophie_george_11": Dialogue.new(George.new(), "Goodnight", ActionOn.new("sophie_tv_0", "TODO")),

	# COLIN_TV: Sophie and Michael pop the TV on
	"sophie_tv_0": Dialogue.new(NoCharacter.new(), "[They decide to pop the TV on. Switching the lamp seems to intefere with the TV in some way / change the channel. Depending on how long the TV stays on, George may complain about a lack of sleep tomorrow. By switching the channel, you get to see different characters reacting to the same channels in different ways. Please switch the lamp off to proceed to the next section]", ActionForceState.new("sophie_tv_0", "sophie_home_0", false)),

	# SOPHIE_HOME: Sophie and Michael leave the living room and go to their bedroom
	"sophie_home_0": Dialogue.new(NoCharacter.new(), "[Sophie and Michael leave the living room and go to Sophie's bedroom]", ActionForceState.new("sophie_home_0", "night_time_0")),

	# NIGHT_TIME: All the characters have left the room and gone to bed, leaving the player alone in silence.
	"night_time_0": Dialogue.new(NoCharacter.new(), "[Silence]", ActionLinear.new("night_time_0_remark", false), 8.0),
	"night_time_0_remark": Dialogue.new(NoCharacter.new(), "[NOTE: All dialogue paths merge to this one. There are 3 endings from this point. If you want to return to this point, use the ID 'night_time_0'.]", ActionLinear.new("night_time_1", false), 2.0),
	"night_time_1": Dialogue.new(NoCharacter.new(), "[Some very faint snoring]", ActionLinear.new("night_time_2", false), 4.0),
	"night_time_2": Dialogue.new(NoCharacter.new(), "[A bird tweeting]", ActionLinear.new("night_time_3", false), 2.0),
	"night_time_3": Dialogue.new(NoCharacter.new(), "[Silence]", ActionForceState.new("never_get_robbed_0", "night_time_4", false), 5.0),
	"night_time_4": Dialogue.new(NoCharacter.new(), "Suddenly, you hear the back door swing open, followed by footsteps in the room.", ActionOff.new("night_time_5", "scare_robber_away_0", true), 2.0),
	"night_time_5": Dialogue.new(NoCharacter.new(), "You can hear frantic rustling of papers, and footsteps moving across the room. They're looking for something.", ActionOff.new("night_time_6", "you_get_robbed_0", true), 5.0),
	"night_time_6": Dialogue.new(NoCharacter.new(), "Cling! There is a deafening silence for 2 seconds, before the footsteps resume", ActionOff.new("night_time_7", "you_get_robbed_0")),
	"night_time_7": Dialogue.new(NoCharacter.new(), "Slam! The door slams shut and you are plunged back into silence", ActionLinear.new("house_gets_robbed_0", false)),

	# NEVER_GET_ROBBED: If the player keeps the lamp on, the robber will never show up at all
	"never_get_robbed_0": Dialogue.new(NoCharacter.new(), "The robber doesn't show up because the lamp is on. You wake up tomorrow and the game ends after some discussion. [Ending 2/4]", ActionLinear.new("", false), 3.0),

	# SCARE_ROBBER_AWAY: If the player keeps the lamp on, the robber will never show up at all
	"scare_robber_away_0": Dialogue.new(NoCharacter.new(), "You scare the robber away, and they don't steal anything. You wake up tomorrow and the game ends after some discussion. [Ending 2/4]", ActionLinear.new("", false), 3.0),

	# YOU_GET_ROBBED: You attract the robber's attention so they decide to steal you too
	"you_get_robbed_0": Dialogue.new(NoCharacter.new(), "You attract the robber's attention, and they decide to steal you too. You wake up in the robber's house and the game ends after some discussion. [Ending 4/4]", ActionLinear.new("", false), 3.0),

	# HOUSE_GETS_ROBBED: You don't do anything to prevent the house getting robbed, so it gets robbed
	"house_gets_robbed_0": Dialogue.new(NoCharacter.new(), "You don't do anything to prevent the house from being robbed, so it is robbed. You wake up to hear the characters' reactions, and the game ends shortly afterwards. [Ending 3/4]", ActionLinear.new("", false), 3.0),
}
