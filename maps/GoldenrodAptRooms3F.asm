	object_const_def
	const GOLDENRODAPT_3F_WHITNEY
	const GOLDENRODAPT_3F_AIPOM

GoldenrodAptRooms3F_MapScripts:
	def_scene_scripts

	def_callbacks
	
GoldenrodApt3FWhitneyScript:
	jumptextfaceplayer GoldenrodApt3FWhitneyText

GoldenrodApt3FWhitneyText:
	text "Oh! You're here!"
	
	para "I-If you're check-"
	line "ing on me, I'm OK."
	
	para "Hey! Do you want"
	line "to share numbers?"
	done
	
GoldenrodApt3FAipomScript:
	opentext
	writetext GoldenrodApt3FAipomText
	cry AIPOM
	waitbutton
	closetext
	end
	
GoldenrodApt3FAipomText:
	text "Ee-eek!"
	done

GoldenrodAptRooms3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_APT_HALL3F, 2 ; whitney's room
	warp_event  3,  7, GOLDENROD_APT_HALL3F, 2
	warp_event  2, 19, GOLDENROD_APT_HALL3F, 3 ; rocket room
	warp_event  3, 19, GOLDENROD_APT_HALL3F, 3
	warp_event  2, 31, GOLDENROD_APT_HALL3F, 4 ; old man's room
	warp_event  3, 31, GOLDENROD_APT_HALL3F, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  4, SPRITE_WHITNEY, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodApt3FWhitneyScript, -1
	object_event  0,  3, SPRITE_AIPOM, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, GoldenrodApt3FAipomScript, -1
