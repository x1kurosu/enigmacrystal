DEF ROUTE47GATE_TOLL EQU 1000

	object_const_def
	const ROUTE47GATE_OFFICER
	const ROUTE47GATE_ROCKET1
	const ROUTE47GATE_ROCKET2

Route47Gate_MapScripts:
	def_scene_scripts
	scene_script Route47GateRocketShakedownScene, SCENE_ROUTE47GATE_ROCKET_SHAKEDOWN
	scene_script Route47GateNoopScene,            SCENE_ROUTE47GATE_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route47GateCheckIfRocketsCallback

Route47GateRocketShakedownScene:
	sdefer Route47GateRocketTakeoverScript
	end

Route47GateNoopScene:
	end

Route47GateCheckIfRocketsCallback:
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .NoRockets
	setmapscene ROUTE_47, 0 ; Route 47 does not have a scene variable
	endcallback

.NoRockets:
	setmapscene ROUTE_47, 1 ; Route 47 does not have a scene variable
	endcallback

Route47GateRocketTakeoverScript:
	playmusic MUSIC_ROCKET_ENCOUNTER
	readvar VAR_FACING
	ifequal DOWN, RocketScript_Southbound
	ifequal UP, RocketScript_Northbound
	setscene SCENE_ROUTE47GATE_NOOP
	end

RocketScript_Southbound:
	applymovement PLAYER, PlayerStepsIn
	showemote EMOTE_SHOCK, ROUTE47GATE_ROCKET2, 15
	applymovement ROUTE47GATE_ROCKET2, Rocket2Script_BlocksYouSouth
	turnobject ROUTE47GATE_ROCKET1, UP
	showemote EMOTE_SHOCK, ROUTE47GATE_ROCKET1, 15
	applymovement ROUTE47GATE_ROCKET1, Rocket1Script_BlocksYouSouth
	opentext
	writetext RocketText_TollFee
	promptbutton
	checkmoney YOUR_MONEY, ROUTE47GATE_TOLL - 1
	ifequal HAVE_MORE, RocketScript_TollSouth
	sjump RocketScript_YoureBrokeSouth

RocketScript_TollSouth:
	takemoney YOUR_MONEY, ROUTE47GATE_TOLL
	writetext RocketText_ThankYou
	sjump RocketScript_ShakeDownSouth

RocketScript_YoureBrokeSouth:
	takemoney YOUR_MONEY, ROUTE47GATE_TOLL
	writetext RocketText_AllYouGot
	sjump RocketScript_ShakeDownSouth

RocketScript_ShakeDownSouth:
	promptbutton
	closetext
	applymovement ROUTE47GATE_ROCKET1, Rocket1Script_LetsYouPassSouth
	applymovement ROUTE47GATE_ROCKET2, Rocket2Script_LetsYouPassSouth
	setscene SCENE_ROUTE47GATE_NOOP
	special RestartMapMusic
	end

RocketScript_Northbound:
	showemote EMOTE_SHOCK, ROUTE47GATE_ROCKET1, 15
	applymovement ROUTE47GATE_ROCKET1, Rocket1Script_BlocksYouNorth
	turnobject ROUTE47GATE_ROCKET2, DOWN
	showemote EMOTE_SHOCK, ROUTE47GATE_ROCKET2, 15
	applymovement ROUTE47GATE_ROCKET2, Rocket2Script_BlocksYouNorth
	opentext
	writetext RocketText_TollFee
	promptbutton
	checkmoney YOUR_MONEY, ROUTE47GATE_TOLL - 1
	ifequal HAVE_MORE, RocketScript_TollNorth
	sjump RocketScript_YoureBrokeNorth

RocketScript_TollNorth:
	takemoney YOUR_MONEY, ROUTE47GATE_TOLL
	writetext RocketText_ThankYou
	sjump RocketScript_ShakeDownNorth

