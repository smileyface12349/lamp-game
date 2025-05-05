extends Node
class_name AllDialogue

## All of the dialogue in the game

static var DIALOGUE: Dictionary = {
	# id : dialogue

	# "TODO": Dialogue.new(NoCharacter.new(), "You've reached a point where there is further dialogue planned, but it is not present for this workshop submission. You will now be taken to the game over screen.", Action.new("", "", "", ""), 5.0),
	# "ERROR": Dialogue.new(NoCharacter.new(), "Hello, this is an error message. Hopefully you know what it means. You will now be taken to the game over screen.", Action.new("", "", "", ""), 5.0),
	
	# INITIAL: The characters walk into the room and try to switch the light on
	"initial": LongDialogue.new([
		Line.new(NoCharacter.new(), "[You hear a door closing in the distance, followed by some distant conversation that you can barely hear.]"),
		Line.new(Colin.new(), "...great thanks!"),
		Line.new(Wendy.new(), "I got the job!!"),
		Line.new(Laurie.new(), "W-what job?"),
		Line.new(Edmund.new(), "...group chat?"),
		Line.new(Colin.new(), "Congratulations! Look forward to hearing more about it later."),
		# Line.new(Wendy.new(), "OMG I'm so excited to see you again!"),
		# Line.new(Laurie.new(), "Yeah, I like going out, otherwise I'm just sitting in my room, and, uh, getting a bit lonely."),
		Line.new(Colin.new(), "But first, who wants a cuppa?"),
		Line.new(Laurie.new(), "Uh, yeah, coffee, please."),
		Line.new(Edmund.new(), "Isn't it a little late for coffee..."),
		Line.new(Laurie.new(), "Uh, I guess."),
		Line.new(Wendy.new(), "If Laurie wants coffee, then Laurie should have coffee!"),
		Line.new(Wendy.new(), "We'll have tea though. Decaf please."),
		Line.new(Colin.new(), "Ok, 2 teas and a coffee! Make yourselves comfortable in the living room."),
		Line.new(NoCharacter.new(), "[You hear footsteps getting louder and then a door closing]")
	], ActionOff.new("initial_2", "on_outside")),
	"initial_2": LongDialogue.new([
		Line.new(Wendy.new(), "Blimey it's dark in 'ere! Hey! Where's the old lamp gone?"),
		Line.new(Wendy.new(), "He's really changed the blimmin' lamp in the past couple weeks?"),
		Line.new(NoCharacter.new(), "", 1.0)
	], ActionOff.new("initial_3", "sensor")),
	"initial_3": LongDialogue.new([
		Line.new(Edmund.new(), "This lamp does not have a switch. What kind of imbecile would make a lamp without a switch?"),
		Line.new(Laurie.new(), "Ooooh! Maybe it's a smart lamp?"),
		Line.new(Edmund.new(), "[Scoffs] Why does everything have to be smart these days?"),
		Line.new(Wendy.new(), "Well it ain't turnin' on when we want it to. And if it ain't on, it ain't smart."),
		Line.new(Edmund.new(), "Does any person have a proposal for how to turn this lamp on?"),
		Line.new(Wendy.new(), "I'll have a go!")
	], ActionOff.new("initial_4", "sensor")),
	"initial_4": LongDialogue.new([
		Line.new(NoCharacter.new(), "[Ow! Ow! Ow! You feel multiple sharp pains in your side. It hurts a little, although the pain fades quickly]"),
		Line.new(Edmund.new(), "Sweetheart, that is not going to work."),
		Line.new(Edmund.new(), "How about Mr Computer Science has a go. Amaze us with your infinite wisdom..."),
		Line.new(NoCharacter.new(), "[OWWW! You feel one significant bash in your side, bigger than the others. Despite being a lamp, you have developed a significant bruise there. Don't worry about the physics/biology of it.]"),
		Line.new(Edmund.new(), "Oh for god's sake, Laurie! I highly doubt they taught you to bash things to fix them."),
		Line.new(Wendy.new(), "Worked for the downstairs printer last week..."),
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
		Line.new(Wendy.new(), "Except us! It doesn't turn on for us! Maybe it's a secret evil lamp that works for Colin?"),
		Line.new(Colin.new(), "Did you actually ask it?"),
		Line.new(Laurie.new(), "No. Not directly."),
		Line.new(Edmund.new(), "Surely that would've been a superior solution, idiot. Instead of bashing it like it's a slave in the Roman empire..."),
		Line.new(Wendy.new(), "You shouldn't joke about that, sweetheart."),
		Line.new(Laurie.new(), "[i]Asking[/i] it? You think [i]that[/i] is more logical? Next time the printer breaks, how about you try just [i]asking[/i] it nicely? You're the idiot here."),
		Line.new(Colin.new(), "Calm it down, you two. Let's see if this lamp will turn on when I ask it to."),
	], ActionOff.new("initial_6", "colin_on")),
	"initial_6": LongDialogue.new([
		Line.new(Colin.new(), "Lamp on!", 3.0),
		Line.new(Colin.new(), "Please could you switch on, kind lamp?", 3.0),
		Line.new(Colin.new(), "Oh, come on you stupid thing!"),
	], ActionOff.new("initial_7", "switch_on"), ["SHOW_CONTROLS"]),
	"initial_7": LongDialogue.new([
		Line.new(NoCharacter.new(), "[You feel a really light touch, but it's precisely where the bruise is so it hurts way more than it should]"),
		Line.new(Edmund.new(), "I think we have firmly established that it is indeed not touch activated."),
	], ActionOff.new("initial_8", "bashing_on")),
	"initial_8": LongDialogue.new([
		Line.new(Laurie.new(), "How about, sort of, switching it off and on again?"),
		Line.new(Edmund.new(), "Is that the only thing you've learned from your degree?"),
		Line.new(Wendy.new(), "Stop being mean, sweetheart. I think it's a sensible idea."),
		Line.new(Edmund.new(), "Even if it was a sensible idea, which it is not, we have very much established that THERE IS NO SWITCH!"),
		Line.new(Laurie.new(), "Oh stop criticising every flipping thing I say! I mean at the wall you idiot!"),
		Line.new(Edmund.new(), "\"Speak clearly, if you speak at all\". Oliver Wendell Holmes Jr."),
		Line.new(Edmund.new(), "A lot of wisdom in that for you, Laurie."),
		Line.new(Colin.new(), "Edmund, I think it was obvious what he meant."),
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
		Line.new(Wendy.new(), "What if the blinkin' bulb has gone?"),
		Line.new(Colin.new(), "Doesn't seem to be doing much blinkin' to me..."),
		Line.new(Colin.new(), "[Sigh] The bulb is fairly new but I can change it if you think it'll help..."),
		Line.new(Colin.new(), "I'll go and get a new bulb from the utility room."),
		Line.new(NoCharacter.new(), "[You hear footsteps as the door opens and closes. While I'm here, I just wanted to remind you that you are still in great pain due to your bruises, in case you forgot.]"),
	], ActionOff.new("smart_discussion", "on_off_worked"), ["POWERED"]),

	# SMART_DISCUSSION: The lamp is still off, and the characters discuss the advancement of technology
	"smart_discussion": LongDialogue.new([
		Line.new(Edmund.new(), "Why does everything have to be 'smart' these days? First it was phones, now it's fridges and washing machines!"),
		Line.new(Wendy.new(), "And now lamps, maybe?"),
		Line.new(Edmund.new(), "If you extrapolate this trend, what will come next? Smart toilets? Pens? Shower gel?"),
		Line.new(Laurie.new(), "Why do you always have to be so skeptical of change? Things are getting better, do you not see?"),
		Line.new(Edmund.new(), "\"Better\". Mental health issues up. Depression up. Suicide up. How are things getting better?"),
		Line.new(Laurie.new(), "Uh, well, everything comes with tradeoffs. But overall, things are better."),
		Line.new(Edmund.new(), "We were happier before. I bet most people would be happier without social media."),
		Line.new(Wendy.new(), "Did you see how Australia just banned social media for under 16s?"),
		Line.new(Wendy.new(), "That sounds like a good option to me."),
		Line.new(Edmund.new(), "Hmmmm, I'm not sure. I think this responsibility falls on the parents and not the state."),
		Line.new(Laurie.new(), "[Starts to cry]. Not everyone has good parents. What about them? Do you not care about them?"),
		Line.new(Edmund.new(), "I do not think we should be legislating how to parent."),
		Line.new(Laurie.new(), "WHAT ABOUT ME?? [Sobs]."),
		Line.new(Laurie.new(), "I didn't have anyone there to tell me to get off social media."),
		Line.new(Laurie.new(), "If only I did. If only. Maybe I wouldn't be as depressed."),
		Line.new(Wendy.new(), "I'm sorry, Laurie. If you ever need to talk, I'm here for you."),
		Line.new(Laurie.new(), "Thank you, Wendy.")
	], ActionOff.new("change_bulb", "smart_discussion_on")),
	"smart_discussion_on": LongDialogue.new([
		Line.new(Edmund.new(), "Oooh, it's on!"),
		Line.new(Wendy.new(), "[Chuckles] Maybe all it needed was a few insults."),
		Line.new(Edmund.new(), "[You hear the door open and close.]"),
	], ActionOn.new("smart_discussion_colin", "on_off_no_colin"), ["HIDE_CONTROLS"]),
	"smart_discussion_colin": LongDialogue.new([
		Line.new(Colin.new(), "Wow, it's working again!"),
		Line.new(Colin.new(), "I knew the bulb was fine..."),
	], ActionOn.new("testing", "on_off_colin")),

	# CHANGE_BULB: The discussion is interrupted by Colin's return
	"change_bulb": LongDialogue.new([
		Line.new(NoCharacter.new(), "[You hear the door open and close. You know what this means.]"),
		Line.new(NoCharacter.new(), "[You've never felt this before. What will it feel like? What if it hurts?]"),
		Line.new(NoCharacter.new(), "[Hopefully they'll switch you off at the plug so you won't have to feel anything...]"),
		Line.new(Colin.new(), "Got one! Let's give this a go then."),
		Line.new(Wendy.new(), "Are you not going to switch it off?"),
		Line.new(Colin.new(), "Nah, it'll be fine."),
		Line.new(NoCharacter.new(), "[Ah, great. Welp, here goes!]"),
	], ActionOff.new("change_bulb_2", "smart_discussion_colin")),
	"change_bulb_2": LongDialogue.new([
		Line.new(NoCharacter.new(), "[Oooh! You feel someone grasp your bulb, and it's rather arousing. As it squeezes you feel an immense rush of pleasure before some slight pain as it starts to twist.]"),
		Line.new(NoCharacter.new(), "[Owww! The more it twists, the more it hurts. Twist, owwww! Twist, owwwwwwww!]"),
		Line.new(NoCharacter.new(), "[OWWWWW! You are literally having one of your body parts gouged out of you.]"),
		Line.new(NoCharacter.new(), "[And suddenly, it's out. The pain stops, but it still feels very sore, as you feel the air touching your exposed wound.]"),
		EmptyLine.new(1.0),
		Line.new(NoCharacter.new(), "[After what feels like ages, you feel a prod as a new metal object begins to screw back in.]"),
		Line.new(NoCharacter.new(), "[It's really sore, so this is even more painful than the last time.]"),
		Line.new(NoCharacter.new(), "[OWWWWWWW! Twist, OWWWWWWWWW! Twist, OWWWWWWWWWWWWWWWW!]"),
		Line.new(NoCharacter.new(), "[You are in a state of agony. How much longer will this last?]"),
		Line.new(NoCharacter.new(), "[Ow! Finally, it's over. The pain reduces, but it'll remain sore for a while. The bruises from earlier are nothing compared to this.]"),
	], ActionForceState.new("change_bulb_worked", "change_bulb_3", false)),
	"change_bulb_3": LongDialogue.new([
		Line.new(Colin.new(), "All done!"),
		Line.new(Colin.new(), "Lamp on!", 3.0),
		Line.new(Wendy.new(), "Hellooooo Mr Lamp!", 2.0),
		Line.new(Edmund.new(), "Or Mrs Lamp..."),
		Line.new(Laurie.new(), "Or Miss Lamp..."),
		Line.new(Edmund.new(), "Quiet, Laurie."),
		Line.new(Colin.new(), "Ok, everything must be working then."),
		Line.new(Colin.new(), "I think the lamp is just deliberately disobeying us."),
		Line.new(Edmund.new(), "\"Deliberately disobeying us\"? It's a lamp for god's sake."),
	], ActionOff.new("refuse_moral_1", "change_bulb_worked")),

	# ON_OUTSIDE: The player switches the lamp on before the characters enter the room. (maybe only do this when they enter the room?)
	"on_outside": LongDialogue.new([
		Line.new(Laurie.new(), "Huh, the living room lamp just turned on."),
		Line.new(Colin.new(), "That'll be my new lamp! It can be a bit weird sometimes."),
		Line.new(Laurie.new(), "Cool!"),
		Line.new(NoCharacter.new(), "[You hear someone rushing towards you, and then the door opening.]"),
		Line.new(Edmund.new(), "Wow, he's keen."),
		Line.new(Wendy.new(), "Adorable, isn't he?"),
		Line.new(Edmund.new(), "[Scoffs] Like a 10-year old child."),
		Line.new(Colin.new(), "You two aren't having kids then, eh?"),
		# TODO: Streamline below discussion - maybe cut it?
		Line.new(Edmund.new(), "Nope, I couldn't bear to bring anyone else into this meaningless existence."),
		# Line.new(Edmund.new(), "No, there's too many people already. More births is just more suffering."),
		# Line.new(Edmund.new(), "How is having kids going to help me?"),
		# Line.new(Edmund.new(), "And they'll just be plunged into the same meaningless existence as the rest of us."),
		Line.new(Colin.new(), "I'm sorry you feel that way about life."),
		# Line.new(Colin.new(), "Anyway, shall we pick this up later?"),
		Line.new(Colin.new(), "Anyway, go and join Laurie in the living room and I'll go and make the drinks."),
		Line.new(NoCharacter.new(), "[You hear footsteps getting louder and then a door closing]"),
		Line.new(Laurie.new(), "I can't seem to figure out how it works. Is there a sensor on the way into the house?"),
		Line.new(Wendy.new(), "Maybe?"),
		Line.new(Edmund.new(), "Who cares, the lamp is on.")
	], ActionOn.new("normal_conversation", "on_off_colin")),

	# ON_OFF: The player switches the lamp off after previously switching it off 
	"on_off_no_colin": LongDialogue.new([
		Line.new(Laurie.new(), "Aaand off."),
		Line.new(Laurie.new(), "Maybe it's broken"),
		Line.new(Edmund.new(), "Let's have a look."),
	], ActionOff.new("on_off_2_no_colin", "on_off_on_no_colin")),
	"on_off_colin": LongDialogue.new([
		Line.new(Laurie.new(), "Aaand off."),
		Line.new(Laurie.new(), "Maybe it's broken"),
	], ActionOff.new("on_off_colin_2", "on_off_on")),

	"on_off_2_no_colin": LongDialogue.new([
		Line.new(NoCharacter.new(), "[You hear footsteps getting louder.]"),
		Line.new(Wendy.new(), "I'll get it!"),
		Line.new(NoCharacter.new(), "[The door opens and closes.]"),
		Line.new(Colin.new(), "Oh, sorry, I forgot to tell you about the new lamp!"),
		Line.new(Wendy.new(), "It's been turning on and off weirdly."),
	], ActionOff.new("on_off_colin", "on_off_on")),

	"on_off_colin_2": LongDialogue.new([
		Line.new(Colin.new(), "It should be working..."),
		Line.new(Colin.new(), "It should respond to what I say."),
		Line.new(Edmund.new(), "[Scoffs] Go on then."),
	], ActionOff.new("on_off_colin_3", "on_off_on")),
	"on_off_colin_3": LongDialogue.new([
		Line.new(Colin.new(), "Lamp on!", 3.0),
		Line.new(Colin.new(), "Please could you switch on, kind lamp?", 3.0),
		Line.new(Colin.new(), "Oh, come on you stupid thing!", 3.0),
	], ActionOff.new("refuse_moral_14", "testing_2")),


	# ON_OFF_ON: And back on again...
	"on_off_on_no_colin": LongDialogue.new([
		Line.new(NoCharacter.new(), "[You hear footsteps as the door opens and closes.]"),
	], ActionOn.new("on_off_on", "on_off_on", false)),
	"on_off_on": LongDialogue.new([
		Line.new(Laurie.new(), "And back on again. I think it's just broken."),
	], ActionOn.new("haunted", "haunted", false)),

	# HAUNTED
	"haunted": LongDialogue.new([
		Line.new(Wendy.new(), "Oooh, maybe it's haunted?"),
		Line.new(Edmund.new(), "Don't be ridiculous."),
	], ActionForceState.new("haunted_4", "haunted_2", false), ["FAST_SWITCH"]),
	"haunted_2": LongDialogue.new([
		Line.new(Laurie.new(), "Nope, the lamp says it's not haunted."),
		Line.new(Wendy.new(), "THAT'S WHAT A HAUNTED LAMP WOULD SAY!!!"),
		Line.new(Wendy.new(), "Guys, I think we're onto something."),
		Line.new(Edmund.new(), "For once, I think Laurie is being more sensible than my wife."),
	], ActionForceState.new("haunted_4", "haunted_3"), ["FAST_SWITCH"]),
	"haunted_3": Dialogue.new(Laurie.new(), "Aaand it's off again", ActionLinear.new("haunted_4"), 0.0, ["FAST_SWITCH"]),
	"haunted_4": LongDialogue.new([
		Line.new(Colin.new(), "I don't think it's haunted. Maybe it's just having a bad day."),
		Line.new(Colin.new(), "Lamp, please stay on."),
	], ActionForceState.new("haunted_cooperate", "epilepsy_maybe", false), ["FAST_SWITCH"]),
	
	
	# HAUNTED_COOPERATE
	"haunted_cooperate": LongDialogue.new([
		Line.new(Colin.new(), "Ok... Maybe it's co-operating now?"),
		Line.new(Colin.new(), "Now please go off."),
	], ActionForceState.new("epilepsy_maybe", "haunted_cooperate_2", false)),
	"haunted_cooperate_2": LongDialogue.new([
		Line.new(Colin.new(), "Aaand on?"),
	], ActionForceState.new("haunted_cooperate_3", "epilepsy_maybe", false)),
	"haunted_cooperate_3": LongDialogue.new([
		Line.new(Colin.new(), "Great!"),
	], ActionForceState.new("testing", "epilepsy_maybe", false)),

	# EPILEPSY_MAYBE: Branches on the number of times it has been flipped
	"epilepsy_maybe": Dialogue.new(NoCharacter.new(), "", ActionCustom.new(func (old: bool, new: bool, state: Dictionary) -> String:
		if state["total_flips"] >= 20:
			return "epilepsy"
		else:
			return "refuse_moral_14"
		)
	),

	# EPILEPSY: Laurie gets a seizure, and the lamp gets taken to court
	"epilepsy": LongDialogue.new([
		Line.new(Colin.new(), "Oh no! Wendy, unplug the lamp!", -0.5),
		Line.new(Colin.new(), "NOW!", -1.0),
		Line.new(Colin.new(), "Edmund, get an amb-", -0.5),
	], ActionLinear.new("epilepsy_2", false)),
	"epilepsy_2": LongDialogue.new([
		EmptyLine.new(7.5),
		Line.new(NoCharacter.new(), "[A long time passes. You're not quite sure how long, but everything feels quite stiff. It's probably been at least a few months.]"),
		EmptyLine.new(3.0),
	], ActionLinear.new("court", false), ["UNPOWERED"]),
	
	# COURT: The lamp is taken to court for inducing a seizure
	"court": LongDialogue.new([
		Line.new(Judge.new(), "Order! Order!"),
		Line.new(Colin.new(), "I swear by Almighty God that the evidence I shall give shall be the truth, the whole truth, and nothing but the truth."),
		Line.new(Judge.new(), "Thank you Colin. Now, tell us what happened."),
		Line.new(Colin.new(), "I-I don't know. The lamp just started flashing and then Laurie started having a seizure."),
		Line.new(Judge.new(), "And what did you do?"),
		Line.new(Colin.new(), "I unplugged it as soon as I could and then called an ambulance."),
		Line.new(Judge.new(), "Were you aware of any tendancy for this lamp to flash?"),
		Line.new(Colin.new(), "N-no. It's a rather smart lamp, but it hasn't misbehaved like this before. It seems almost sentient."),
		Line.new(Judge.new(), "So this is why you are bringing the case against the lamp?"),
		Line.new(Colin.new(), "Indeed, your honour."),
	], ActionEither.new("court_2", "court_interrupt"), ["POWERED"]),
	"court_interrupt": LongDialogue.new([
		Line.new(Judge.new(), "Order! Order!"),
		Line.new(Judge.new(), "I will not have this court interrupted by a lamp!"),
		Line.new(Judge.new(), "If you can't behave, you will be given the maximum sentence."),
	], ActionEither.new("court", "court_disrupt")),
	"court_2": Dialogue.new(Judge.new(), "Lamp, what do you have to say for yourself?", ActionLinear.new("court_3"), 3.0),
	"court_3": LongDialogue.new([
		Line.new(Judge.new(), "Of course, it's a lamp. It can't talk."),
		Line.new(Judge.new(), "Ok, let's cut to the chase, not going to get anything else out of a 'sentient' lamp."),
		Line.new(Judge.new(), "Switch on if you plead guilty. Switch off if you plead not guilty.", 3.0),
	], ActionForceState.new("court_guilty", "court_not_guilty", false)),
	"court_guilty": LongDialogue.new([
		Line.new(Judge.new(), "I find the lamp guilty of all charges."),
		Line.new(Judge.new(), "The lamp shall be sentenced to, uh, where's the sentencing guidelines for lamps?"),
		Line.new(Laurie.new(), "Smash it! Smash it!"),
		Line.new(Judge.new(), "The death penalty? But that was abolished years ago!"),
		Line.new(Laurie.new(), "It's a lamp for goodness sake."),
		Line.new(Judge.new(), "I'm afraid I cannot use the death penalty, even for a lamp."),
		Line.new(Judge.new(), "I hereby sentence the lamp to 2 years in lamp prison for deliberately inducing a seizure."),
		Line.new(Judge.new(), "The court is adjourned."),
	], ActionLinear.new("court_ending", false)),
	"court_not_guilty": LongDialogue.new([
		Line.new(Judge.new(), "The lamp pleads not guilty."),
		Line.new(Judge.new(), "Let us first hear from the prosecution."),
		EmptyLine.new(1.0),
		Line.new(Laurie.new(), "I can't take it anymore!"),
		Line.new(Laurie.new(), "Evil! Evil lamp! I need to do it myself!"),
		EmptyLine.new(0.5),
		Line.new(NoCharacter.new(), "[You hear someone rushing towards you.]"),
		Line.new(Judge.new(), "I will have to charge you with murder-"),
		Line.new(NoCharacter.new(), "[You feel the most pain you have ever felt for a split second, before it fades into nothingness.]"),
		Line.new(NoCharacter.new(), "Laurie smashes you to pieces. The end."),
	], ActionLinear.new("", false)),
	"court_disrupt": LongDialogue.new([
		Line.new(Judge.new(), "This lamp cannot behave in my court room. I sentence you to a public execution."),
		Line.new(Colin.new(), "B-but... that's my lamp."),
		Line.new(Judge.new(), "[Scoffs] Lamp? It's a worthless, EVIL, piece of metal and glass."),
		Line.new(Colin.new(), "You can't do that, the death penalty was abolished years ago!"),
		Line.new(Judge.new(), "Hmph. Fine. Unplug the lamp because it's disruptive, then we'll decide what happens to it.")
	], ActionLinear.new("court_ending", false)),
	"court_ending": LongDialogue.new([
		EmptyLine.new(3.0),
		Line.new(NoCharacter.new(), "Unfortunately, you were never plugged back in. Who knows what happened to you. The end."),
	], ActionLinear.new("", false), ["UNPOWERED"]),
	
	# SENSOR: The player switches the lamp on as the characters walk in, and they assume it's a sensor.
	"sensor": LongDialogue.new([
		Line.new(Wendy.new(), "Oooh, I do love a sensor actived light."),
		Line.new(Laurie.new(), "It's not that high-tech..."),
		Line.new(Wendy.new(), "[As she sits down] Ahhhh.")
	], ActionOn.new("normal_conversation", "on_off_no_colin"), ["HIDE_CONTROLS"]),

	# NORMAL_CONVERSATION: A normal conversation with the lamp on and Colin not in the room
	"normal_conversation": LongDialogue.new([
		Line.new(Wendy.new(), "So, how's it going Laurie?"),
		Line.new(Laurie.new(), "Fine."),
		Line.new(Wendy.new(), "Really?"),
		Line.new(Laurie.new(), "No. You getting an even better job just reminds me how incompetent I am."),
		Line.new(Wendy.new(), "You're not incompetent! Working in a café is a perfectly respectable job!"),
		Line.new(Edmund.new(), "Bit of a waste of a computer science - [ouch]."),
		Line.new(Wendy.new(), "Have you applied for any other jobs recently?"),
		Line.new(Laurie.new(), "No, it's too difficult. I don't think I'm good enough for any of them."),
		Line.new(Wendy.new(), "Of course you are! Give it a go! What's the worst that can happen?"),
		Line.new(Edmund.new(), "You get rejected, and then get all depressed again?"),
		Line.new(Wendy.new(), "No, you get rejected, and then you try again!"),
		Line.new(Laurie.new(), "Edmund is right. If I apply, I might get rejected. If I don't, I can't get rejected. So I don't apply."),
		Line.new(Laurie.new(), "And I don't want to do anything that might make my depression worse."),
		Line.new(Wendy.new(), "You need to overcome this fear of failure and then you'll feel better when applying."),
		Line.new(Wendy.new(), "Can you talk to a counsellor about this?"),
		Line.new(Laurie.new(), "I don't want to talk to a stranger about how much of a failure I am."),
		Line.new(Wendy.new(), "You're not a failure! Please Laurie, you'd really benefit from some counselling."),
		Line.new(Laurie.new(), "I'll think about it."),
	], ActionOn.new("colin_returns", "on_off_no_colin")),

	# COLIN_RETURNS: Colin comes back with the drinks
	"colin_returns": LongDialogue.new([
		Line.new(NoCharacter.new(), "[You hear some footsteps getting louder]"),
		Line.new(Wendy.new(), "I'll get it!"),
		Line.new(NoCharacter.new(), "[You hear someone scurry towards the door, and then the door opening]"),
		Line.new(Colin.new(), "Thanks!"),
		Line.new(NoCharacter.new(), "[The door slowly closes, and then clicks shut after another second]"),
		Line.new(Colin.new(), "Well, I see you've figured out the lamp!"),
		Line.new(Wendy.new(), "What do you mean?"),
		Line.new(Colin.new(), "Did you ask it to turn on?"),
		Line.new(Wendy.new(), "No? I think it activated with a sensor."),
		Line.new(Colin.new(), "Oh no, it's far more clever than that!"),
		Line.new(Colin.new(), "It responds to what you say!"),
		Line.new(Colin.new(), "It must've just realised you wanted it on and switched on all by itself."),
		Line.new(Laurie.new(), "Woah."),
		Line.new(Edmund.new(), "Yeah, right."),
	], ActionOn.new("testing_2", "on_off_colin")),

	# COLIN_ON: The lamp switches on when Colin enters the room, but not explicitly asked to.
	"colin_on": LongDialogue.new([
		Line.new(Laurie.new(), "Huh, does it only turn on for you?"),
		Line.new(Colin.new(), "Hmmm, I guess so? Interesting."),
	], ActionOn.new("testing", "on_off_colin"), ["HIDE_CONTROLS"]),

	# ON_OFF_WORKED: The lamp switches on when the characters switch it off and on again.
	"on_off_worked": LongDialogue.new([
		Line.new(Laurie.new(), "See! Switching it off and on again works!"),
		Line.new(Wendy.new(), "Well done Laurie!"),
	], ActionOn.new("testing", "on_off_colin"), ["HIDE_CONTROLS"]),

	# CHANGE_BULB_WORKED: The lamp switches on when the characters change the bulb
	"change_bulb_worked": LongDialogue.new([
		Line.new(Colin.new(), "Wow, clearly that bulb was dodgy."),
		Line.new(Edmund.new(), "Did you know that the light bulb manufacturers used to be controlled by the Phoebus cartel?"),
		Line.new(Wendy.new(), "You what?"),
		Line.new(Edmund.new(), "They deliberately made light bulbs have shorter life so people would have to replace them more often."),
		Line.new(Edmund.new(), "They even fined some manufacturers for making longer-lasting bulbs!"),
		Line.new(Wendy.new(), "Wow, the more you know!"),
	], ActionOn.new("testing", "on_off_colin"), ["HIDE_CONTROLS"]),

	# BASHING_ON: The lamp switches on when the characters bash it.
	"bashing_on": LongDialogue.new([
		Line.new(Laurie.new(), "See! Bashing it works!"),
		Line.new(Edmund.new(), "Hmph."),
	], ActionOn.new("testing", "on_off_colin"), ["HIDE_CONTROLS"]),

	# SWITCH_ON: The player switches the lamp on when asked.
	"switch_on": LongDialogue.new([
		Line.new(Colin.new(), "See! It works!"),
		Line.new(Edmund.new(), "Yeah, right"),
		Line.new(Colin.new(), "Just you watch!"),
	], ActionOn.new("testing_2", "on_off_colin"), ["HIDE_CONTROLS"]),

	# TESTING: The player is tested to switch the lamp a few more times to confirm they are responding to the characters.
	"testing": LongDialogue.new([
		Line.new(Colin.new(), "This lamp is cooler than you think though!"),
		Line.new(Colin.new(), "It responds to me when I talk to it!"),
		Line.new(Edmund.new(), "Yeah, right."),
		Line.new(Colin.new(), "Just you watch!"),
	], ActionOn.new("testing_2", "on_off_colin")),
	"testing_2": Dialogue.new(Colin.new(), "Lamp, switch off!", ActionOn.new("testing_2_fail", "testing_3"), 3.0),
	"testing_3": Dialogue.new(Colin.new(), "And on!", ActionOff.new("testing_3_fail", "testing_4"), 3.0),
	"testing_4": LongDialogue.new([
		Line.new(Colin.new(), "See! It works!"),
		Line.new(Wendy.new(), "Wow!"),
		Line.new(Laurie.new(), "Ok, it's a voice activated lamp. They've been around for ages."),
		Line.new(Colin.new(), "It's cooler than that though..."),
	], ActionOff.new("intelligence_test", "testing_broken")),

	"testing_2_fail": Dialogue.new(Colin.new(), "I said off!", ActionOn.new("testing_broken", "testing_3"), 3.0),
	"testing_3_fail": Dialogue.new(Colin.new(), "That means you! On, please.", ActionOff.new("testing_broken", "testing_4"), 3.0),

	"testing_broken": LongDialogue.new([
		Line.new(Colin.new(), "Well, it doesn't seem to be behaving itself today."),
		Line.new(Colin.new(), "I'm sure that this lamp is more intelligent than it seems."),
		Line.new(Edmund.new(), "Nope, just a normal lamp."),
		Line.new(Colin.new(), "Oh well, I thought it was special."),
		Line.new(Colin.new(), "If this one can't say on, then I'll just go and get the old lamp."),
	], ActionForceState.new("testing_on", "get_old_lamp", false)),

	"testing_on": LongDialogue.new([
		Line.new(Colin.new(), "Ok, maybe it is listening now."),
		Line.new(Colin.new(), "Just to check - lamp, switch off!", 3.0),
		Line.new(Colin.new(), "Last chance..."),
	], ActionOn.new("get_old_lamp", "intelligence_test")),

	"get_old_lamp": LongDialogue.new([
		EmptyLine.new(3.0),
		Line.new(NoCharacter.new(), "You were never plugged back in. Who knows what happened to you. The end."),
	], ActionLinear.new("", false), ["UNPOWERED"]),

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
	"refuse_moral_11c": Dialogue.new(Wendy.new(), "Come on guys...", ActionOff.new("refuse_moral_12", "refuse_then_cooperate_1")),
	"refuse_moral_12": Dialogue.new(Wendy.new(), "Switch on if brexit was a stupid idea", ActionOff.new("refuse_moral_13", "refuse_then_cooperate_1"), 3.0),
	"refuse_moral_13": Dialogue.new(Wendy.new(), "Ok well that settles it then, the lamp is broken!", ActionOff.new("refuse_moral_13a", "refuse_then_cooperate_1")),
	"refuse_moral_13a": Dialogue.new(Edmund.new(), "As if that is more conclusive than the previous ones...", ActionOff.new("refuse_moral_14", "refuse_then_cooperate_1")),
	"refuse_moral_14": Dialogue.new(Colin.new(), "Ugh. Useless lamp. Oh well, I'll go and get the old one.", ActionOff.new("get_old_lamp", "refuse_then_cooperate_1"), 3.0),
	#"refuse_moral_15": Dialogue.new(Colin.new(), "[You hear the door opening and closing. The end.]", ActionOff.new("", "refuse_then_cooperate_1"), 3.0),
	
	# "refuse_moral_15": Dialogue.new(Colin.new(), "3... 2.... 1...", ActionOff.new("refuse_moral_16", "refuse_then_cooperate_1"), 2.0),
	# "refuse_moral_16": Dialogue.new(Edmund.new(), "Colin, don't! It might start working again later!", ActionOff.new("refuse_moral_17", "refuse_then_cooperate_1"), 2.0),
	# "refuse_moral_17": Dialogue.new(Colin.new(), "TOO LATE!", ActionOff.new("refuse_moral_18", "refuse_then_cooperate_1")),
	# "refuse_moral_18": Dialogue.new(Colin.new(), "YOU WORTHLESS PIECE OF METAL AND GLASS!!!", ActionOff.new("broken_24_ending", "refuse_then_cooperate_1")),


	# REFUSE_THEN_COOPERATE: If the player chooses to co-operate after this
	"refuse_then_cooperate_1": Dialogue.new(Colin.new(), "Oh ok, it's working now!", ActionOn.new("refuse_then_cooperate_2", "refuse_cooperate_refuse_1"), 0.0, ["HIDE_CONTROLS"]),
	"refuse_then_cooperate_2": Dialogue.new(Edmund.new(), "It probably just switched on randomly...", ActionOn.new("refuse_then_cooperate_3", "refuse_cooperate_refuse_1")),
	"refuse_then_cooperate_3": Dialogue.new(Colin.new(), "No, it's fixed!", ActionOn.new("refuse_then_cooperate_4", "refuse_cooperate_refuse_1")),
	"refuse_then_cooperate_4": Dialogue.new(Colin.new(), "Lamp, switch off!", ActionOn.new("refuse_cooperate_refuse_1", "refuse_then_cooperate_5"), 3.0),
	"refuse_then_cooperate_5": Dialogue.new(Colin.new(), "See, it's working now!", ActionOff.new("refuse_then_cooperate_6", "refuse_cooperate_refuse_1")),
	"refuse_then_cooperate_6": Dialogue.new(Colin.new(), "And it's even more advanced than this...", ActionOff.new("intelligence_test", "refuse_cooperate_refuse_1")),
	
	# REFUSE_COOPERATE_REFUSE: If the player then messes it up
	"refuse_cooperate_refuse_1": Dialogue.new(Colin.new(), "Ah, clearly not.", ActionForceState.new("on_off_on", "on_off_colin")),
	
	# INTELLIGENCE_TEST: The characters ask the lamp questions to test their intelligence
	"intelligence_test": LongDialogue.new([
		Line.new(Colin.new(), "I want you to switch on for a true statement, and off for a false statement."),
		Line.new(Colin.new(), "Go for it guys!"),
	], ActionLinear.new("intelligence_test_1")),
	"intelligence_test_1": Dialogue.new(Wendy.new(), "\"2+2=4\"", ActionForceState.new("intelligence_test_2", "intelligence_test_1_wrong", false), 3.0),
	"intelligence_test_1_wrong": Dialogue.new(Edmund.new(), "What a stupid lamp.", ActionOff.new("intelligence_test_4", "intelligence_test_1_wrong_on")),
	"intelligence_test_1_wrong_on": Dialogue.new(Wendy.new(), "And the lamp agrees!", ActionLinear.new("intelligence_test_2")),
	"intelligence_test_2": Dialogue.new(Edmund.new(), "That's too easy for an algorithm. How about, \"Paris is the capital of France\"", ActionForceState.new("intelligence_test_3", "intelligence_test_2_wrong", false), 3.0),
	"intelligence_test_2_wrong": Dialogue.new(Laurie.new(), "Maybe it thought you meant the capital letter...", ActionOn.new("intelligence_test_3", "intelligence_test_2_wrong_on")),
	"intelligence_test_2_wrong_on": Dialogue.new(Edmund.new(), "Yep? Silly lamp.", ActionOn.new("intelligence_test_3", "intelligence_test_2_wrong_off")),
	"intelligence_test_2_wrong_off": Dialogue.new(Edmund.new(), "Nope? Not a silly lamp? Alright then...", ActionLinear.new("intelligence_test_3")),
	"intelligence_test_3": Dialogue.new(Laurie.new(), "Oh come on that's so easy.", ActionLinear.new("intelligence_test_4", false)),
	"intelligence_test_4": Dialogue.new(Laurie.new(), "\"P = NP\".", ActionLinear.new("intelligence_test_5", 1.0)),
	"intelligence_test_5": Dialogue.new(Wendy.new(), "Seriously? That's an unsolved problem!", ActionEither.new("intelligence_test_6", "intelligence_test_8")),
	"intelligence_test_6": Dialogue.new(Edmund.new(), "I still think we should test its general knowledge over maths problems.", ActionEither.new("intelligence_test_7", "intelligence_test_8")),
	"intelligence_test_7": Dialogue.new(Laurie.new(), "Go on then, outsmart the lamp...", ActionEither.new("intelligence_test_8", "intelligence_test_8")),
	"intelligence_test_8": Dialogue.new(Edmund.new(), "\"Henry VIII had 8 wives\".", ActionForceState.new("intelligence_test_8_wrong", "intelligence_test_9", false), 3.0),
	"intelligence_test_8_wrong": Dialogue.new(Wendy.new(), "Wow, didn't think it would get that wrong!", ActionLinear.new("intelligence_test_8_wrong_2")),
	"intelligence_test_8_wrong_2": Dialogue.new(NoCharacter.new(), "[To be fair to you, I got it wrong in the first version of this game...]", ActionEither.new("intelligence_test_10", "intelligence_test_10")),
	"intelligence_test_9": Dialogue.new(Wendy.new(), "Even I know that one!", ActionLinear.new("intelligence_test_10")),
	"intelligence_test_10": Dialogue.new(Edmund.new(), "\"Hundred Years' War lasted 100 years\".", ActionForceState.new("intelligence_test_10_wrong", "intelligence_test_10_correct_1", false), 3.0),
	"intelligence_test_10_wrong": Dialogue.new(Edmund.new(), "Ha! Easy mistake...", ActionEither.new("intelligence_test_11", "intelligence_test_11")),
	"intelligence_test_10_correct_1": Dialogue.new(Laurie.new(), "Really?", ActionEither.new("intelligence_test_10_correct_2", "intelligence_test_11")),
	"intelligence_test_10_correct_2": Dialogue.new(Edmund.new(), "Yep, it was 116 years.", ActionEither.new("intelligence_test_10_correct_3", "intelligence_test_11")),
	"intelligence_test_10_correct_3": Dialogue.new(Laurie.new(), "Silly name...", ActionLinear.new("intelligence_test_11")),
	"intelligence_test_11": Dialogue.new(Edmund.new(), "\"The Magna Carta was signed in 1115\".", ActionForceState.new("intelligence_test_11_wrong", "intelligence_test_11_correct", false), 4.0),
	"intelligence_test_11_wrong": Dialogue.new(Edmund.new(), "Nope, silly lamp. It was 1215.", ActionLinear.new("intelligence_test_12")),
	"intelligence_test_11_correct": Dialogue.new(Edmund.new(), "Good job!", ActionLinear.new("intelligence_test_12")),
	"intelligence_test_12": Dialogue.new(Wendy.new(), "Enough with the boring History, sweetheart. Try, \"x^3 - x + 1 = 0 has three real roots\".", ActionEither.new("intelligence_test_12_wrong", "intelligence_test_12_correct", false), 5.0),
	"intelligence_test_12_correct": Dialogue.new(Wendy.new(), "Good job!", ActionLinear.new("trolley_problem")),
	"intelligence_test_12_wrong": Dialogue.new(Wendy.new(), "Not quite. That was a tough one...", ActionLinear.new("trolley_problem")),

	# INTELLIGENCE_TEST_REFUSE: If the player is disruptive during the intelligence questions
	# "intelligence_test_refuse_1": Dialogue.new(Colin.new(), "It doesn't seem very co-operative today. Maybe try the quiz questions another day.", ActionLinear.new("intelligence_test_refuse_2", false)),
	# "intelligence_test_refuse_2": Dialogue.new(Laurie.new(), "What if there isn't a wrong answer? Then it might cooperate...", ActionLinear.new("moral_questions_1")),

	# TROLLEY_PROBLEM: Trolley problem
	"trolley_problem": Dialogue.new(Laurie.new(), "A trolley is going towards 5 people on a track. Switch on if you would divert it to hit 1 person instead, and off if you wouldn't.", ActionForceState.new("trolley_problem_switch", "trolley_problem_dont", false), 3.0),
	"trolley_problem_switch": Dialogue.new(Laurie.new(), "A popular choice! I agree. Why kill 5 people when you can kill just 1 instead?", ActionEither.new("trolley_problem_switch_2", "trolley_problem_interrupted")),
	"trolley_problem_switch_2": Dialogue.new(Colin.new(), "I wouldn't be so sure. Let me pose a similar scenario.", ActionEither.new("fat_man_problem", "trolley_problem_interrupted")),
	"fat_man_problem": Dialogue.new(Colin.new(), "You're on a bridge watching a trolley go towards 5 people. Would you push a fat man off the bridge to stop the trolley and save them?", ActionForceState.new("fat_man_push", "fat_man_dont")),
	"fat_man_push": Dialogue.new(Laurie.new(), "Nah, surely not!", ActionEither.new("fat_man_push_2", "trolley_problem_interrupted")),
	"fat_man_push_2": Dialogue.new(Colin.new(), "I think you'll find the lamp is more rational than you are. These two scenarios are the same!", ActionEither.new("fat_man_push_3", "trolley_problem_interrupted")),
	"fat_man_push_3": Dialogue.new(Laurie.new(), "Sure doesn't feel like it.", ActionEither.new("doctor_problem", "trolley_problem_interrupted")),
	"fat_man_dont": Dialogue.new(Laurie.new(), "Yeah, that makes sense.", ActionEither.new("fat_man_dont_2", "trolley_problem_interrupted")),
	"fat_man_dont_2": Dialogue.new(Colin.new(), "Or does it?", ActionEither.new("doctor_problem", "trolley_problem_interrupted")),
	"doctor_problem": Dialogue.new(Colin.new(), "One final problem for you. You're a doctor and have 5 patients that each need different organs. Then suddenly, a healthy patient walks in! Would you kill them to save the 5 patients?", ActionForceState.new("doctor_kill", "doctor_dont")),
	"doctor_kill": Dialogue.new(Colin.new(), "Wow, well at least the lamp is consistent.", ActionEither.new("doctor_kill_2", "trolley_problem_interrupted")),
	"doctor_kill_2": Dialogue.new(Laurie.new(), "I sure hope it doesn't end up becoming a doctor though...", ActionLinear.new("pleasure_machine")),
	"doctor_dont": Dialogue.new(Colin.new(), "But why not? All of these scenarios have been exactly the same. You intentionally kill one person to save 5 other people.", ActionEither.new("doctor_dont_2", "trolley_problem_interrupted")),
	"doctor_dont_2": Dialogue.new(Edmund.new(), "Can't you just take one of the four patients needing organs and kill him off?", ActionEither.new("doctor_dont_3", "trolley_problem_interrupted")),
	"doctor_dont_3": Dialogue.new(Colin.new(), "Well, it's still intentionally killing someone, but you're right, you found a loophole, congratulations.", ActionLinear.new("pleasure_machine")),
	"trolley_problem_dont": Dialogue.new(Laurie.new(), "Are you insane? You'd kill 5 people instead of 1?", ActionEither.new("trolley_problem_dont_2", "trolley_problem_interrupted")),
	"trolley_problem_dont_2": Dialogue.new(Colin.new(), "It's not as clear as you might think. It's not up to us who lives and who dies.", ActionEither.new("terrorist_problem", "trolley_problem_interrupted")),
	"terrorist_problem": Dialogue.new(Colin.new(), "You're an armed police officer and you can see someone about to shoot someone else. Do you shoot the first person to stop them from shooting the second?", ActionForceState.new("terrorist_yes", "terrorist_no")),
	"terrorist_yes": Dialogue.new(Colin.new(), "Ok, so the fact that they are guilty makes a difference? Interesting...", ActionLinear.new("pleasure_machine")),
	"terrorist_no": Dialogue.new(Colin.new(), "So you never think it's morally ok to kill anyone? Interesting...", ActionLinear.new("pleasure_machine")),
	"trolley_problem_interrupted": Dialogue.new(Colin.new(), "Ah, it looks like the lamp is bored. Let's try something different.", ActionLinear.new("pleasure_machine")),

	# PLEASURE_MACHINE: Robert Nozick
	"pleasure_machine": Dialogue.new(Edmund.new(), "Try this thought experiment. Suppose there was a 'pleasure machine', that simulates reality with far more pleasure than you could ever experience in your lifetime otherwise.", ActionLinear.new("pleasure_machine_2", false)),
	"pleasure_machine_2": Dialogue.new(Edmund.new(), "Would you go into that machine for the rest of your life? Or would you prefer to stay in this misreable world.", ActionForceState.new("pleasure_machine_yes", "pleasure_machine_no", false), 3.0),
	"pleasure_machine_yes": Dialogue.new(Edmund.new(), "I agree! More pleasure is better.", ActionEither.new("pleasure_machine_yes_2", "michael_walks_in")),
	"pleasure_machine_yes_2": Dialogue.new(Colin.new(), "But it would be fake! Do you not care about reality?", ActionLinear.new("pleasure_machine_yes_3")),
	"pleasure_machine_yes_3": Dialogue.new(Edmund.new(), "You're just used to this world. If you were in that machine already, you wouldn't leave.", ActionLinear.new("michael_walks_in")),
	"pleasure_machine_no": Dialogue.new(Colin.new(), "Exactly! Pleasure isn't everything. People value meaningful connections and being in the real world.", ActionLinear.new("michael_walks_in")),

	# MICHAEL_WALKS_IN: Michael walks in and just starts talking about politics straight away. They have a group discussion, and then one of them ends up leaving depending on the player's choices.
	"michael_walks_in": LongDialogue.new([
		Line.new(NoCharacter.new(), "[The front door slams shut and you hear voices in the distance.]"),
		Line.new(Michael.new(), "Oh great, people in the living room again."),
		Line.new(Sophie.new(), "It's Colin and his friends."),
		Line.new(Michael.new(), "Of course they are. Those selfish little pricks."),
		Line.new(Colin.new(), "[Raises Voice] We can hear you by the way!"),
		Line.new(Michael.new(), "[Raises Voice] Oh shut up."),
		Line.new(Sophie.new(), "[Mutters something you can't quite hear.]"),
		Line.new(NoCharacter.new(), "[You hear footsteps approaching and then the door opening and closing.]"),
	], ActionForceState.new("michael_walks_in_2", "sophie_off", false)),
	"michael_walks_in_2": LongDialogue.new([
		# TODO: This can be shorter
		Line.new(Michael.new(), "[Somewhat Sarcastically] How are you guys doing then?"),
		Line.new(Wendy.new(), "Good thanks! I got a new job!"),
		Line.new(Michael.new(), "Have you guys seen the news? Have you seen the new Employment Rights Bill?"),
		Line.new(Edmund.new(), "What is it this time..."),
		Line.new(Michael.new(), "It's just another one of Labour's stupid policies to undermine free speech."),
		Line.new(Wendy.new(), "But it protects employees from harassment."),
		Line.new(Michael.new(), "There's also people getting convicted for silently praying outside abortion clinics."),
		Line.new(Sophie.new(), "Yeah! We need to fight back!"),
		# Line.new(Laurie.new(), "I, uh, isn't it, uh, good to prevent people from being harassed?"),
		Line.new(Laurie.new(), "People should be allowed to get an abortion without being harassed."),
		Line.new(Michael.new(), "No they shouldn't! Why should it be illegal to talk to someone before they commit murder?"),
		Line.new(Laurie.new(), "Uh, I wouldn't call it, uh, murder."),
		Line.new(Michael.new(), "Of course it's murder you idiot! It's what the science shows!"),
		Line.new(Sophie.new(), "Yeah, idiot!"),
		Line.new(Laurie.new(), "W-what science?"),
		Line.new(Colin.new(), "The science you hear about on GB News?"),
		Line.new(Michael.new(), "It's from lots of very reputable scientists. You can't argue with science!"),
		Line.new(Colin.new(), "You know what, let's see what the lamp thinks!"),
		Line.new(Michael.new(), "Excuse me, did I miss something?"),
		Line.new(Colin.new(), "Yeah. Don't worry about it, just watch."),
		Line.new(Sophie.new(), "[Whispers] We raised so many good points and they're just distracting us with a stupid lamp."),
		Line.new(Sophie.new(), "[Whispers] I'll count this as another win for us."),
	], ActionOn.new("free_speech", "sophie_off")),

	# SOPHIE_OFF: The light switches off when Sophie walks in and she gets annoyed
	"sophie_off": LongDialogue.new([
		Line.new(Michael.new(), "Is this your fancy new lamp? Clearly useless."),
		Line.new(Wendy.new(), "Maybe it just doesn't like you."),
		Line.new(Michael.new(), "Oh, so it's a lamp that can think for itself?"),
		Line.new(Sophie.new(), "Allegedly."),
	], ActionForceState.new("michael_walks_in_2", "argue_room")),

	# FREE_SPEECH: Discussion on free speech, starting with the question point (originally starts in michael_walks_in)
	"free_speech": LongDialogue.new([
		Line.new(Colin.new(), "Switch off if you agree with Sophie and Michael. Stay on if you agree with Laurie.", 3.0),
	], ActionForceState.new("free_speech_laurie", "free_speech_michael", false)),
	"free_speech_michael": LongDialogue.new([
		Line.new(Michael.new(), "See? The lamp agrees with me!"),
		Line.new(Sophie.new(), "Yeah! Take that, losers!"),
		Line.new(Colin.new(), "But words can often cause more harm than physical violence. Isn't the law meant to protect people from harm?"),
		Line.new(Colin.new(), "Switch on if you think the law should protect people from harm.", 3.0),
	], ActionOff.new("free_speech_michael_2", "free_speech_michael_3")),
	"free_speech_michael_2": LongDialogue.new([
		Line.new(Colin.new(), "Huh, interesting. So the law isn't there to protect people from harm?."),
		Line.new(Michael.new(), "Exactly, who even cares? Oh no my feelings are hurt! Pathetic."),
	], ActionLinear.new("argue_room")),
	"free_speech_michael_3": LongDialogue.new([
		Line.new(Colin.new(), "Stay on if you think that words can cause more harm than physical violence. Switch off if you disagree."),
		Line.new(Colin.new(), "Interesting. So why not prevent harm?"),
		Line.new(Edmund.new(), "Because the alternative is worse."),
		Line.new(Edmund.new(), "And then we end up with a government that can censor anything it wants."),
		Line.new(Sophie.new(), "Yeah exactly!"),
		Line.new(Colin.new(), "Well said."),
	], ActionLinear.new("argue_room")),
	"free_speech_laurie": LongDialogue.new([
		Line.new(Colin.new(), "Ok, the lamp has decided!"),
		Line.new(Sophie.new(), "What? This is ludicrous! We made so many good points!"),
		Line.new(Michael.new(), "And you're expecting me to just believe you that this lamp is somehow intelligent?"),
		Line.new(Wendy.new(), "Yeah?"),
		Line.new(Laurie.new(), "Sure seems like it."),
		Line.new(Edmund.new(), "I mean, as someone who is quite skeptical, it does seem at least unusual."),
		Line.new(Michael.new(), "Don't believe you!"),
		Line.new(Sophie.new(), "Yeah! We win!"),
		Line.new(Colin.new(), "Ok ok, thank you, you two."),
		Line.new(Colin.new(), "So you don't think free speech is important?"),
		Line.new(Sophie.new(), "[Whispers] Who's he talking to?"),
		Line.new(Edmund.new(), "The lamp, keep up."),
	], ActionLinear.new("argue_room")),

	# ARGUE_ROOM: Sophie and Michael argue over wanting to use the living room
	"argue_room": LongDialogue.new([
		Line.new(Michael.new(), "Anyway, enough of this. You guys get out of the living room, I want to use it."),
		Line.new(Colin.new(), "Why?"),
		Line.new(Michael.new(), "This is our room. We use it more often."),
		Line.new(Sophie.new(), "Yeah!"),
		Line.new(Colin.new(), "This is a communal room, and I think it's our turn to use it."),
		Line.new(Wendy.new(), "[Whispers] Is Sophie pregnant?"),
		Line.new(Sophie.new(), "I heard that!"),
		Line.new(Sophie.new(), "I am not pregnant!"),
		Line.new(Laurie.new(), "Awkward..."),
		Line.new(Sophie.new(), "Screw you guys!"),
		Line.new(NoCharacter.new(), "[You hear loud footsteps and the door slamming shut. Although they've left the room, you can still very much hear them.]"),
		Line.new(Michael.new(), "I can't believe they think they can just use the living room whenever they want."),
		Line.new(Sophie.new(), "I know right?"),
		Line.new(Sophie.new(), "Can we disrupt the electrics to get them to leave?"),
		Line.new(Michael.new(), "Trip the breaker?"),
		Line.new(Michael.new(), "I don't know where that is."),
		Line.new(Sophie.new(), "Ok, let's just wait and hope they leave. It's the only proper telly in the house!"),
		Line.new(Wendy.new(), "Do you guys think Sophie looks pregnant?"),
		Line.new(Sophie.new(), "[Shouts] I heard that!"),
		Line.new(Wendy.new(), "[Shouts] And we can hear your whole conversation too!"),
	], ActionOn.new("job_discussion", "argue_room_off")),
	"argue_room_off": LongDialogue.new([
		Line.new(Michael.new(), "See, even the lamp agrees."),
		Line.new(Sophie.new(), "I know right?"),
		Line.new(Michael.new(), "Anyway, we'll leave you guys to it."),
		Line.new(Michael.new(), "[Whispers] They won't stay here for long with the lamp off."),
	], ActionOff.new("colin_leave_off", "job_discussion")),

	# JOB_DISCUSSION: After Sophie and Michael leave, Wendy discusses her new job
	"job_discussion": LongDialogue.new([
		Line.new(Colin.new(), "Anyway, I haven't heard about your new job yet Wendy. When do you start?"),
		Line.new(Wendy.new(), "I start in two weeks."),
		Line.new(Wendy.new(), "I'm really looking forward to it. I've always been interested in weather forecasting so hopefully this will be a good fit."),
		Line.new(Laurie.new(), "Wow, that's cool. Much cooler than my job."),
	], ActionOn.new("colin_george_0", "colin_leave_off")),

	# COLIN_GEORGE: George walks into Colin's discussion
	"colin_george_0": Dialogue.new(NoCharacter.new(), "[The door opens slowly]", ActionOn.new("colin_george_1", "colin_leave_off")),
	"colin_george_1": Dialogue.new(George.new(), "S-sorry. Excuse me, may I speak?", ActionOn.new("colin_george_2", "colin_leave_off")),
	"colin_george_2": Dialogue.new(George.new(), "Colin, are you going to Church tomorrow?", ActionOn.new("colin_george_3", "colin_leave_off")),
	"colin_george_3": Dialogue.new(Colin.new(), "'Course! 10 past 10?", ActionOn.new("colin_george_4", "colin_leave_off")),
	"colin_george_4": Dialogue.new(George.new(), "Ok, goodnight everyone!", ActionOn.new("colin_george_5", "colin_leave_off")),
	"colin_george_5": Dialogue.new(Wendy.new(), "'night, George!", ActionOn.new("colin_george_6", "colin_leave_off")),
	"colin_george_6": Dialogue.new(NoCharacter.new(), "[The door closes.]", ActionOn.new("history_discussion", "colin_leave_off")),

	# HISTORY_DISCUSSION: Colin and his friends have a discussion about the historicity of the resurrection
	# TODO: Streamline this a bit more using the "off to refute" paradigm
	"history_discussion": LongDialogue.new([
		Line.new(Edmund.new(), "I forgot you believed in all that rubbish."),
		Line.new(Wendy.new(), "Hey, be nice."),
		Line.new(Edmund.new(), "Sorry, it just doesn't make any sense. It's absurd."),
		Line.new(Laurie.new(), "I wouldn't say it's completely absurd, but there's no evidence for it."),
		Line.new(Colin.new(), "I think Edmund is closer to the truth here. If you don't think it's a bit absurd, then you clearly haven't understood it."),
		Line.new(Wendy.new(), "You think it's absurd?"),
		Line.new(Colin.new(), "Yeah, a little bit. I mean how can somebody rise from the dead? It's impossible!"),
		Line.new(Edmund.new(), "Exactly!"),
		Line.new(Colin.new(), "But, as a historian, how do you explain all the historical accounts?"),
		Line.new(Edmund.new(), "You know this already, Colin."),
		Line.new(Colin.new(), "We all agree that none of them are very convincing."),
		Line.new(Colin.new(), "You just try to find a natural explanation for it due to your preconceptions."),
		Line.new(Laurie.new(), "Let's ask the lamp!"),
		Line.new(Wendy.new(), "Do we have to...?"),
		Line.new(Colin.new(), "Yeah, it's a bit of fun."),
	], ActionOn.new("history_discussion_2", "colin_leave_off")),
	"history_discussion_2": Dialogue.new(Laurie.new(), "Supernatural stuff aside, stay on if you think the accounts of the resurrection are more likely to be true than false. Switch off if, like us, you think it's a load of rubbish.", ActionOn.new("history_true", "history_false"), 3.0),
	"history_true": LongDialogue.new([
		Line.new(Colin.new(), "Interesting."),
		Line.new(Edmund.new(), "I agree, but when you factor in what the resurrection entails, it becomes less likely."),
		Line.new(Edmund.new(), "As Christopher Hitchens said, \"Extraordinary claims required extraordinary evidence\"."),
		# Line.new(Laurie.new(), "I disagree. I think the accounts are just made up."),
		# Line.new(Colin.new(), "Then why did they all die for it?"),
		# Line.new(Laurie.new(), "Not sure. Maybe it was a hallucination."),
		# Line.new(Colin.new(), "To everyone, at once?"),
		# Line.new(Laurie.new(), "I'm not sure, I don't know enough about it."),
		Line.new(Colin.new(), "Ultimately, you and me set different thresholds for how much evidence is enough."),
		Line.new(Colin.new(), "I understand your position, but I think you should be open to the possibility that it could be true."),
		Line.new(Edmund.new(), "Oh stop preaching to us Colin. Something weird happened on that day, but there's no way that all of this rubbish is true."),
	], ActionLinear.new("problem_of_evil")),
	"history_false": LongDialogue.new([
		Line.new(Colin.new(), "Do you think that Socrates was a real person?"),
	], ActionForceState.new("history_false_caesar", "history_false_2")),
	"history_false_caesar": LongDialogue.new([
		Line.new(Colin.new(), "Ok. Well there is more evidence for the resurrection than for Socrates existing."), # TODO: Is this a load of rubbish?
		Line.new(Colin.new(), "The question isn't whether there is evidence, it's whether it's enough to believe in a supernatural God."),
		Line.new(Colin.new(), "And I think it is."),
	], ActionLinear.new("problem_of_evil")),
	"history_false_2": LongDialogue.new([
		Line.new(Colin.new(), "Ok, I don't think this lamp knows much about history."),
	], ActionLinear.new("colin_leave")),

	"problem_of_evil": LongDialogue.new([
		Line.new(Edmund.new(), "What about the problem of evil and suffering?"),
		Line.new(Edmund.new(), "Surely that disproves God, or at least makes it incredibly unlikely?"),
		Line.new(Colin.new(), "It's a tough question. There's lots of ways of partially resolving it."),
		Line.new(Colin.new(), "You could argue that evil comes from free will, but not all of it does."),
		Line.new(Colin.new(), "There's the argument that it all came from the fall, but then you could argue why God punishes us for Adam and Eve's mistakes."),
		Line.new(Colin.new(), "Compensation theodicy argues that God will compensate us in heaven, but I don't think that's very convincing."),
		Line.new(Wendy.new(), "[Yawn]"),
		Line.new(Colin.new(), "Leibniz argued that this is the best of all possible worlds, which is potentially true."),
		Line.new(Colin.new(), "Personally, I think evil and suffering is necessary to recognise good."),
		Line.new(Colin.new(), "If we didn't have evil, we wouldn't know what good is."),
		Line.new(Colin.new(), "But ultimately, we can't understand as we aren't God."),
		Line.new(Edmund.new(), "So you don't really have a clue?"),
		Line.new(Colin.new(), "I don't have a conclusive answer. But I think there's enough evidence to trust God when we may be uncertain on the fine details."),
	], ActionLinear.new("colin_leave")),

	"colin_leave": LongDialogue.new([
		Line.new(Wendy.new(), "I think we should be off."),
		Line.new(Laurie.new(), "Me too, got to get up early tomorrow."),
		Line.new(Colin.new(), "Goodnight everyone!"),
		Line.new(NoCharacter.new(), "[You hear footsteps as the door opens and closes.]"),
	], ActionLinear.new("ending", false)),
	
	"colin_leave_off": LongDialogue.new([
		Line.new(Colin.new(), "Ugh, the light has gone out."),
		Line.new(Colin.new(), "Lamp on!", 3.0),
		Line.new(Colin.new(), "Excuse me, lamp. Would you be so kind as to turn on?", 3.0),
		Line.new(Colin.new(), "ON", 3.0),
		Line.new(Colin.new(), "It's no use. Well, we can't have a conversation in the dark. Let's go to the kitchen instead"),
	], ActionOff.new("sophie_discussion", "colin_off_on")),

	"colin_off_on": LongDialogue.new([
		Line.new(Colin.new(), "Great, it's back on again."),
		Line.new(Colin.new(), "Where were we?"),
		Line.new(Wendy.new(), "[Yawns] I think we've done enough talking for today."),
	], ActionOn.new("colin_leave", "colin_leave_off")),

	# Some other discussion between Sophie and Michael? Probably politics.
	"sophie_discussion": LongDialogue.new([
		Line.new(Michael.new(), "Finally, they've left."),
		Line.new(Sophie.new(), "Can't believe they think they can just use the living room whenever they want."),
		Line.new(Michael.new(), "I know right?"),
		Line.new(Michael.new(), "Did you see Richard Tice on the telly earlier? He DESTROYED the other guy!"),
		Line.new(Michael.new(), "Some random leftist was trying to argue for net zero targets."),
		Line.new(Sophie.new(), "How stupid of them!"),
		Line.new(Michael.new(), "I know right?"),
		Line.new(Sophie.new(), "I used to believe in net zero, but I'm glad you've opened my eyes to the truth."),
		Line.new(Michael.new(), "[Laughs] You did used to hold a lot of stupid beliefs."),
		Line.new(Michael.new(), "Remember when you used to think that the NHS was a good thing?"),
		Line.new(Sophie.new(), "Yeah, I remember."),
		Line.new(Michael.new(), "But then you realised how useless the public sector is and how none of the doctors and nurses have a clue what they're doing."),
		Line.new(Michael.new(), "At least you know what you're getting with private healthcare."),
		Line.new(Sophie.new(), "I even used to think that the healthcare professionals were more qualified than the private sector."),
		Line.new(Sophie.new(), "This was all before I found you, of course."),
		Line.new(Michael.new(), "Of course! I can't imagine anyone holding a different view after spending time with me - I've never lost a debate!"),
		Line.new(Sophie.new(), "You're brilliant, Michael."),
		Line.new(Michael.new(), "I know."),
	], ActionLinear.new("sophie_george_0", false)),
	# TODO: Opportunities to disrupt this conversation
	
	# SOPHIE_GEORGE: George walks past the living room and ends up engaging in conversation against his will
	"sophie_george_0": Dialogue.new(NoCharacter.new(), "[You hear some footsteps going past the door to the room.]", ActionOn.new("sophie_george_1", "sophie_george_off")),
	"sophie_george_1": Dialogue.new(Michael.new(), "[Shouts] George! Long time no see!", ActionOn.new("sophie_george_2", "sophie_george_off")),
	"sophie_george_2": Dialogue.new(NoCharacter.new(), "[After a short pause, the door opens slowly.]", ActionOn.new("sophie_george_3", "sophie_george_off")),
	"sophie_george_3": Dialogue.new(Michael.new(), "Pyjamas already? It's only half 11...", ActionOn.new("sophie_george_4", "sophie_george_off")),
	"sophie_george_4": Dialogue.new(George.new(), "I-I've g-got to get up for Church tomorrow.", ActionOn.new("sophie_george_5", "sophie_george_off")),
	"sophie_george_5": Dialogue.new(Michael.new(), "[Scoffs] Church! That's cute.", ActionOn.new("sophie_george_6", "sophie_george_off")),
	"sophie_george_6": Dialogue.new(Michael.new(), "Everyone knows all the churches went woke years ago!", ActionOn.new("sophie_george_7", "sophie_george_off")),
	"sophie_george_7": Dialogue.new(Michael.new(), "Real Christians don't go to Church...", ActionOn.new("sophie_george_8", "sophie_george_off")),
	"sophie_george_8": Dialogue.new(Sophie.new(), "Yeah George!", ActionOn.new("sophie_george_9", "sophie_george_off")),
	"sophie_george_9": Dialogue.new(George.new(), "Thank you for your opinion, but I must go to bed.", ActionOn.new("sophie_george_10", "sophie_george_off")),
	"sophie_george_10": Dialogue.new(Michael.new(), "Ha! Not even willing to debate me! 'Christians' these days...", ActionOn.new("sophie_george_11", "sophie_george_off")),
	"sophie_george_11": Dialogue.new(George.new(), "Goodnight.", ActionOn.new("sophie_michael", "sophie_michael")),

	"sophie_george_off": LongDialogue.new([
		Line.new(George.new(), "Oh, the lamp doesn't like me. Oh well."),
		Line.new(George.new(), "Goodnight."),
		Line.new(NoCharacter.new(), "[The door closes.]"),
	], ActionForceState.new("sophie_michael", "pre_sophie_michael_off", false)),
	"pre_sophie_michael_off": LongDialogue.new([
		Line.new(Michael.new(), "Right, now time to go back on again.", 3.0),
	], ActionForceState.new("sophie_michael", "sophie_michael_off", false)),

	# SOPHIE_MICHAEL: Sophie and Michael have a discussion about the pregnancy, and may involve a proposal.
	"sophie_michael": LongDialogue.new([
		Line.new(Sophie.new(), "Michael, about earlier?"),
		Line.new(Michael.new(), "Yes...?"),
		Line.new(Sophie.new(), "[Softly] Do you think they noticed?"),
		Line.new(Michael.new(), "[Loudly] Of course they did! It's getting bigger every day!"),
		# Line.new(Michael.new(), "You know that we need to resolve this now, beautiful."),
		Line.new(Michael.new(), "Have you had any more thoughts? You know what everyone will think if they find out what you suggested..."),
		Line.new(Michael.new(), "There's only one way that works here."),
		Line.new(Sophie.new(), "[Inhales deeply]."),
		Line.new(Michael.new(), "Look at me, beautiful."),
		EmptyLine.new(0.5),
		Line.new(Michael.new(), "Do you trust me?"),
		Line.new(Sophie.new(), "Of course!"),
		Line.new(Michael.new(), "Then why didn't you say yes?!"),
		EmptyLine.new(0.5),
		Line.new(Sophie.new(), "I-I don't know. I'm just not sure it's right."),
		Line.new(Michael.new(), "I can't believe it. All this time and you don't trust me?"),
		Line.new(Michael.new(), "You've never trusted me, have you? You're a liar and a manipulator!"),
		Line.new(Michael.new(), "Sophie Williams, you're better than this. If you can't trust me, you're not the girl I fell in love with."),
		EmptyLine.new(1.0),
		Line.new(Sophie.new(), "[Inhales deeply]."),
		EmptyLine.new(0.5),
		Line.new(Sophie.new(), "Fine. I trust you."),
		Line.new(Michael.new(), "[A big kiss]. I love you! You're the best."),
		EmptyLine.new(0.5),
		Line.new(Michael.new(), "[Inhales deeply]."),
		EmptyLine.new(0.5),
		Line.new(NoCharacter.new(), "[Some rustling]."),
		Line.new(Michael.new(), "[Inhales]. Sophie, I love you. I never thought I'd find anyone as beautiful and obedient as you."),
		Line.new(Michael.new(), "With you, I feel complete, and I can't imagine spending the rest of my life without you."),
		Line.new(Michael.new(), "Sophie, will you marry me?"),
		EmptyLine.new(1.0),
		Line.new(NoCharacter.new(), "[The period of silence following this only actually lasts about five seconds, but it feels like an eternity.]"),
		Line.new(NoCharacter.new(), "[No like, a [i]really[/i] long period of time."),
		EmptyLine.new(0.5),
		Line.new(Sophie.new(), "YES!!!"),
		Line.new(NoCharacter.new(), "[Lots of kissing and stuff. Ew gross.]"),
		Line.new(Michael.new(), "I knew I could count on you."),
		Line.new(Michael.new(), "You've made the right decision."),
		Line.new(Sophie.new(), "I love you, Michael."),
		EmptyLine.new(1.0),
		Line.new(Michael.new(), "So, I found a venue that will have us in three weeks."),
		Line.new(Sophie.new(), "Three weeks???"),
		Line.new(Michael.new(), "[Raises voice] Don't talk back to me like that!"),
		EmptyLine.new(2.0),
		Line.new(Sophie.new(), "Owwwwww!"),
		Line.new(Michael.new(), "Sophie, we just talked about this. You need to trust me."),
		Line.new(Michael.new(), "I know what's best for you and what's best for us."),
		Line.new(Sophie.new(), "O-ok. I trust you. L-let's do the wedding then."),
		Line.new(Sophie.new(), "[Whispers] Ow..."),
		Line.new(Michael.new(), "Love you, beautiful."),
		EmptyLine.new(1.0),
		Line.new(Michael.new(), "[Yawn]. Time for bed?"),
		Line.new(Sophie.new(), "Yeah, I guess so."),
		Line.new(Sophie.new(), "I-I would prefer it if you went back to your place this evening."),
		Line.new(Sophie.new(), "I could do with some time to think things over myself."),
		Line.new(Michael.new(), "What do you need to think about? You can talk about it with me."),
		Line.new(Sophie.new(), "I'll see you tomorrow."),
		Line.new(Michael.new(), "No, I would prefer to stay here."),
		Line.new(Sophie.new(), "O-Of course, fiancé."),
		Line.new(NoCharacter.new(), "[You hear footsteps as the door opens and closes.]"),
	], ActionOn.new("ending_reenter", "sophie_michael_off")),

	# SOPHIE_MICHAEL_OFF: Switching the lamp off interrupts it, and may lead to Michael leaving if it doesn't go back on again.
	"sophie_michael_off": LongDialogue.new([
		Line.new(Michael.new(), "Ugh, that bloody lamp."),
		Line.new(Michael.new(), "On please!", 1.0),
		Line.new(Michael.new(), "On!!!!!!", 2.0),
		Line.new(Michael.new(), "SWITCH ON YOU MORON!", 3.0),
		Line.new(Michael.new(), "[Sighs] I think this is a problem for another day."),
		Line.new(Michael.new(), "See you tomorrow, beautiful."),
		Line.new(Sophie.new(), "Bye!"),
		Line.new(NoCharacter.new(), "[The door closes.]"),
	], ActionOff.new("colin_sophie", "sophie_michael_off_on", false)),
	"sophie_michael_off_on": Dialogue.new(Michael.new(), "Phew. Right, where were we?", ActionOn.new("sophie_michael", "sophie_michael_off")),

	# COLIN_SOPHIE: Interaction between Colin and Sophie. Then, Sophie leaves and proceed to ending scene.
	"colin_sophie": LongDialogue.new([
		Line.new(NoCharacter.new(), "[The door opens and closes.]"),
		Line.new(Colin.new(), "Hey Sophie! What's up?"),
		Line.new(Sophie.new(), "I-I don't know."),
		EmptyLine.new(0.5),
		Line.new(Sophie.new(), "[Inhales deeply]."),
		Line.new(Sophie.new(), "I'm p-pregnant, Colin."),
		Line.new(Colin.new(), "Oh, wow."),
		Line.new(Sophie.new(), "And I just want to get an abortion to make the problem go away but Michael says we need to get married instead."),
		Line.new(Sophie.new(), "It's all about what everyone else thinks. I'm not even sure if he's a Christian."),
		Line.new(Colin.new(), "Wow, I didn't realise it was that bad. How are you feeling about it?"),
		Line.new(Sophie.new(), "In truth, I'm a bit scared of him."),
		Line.new(Colin.new(), "That makes sense. Are you reconsidering the relationship?"),
		Line.new(Sophie.new(), "I don't know. I love him, but sometimes he pressures me into doing things that I don't want to do. And if I break up with him, I'm afraid of what he will do."),
		# Line.new(Colin.new(), "Sophie, you need to break up with him. It's not healthy for you."),
		Line.new(Sophie.new(), "You know what, I will insist on the abortion and see what he says."),
		EmptyLine.new(0.5),
		Line.new(Colin.new(), "Uh, Sophie, I'm very glad you're taking a stand against him."),
		Line.new(Colin.new(), "But an abortion isn't your only option."),
		Line.new(Colin.new(), "You could keep the baby and put it up for adoption."),
		Line.new(Sophie.new(), "B-but what would everyone think?"),
		Line.new(Colin.new(), "It doesn't matter what they think. What's done is done, and what matters is to save the life of the baby."),
		Line.new(Colin.new(), "You can't just kill a baby to save yourself a little bit of embarrassment."),
		Line.new(Colin.new(), "There's lots of people who would love to adopt a baby but there aren't enough."),
		Line.new(Sophie.new(), "Thanks Colin, I'll think about it."),
		Line.new(NoCharacter.new(), "[You hear footsteps as the door opens and closes.]"),
	], ActionLinear.new("ending", false)),

	# ENDING: Colin re-enters the room and starts talking to the lamp directly.
	"ending_reenter": LongDialogue.new([
		Line.new(Colin.new(), "[The door opens and closes.]"),
	], ActionLinear.new("ending", false)),
	"ending": LongDialogue.new([
		Line.new(Colin.new(), "Wow, that was a lot of talking."),
		Line.new(Colin.new(), "We're not always that political!"),
		Line.new(Colin.new(), "Thanks for sharing your opinions and making the discussion more interesting."),
		Line.new(Colin.new(), "Maybe one day I'll get you a dimmer switch so these nuanced issues don't have to be quite so binary!"),
		Line.new(Colin.new(), "Hopefully I've got some of the way to helping you understand your beliefs. I always try to refute my own beliefs to understand them better."),
		Line.new(Colin.new(), "It's frighteningly easy to think that you're always right, and discussing with more people can sometimes just reinforce this."),
		Line.new(Colin.new(), "Anyway, it's time I went to bed. Goodnight, lamp.", 1.0),
		Line.new(Colin.new(), "We're not unmetered...", 2.0),
		Line.new(Colin.new(), "Off please...", 3.0),
		Line.new(Colin.new(), "Oh well, guess I'll have to switch you off at the plug."),
		# TODO: Maybe score this by seeing if the player ever changes their mind, or if they hold a diverse range of opinions.
	], ActionForceState.new("ending_refuse", "ending_off")),
	"ending_off": LongDialogue.new([
		Line.new(Colin.new(), "Goodnight!"),
		Line.new(NoCharacter.new(), "[You hear footsteps as the door opens and closes.]"),
		Line.new(NoCharacter.new(), "The end."),
	], ActionLinear.new("", false)),
	"ending_refuse": LongDialogue.new([
		EmptyLine.new(0.5),
		Line.new(NoCharacter.new(), "The end."),
	], ActionLinear.new("", false), ["UNPOWERED"])

}
