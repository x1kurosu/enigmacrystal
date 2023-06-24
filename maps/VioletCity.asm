	object_const_def
	const VIOLETCITY_EARL
	const VIOLETCITY_LASS
	const VIOLETCITY_SUPER_NERD
	const VIOLETCITY_GRAMPS
	const VIOLETCITY_YOUNGSTER
	const VIOLETCITY_FRUIT_TREE_1
	const VIOLETCITY_FRUIT_TREE_2
	const VIOLETCITY_POKE_BALL1
	const VIOLETCITY_POKE_BALL2
	const VIOLETCITY_STANTLER

VioletCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VioletCityFlypointCallback

VioletCityFlypointCallback:
	setflag ENGINE_FLYPOINT_VIOLET
	endcallback

VioletCityEarlScript:
	applymovement VIOLETCITY_EARL, VioletCitySpinningEarl_MovementData
	faceplayer
	opentext
	writetext Text_EarlAsksIfYouBeatFalkner
	yesorno
	iffalse .FollowEarl
	sjump .PointlessJump

.PointlessJump:
	writetext Text_VeryNiceIndeed
	waitbutton
	closetext
	end

.FollowEarl:
	writetext Text_FollowEarl
	waitbutton
	closetext
	playmusic MUSIC_SHOW_ME_AROUND
	follow VIOLETCITY_EARL, PLAYER
	applymovement VIOLETCITY_EARL, VioletCityFollowEarl_MovementData
	turnobject PLAYER, UP
	applymovement VIOLETCITY_EARL, VioletCitySpinningEarl_MovementData
	stopfollow
	special RestartMapMusic
	opentext
	writetext Text_HereTeacherIAm
	waitbutton
	closetext
	applymovement VIOLETCITY_EARL, VioletCitySpinningEarl_MovementData
	applymovement VIOLETCITY_EARL, VioletCityFinishFollowEarl_MovementData
	playsound SFX_ENTER_DOOR
	disappear VIOLETCITY_EARL
	clearevent EVENT_EARLS_ACADEMY_EARL
	waitsfx
	end

VioletCityLassScript:
	jumptextfaceplayer VioletCityLassText

VioletCitySuperNerdScript:
	jumptextfaceplayer VioletCitySuperNerdText

VioletCityGrampsScript:
	jumptextfaceplayer VioletCityGrampsText

VioletCityYoungsterScript:
	jumptextfaceplayer VioletCityYoungsterText
	
VioletCityStantlerScript:
	opentext
	writetext VioletCityStantlerText
	cry STANTLER
	waitbutton
	closetext
	end

VioletCitySign:
	jumptext VioletCitySignText

VioletGymSign:
	jumptext VioletGymSignText

SproutTowerSign:
	jumptext SproutTowerSignText

EarlsPokemonAcademySign:
	jumptext EarlsPokemonAcademySignText

VioletCityPokecenterSign:
	jumpstd PokecenterSignScript

VioletCityMartSign1:
	jumpstd MartSignScript

VioletCityMartSign2:
	jumpstd MartSignScript

VioletCityPPUp:
	itemball PP_UP

VioletCityRareCandy:
	itemball RARE_CANDY

VioletCityFruitTree1:
	fruittree FRUITTREE_VIOLET_CITY_1

VioletCityFruitTree2:
	fruittree FRUITTREE_VIOLET_CITY_2

VioletCityHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_VIOLET_CITY_HIDDEN_HYPER_POTION

VioletCityFollowEarl_MovementData:
	big_step DOWN
	big_step DOWN
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	big_step DOWN
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	big_step UP
	turn_head DOWN
	step_end

VioletCityFinishFollowEarl_MovementData:
	step UP
	step_end

VioletCitySpinningEarl_MovementData:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

Text_EarlAsksIfYouBeatFalkner:
	text "Hello!"
	line "You are trainer?"

	para "Battle GYM LEADER,"
	line "win you did?"
	done

Text_VeryNiceIndeed:
	text "Ooh, la la!"
	line "Very indeed nice!"
	done