RocketScript_YoureBrokeNorth:
	takemoney YOUR_MONEY, ROUTE47GATE_TOLL
	writetext RocketText_AllYouGot
	sjump RocketScript_ShakeDownNorth

RocketScript_ShakeDownNorth:
	promptbutton
	closetext
	applymovement ROUTE47GATE_ROCKET2, Rocket2Script_LetsYouPassNorth
	applymovement ROUTE47GATE_ROCKET1, Rocket1Script_LetsYouPassNorth
	setscene SCENE_ROUTE47GATE_NOOP
	special RestartMapMusic
	end

RocketScript_MakingABundle:
	jumptextfaceplayer RocketText_MakingABundle

OfficerScript_GuardWithSing:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM06_SING
	iftrue .GotSing
	writetext OfficerText_FoundTM
	promptbutton
	verbosegiveitem TM_SING
	iffalse .NoRoomForSing
	setevent EVENT_GOT_TM06_SING
	closetext
	end

.GotSing:
	writetext OfficerText_AvoidGrass
	waitbutton
.NoRoomForSing:
	closetext
	end

PlayerStepsIn:
	step DOWN
	step_end

Rocket1Script_BlocksYouSouth:
	big_step UP
	big_step UP
	big_step RIGHT
	big_step RIGHT
	turn_head UP
	step_end

Rocket1Script_LetsYouPassSouth:
	big_step LEFT
	big_step LEFT
	big_step DOWN
	big_step DOWN
	step_end

Rocket1Script_BlocksYouNorth:
	big_step DOWN
	big_step DOWN
	big_step RIGHT
	big_step RIGHT
	turn_head DOWN
	step_end

Rocket1Script_LetsYouPassNorth:
	big_step LEFT
	big_step LEFT
	big_step UP
	big_step UP
	turn_head DOWN
	step_end

Rocket2Script_BlocksYouSouth:
	big_step UP
	big_step UP
	big_step LEFT
	big_step LEFT
	turn_head UP
	step_end

Rocket2Script_LetsYouPassSouth:
	big_step RIGHT
	big_step RIGHT
	big_step DOWN
	big_step DOWN
	turn_head UP
	step_end

Rocket2Script_BlocksYouNorth:
	big_step DOWN
	big_step DOWN
	big_step LEFT
	big_step LEFT
	turn_head DOWN
	step_end

Rocket2Script_LetsYouPassNorth:
	big_step RIGHT
	big_step RIGHT
	big_step UP
	big_step UP
	step_end

RocketText_TollFee:
	text "Hold it there,"
	line "kiddo!"

	para "The toll is ¥{d:ROUTE47GATE_TOLL}"
	line "to go through."
	done

RocketText_ThankYou:
	text "Thank you very"
	line "much!"
	done

RocketText_AllYouGot:
	text "Then pay what you"
	line "have, please."
	done

RocketText_MakingABundle:
	text "He-he-he. We're"
	line "making a bundle."

	para "Everyone wants to"
	line "see what's going"

	para "on up at LAKE OF"
	line "RAGE."
	done

OfficerText_FoundTM:
	text "I got chased from"
	line "my post by these"
	cont "thugs in black."

	para "They left this"
	line "behind."

	para "It makes me uncom-"
	line "fortable. Could"
	cont "you take it away?"
	done

Text_ReceivedTM30: ; unreferenced
	text "<PLAYER> received"
	line "TM30."
	done

OfficerText_AvoidGrass:
	text "Use this gate to"
	line "avoid walking in"
	cont "the grass."
	done

Route47Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_47, 4
	warp_event  5,  0, ROUTE_47, 5
	warp_event  4,  7, ROUTE_47, 3
	warp_event  5,  7, ROUTE_47, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OfficerScript_GuardWithSing, EVENT_LAKE_OF_RAGE_CIVILIANS
	object_event  2,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RocketScript_MakingABundle, EVENT_ROUTE_47_GATE_ROCKETS
	object_event  7,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RocketScript_MakingABundle, EVENT_ROUTE_47_GATE_ROCKETS
