	object_const_def
	const VIOLETFALKNERSHOUSE_FALKNERSMOTHER
	const VIOLETFALKNERSHOUSE_PIDGEY

VioletFalknersHouse_MapScripts:
	def_scene_scripts

	def_callbacks

VioletFalknersHouseFalknersMotherScript:
	jumptextfaceplayer VioletFalknersHouseFalknersMotherText
	
VioletFalknersHousePidgeyScript:
	faceplayer
	opentext
	writetext VioletFalknersHousePidgeyText
	cry PIDGEY
	waitbutton
	closetext
	end

VioletFalknersHouseFalknersMotherText:
	text "A #MON you get"
	line "in a trade grows"
	cont "quickly."

	para "But if you don't"
	line "have the right GYM"

	para "BADGE, they may"
	line "disobey you."
	done
	
VioletFalknersHousePidgeyText:
	text "PIDGEY: Co-ooh!"
	done

VioletFalknersHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VIOLET_CITY, 10
	warp_event  4,  7, VIOLET_CITY, 10
	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VioletFalknersHouseFalknersMotherScript, -1
	object_event  5,  4, SPRITE_PIDGEY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletFalknersHousePidgeyScript, -1
