	object_const_def
	const ROUTE42GOLDENRODGATE_OFFICER

Route42GoldenrodGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route42GoldenrodGateOfficerScript:
	jumptextfaceplayer Route42GoldenrodGateOfficerText

Route42GoldenrodGateOfficerText:
	text "GOLDENROD BEACH is"
	line "up ahead."

	para "I have to stay at"
	line "my post here..."

	para "Go enjoy the waves"
	line "for me!"
	done

Route42GoldenrodGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ROUTE_42, 1
	warp_event  0,  5, ROUTE_42, 2
	warp_event  9,  4, GOLDENROD_CITY, 16
	warp_event  9,  5, GOLDENROD_CITY, 17

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route42GoldenrodGateOfficerScript, -1
