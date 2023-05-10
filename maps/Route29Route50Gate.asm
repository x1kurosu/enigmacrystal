	object_const_def
	const ROUTE29ROUTE50GATE_OFFICER
	const ROUTE29ROUTE50GATE_YOUNGSTER

Route29Route50Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route29Route50GateOfficerScript:
	jumptextfaceplayer Route29Route50GateOfficerText

Route29Route50GateYoungsterScript:
	jumptextfaceplayer Route29Route50GateYoungsterText

Route29Route50GateOfficerText:
	text "You can't climb"
	line "ledges."

	para "But you can jump"
	line "down from them to"
	cont "take a shortcut."
	done

Route29Route50GateYoungsterText:
	text "Different kinds of"
	line "#MON appear"
	cont "past here."

	para "If you want to"
	line "catch them all,"

	para "you have to look"
	line "everywhere."
	done

Route29Route50Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_50, 1
	warp_event  5,  0, ROUTE_50, 2
	warp_event  4,  7, ROUTE_29, 1
	warp_event  5,  7, ROUTE_29, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route29Route50GateOfficerScript, -1
	object_event  6,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route29Route50GateYoungsterScript, -1
