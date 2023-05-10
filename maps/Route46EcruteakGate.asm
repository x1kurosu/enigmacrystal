	object_const_def
	const ROUTE46ECRUTEAKGATE_OFFICER

Route46EcruteakGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route46EcruteakGateOfficerScript:
	jumptextfaceplayer Route46EcruteakGateOfficerText

Route46EcruteakGateOfficerText:
	text "MT.MORTAR is like"
	line "a maze inside."

	para "Be careful. Don't"
	line "get lost in there."
	done

Route46EcruteakGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ECRUTEAK_CITY, 1
	warp_event  0,  5, ECRUTEAK_CITY, 2
	warp_event  9,  4, ROUTE_46, 1
	warp_event  9,  5, ROUTE_46, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route46EcruteakGateOfficerScript, -1