Text_FollowEarl:
	text "Is that so? Then"
	line "study shall you!"
	cont "Follow me!"
	done

Text_HereTeacherIAm:
	text "Here, teacher I"
	line "am. Good it is"
	cont "you study here!"
	done

VioletCityLassText:
	text "Ghosts are rumored"
	line "to appear in"
	cont "SPROUT TOWER."

	para "They said normal-"
	line "type #MON moves"

	para "had no effect on"
	line "ghosts."
	done

VioletCitySuperNerdText:
	text "Hey, you're a"
	line "#MON trainer?"

	para "If you beat the"
	line "GYM LEADER here,"

	para "you'll be ready"
	line "for prime time!"
	done

VioletCityGrampsText:
	text "FALKNER, from the"
	line "VIOLET #MON"

	para "GYM, is a fine"
	line "trainer!"

	para "He inherited his"
	line "father's gym and"

	para "has done a great"
	line "job with it."
	done

VioletCityYoungsterText:
	text "I saw a wiggly"
	line "tree up ahead!"

	para "If you touch it,"
	line "it squirms and"
	cont "dances! Cool!"
	done
	
VioletCityStantlerText:
	text "TESTERS"
	done

VioletCitySignText:
	text "VIOLET CITY"

	para "The City of"
	line "Nostalgic Scents"
	done

VioletGymSignText:
	text "VIOLET CITY"
	line "#MON GYM"
	cont "LEADER: FALKNER"

	para "The Elegant Master"
	line "of Bird #MON"
	done

SproutTowerSignText:
	text "SPROUT TOWER"

	para "Experience the"
	line "Way of #MON"
	done

EarlsPokemonAcademySignText:
	text "EARL'S #MON"
	line "ACADEMY"
	done

VioletCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 25, VIOLET_MART, 2
	warp_event 18, 21, VIOLET_GYM, 1
	warp_event 30, 25, EARLS_POKEMON_ACADEMY, 1
	warp_event  3, 23, VIOLET_NICKNAME_SPEECH_HOUSE, 1
	warp_event 31, 33, VIOLET_POKECENTER_1F, 1
	warp_event 21, 37, VIOLET_KYLES_HOUSE, 1
	warp_event 23,  5, SPROUT_TOWER_1F, 1
	warp_event 39, 32, ROUTE_31_VIOLET_GATE, 1
	warp_event 39, 33, ROUTE_31_VIOLET_GATE, 2
	warp_event  9, 17, VIOLET_FALKNERS_HOUSE, 1
	warp_event 23, 33, VIOLET_CUT_HOUSE, 1
	warp_event 31, 38, VIOLET_HIDDEN_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 21, 27, BGEVENT_READ, VioletCitySign
	bg_event 15, 23, BGEVENT_READ, VioletGymSign
	bg_event 25, 13, BGEVENT_READ, SproutTowerSign
	bg_event 27, 25, BGEVENT_READ, EarlsPokemonAcademySign
	bg_event 33, 33, BGEVENT_READ, VioletCityPokecenterSign
	bg_event 10, 25, BGEVENT_READ, VioletCityMartSign1
	bg_event 11, 25, BGEVENT_READ, VioletCityMartSign2
	bg_event 37, 22, BGEVENT_ITEM, VioletCityHiddenHyperPotion

	def_object_events
	object_event 14, 24, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletCityEarlScript, EVENT_VIOLET_CITY_EARL
	object_event 28, 36, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletCityLassScript, -1
	object_event 25, 18, SPRITE_PSYCHIC, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletCitySuperNerdScript, -1
	object_event 17, 28, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCityGrampsScript, -1
	object_event  5, 26, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletCityYoungsterScript, -1
	object_event 14, 37, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCityFruitTree1, -1
	object_event 11, 35, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCityFruitTree2, -1
	object_event  4,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VioletCityPPUp, EVENT_VIOLET_CITY_PP_UP
	object_event 35, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, VioletCityRareCandy, EVENT_VIOLET_CITY_RARE_CANDY
	object_event 19, 25, SPRITE_STANTLER, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VioletCityStantlerScript, -1
