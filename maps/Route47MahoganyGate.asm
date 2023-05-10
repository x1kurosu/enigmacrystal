	object_const_def
	const ROUTE47MAHOGANYGATE_OFFICER

Route47MahoganyGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route47MahoganyGateOfficer:
	faceplayer
	opentext
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .RocketsCleared
	writetext Route47MahoganyGateOfficerText
	waitbutton
	closetext
	end

.RocketsCleared:
	writetext Route47MahoganyGateOfficerRocketsClearedText
	waitbutton
	closetext
	end

Route47MahoganyGateOfficerText:
	text "Only people headed"
	line "up to LAKE OF RAGE"

	para "have been through"
	line "here lately."
	done

Route47MahoganyGateOfficerRocketsClearedText:
	text "Nobody goes up to"
	line "LAKE OF RAGE these"
	cont "days."
	done

Route47MahoganyGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_47, 1
	warp_event  5,  0, ROUTE_47, 2
	warp_event  4,  7, MAHOGANY_TOWN, 5
	warp_event  5,  7, MAHOGANY_TOWN, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route47MahoganyGateOfficer, -1
