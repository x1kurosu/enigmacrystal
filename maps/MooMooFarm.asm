	object_const_def
	const MOOMOO_FARM_MILTANK1
	const MOOMOO_FARM_MILTANK2
	const MOOMOO_FARM_MILTANK3
	const MOOMOO_FARM_MILTANK4
	const MOOMOO_FARM_MAREEP1
	const MOOMOO_FARM_MAREEP2
	const MOOMOO_FARM_MAREEP3
	const MOOMOO_FARM_FRUITTREE_1
	const MOOMOO_FARM_FRUITTREE_2
	const MOOMOO_FARM_HELPER

MooMooFarm_MapScripts:
	def_scene_scripts

	def_callbacks

MooMooFarmMiltank:
	opentext
	writetext MooMooFarmMiltankText
	cry MILTANK
	waitbutton
	closetext
	end
	
MooMooFarmMareep:
	opentext
	writetext MooMooFarmMareepText
	cry MAREEP
	waitbutton
	closetext
	end
	
MooMooFarmHelperScript:
	jumptextfaceplayer MooMooFarmHelperText

MoomooFarmSign:
	jumptext MoomooFarmSignText
	
MooMooFarmCautionSign:
	jumptext MooMooFarmCautionText

MooMooFarmFruitTree1:
	fruittree FRUITTREE_MOOMOO_FARM_1
	
MooMooFarmFruitTree2:
	fruittree FRUITTREE_MOOMOO_FARM_2

MooMooFarmMiltankText:
	text "MILTANK: Mooo!"
	done
	
MooMooFarmMareepText:
	text "MAREEP: Ba-aaa!"
	done
	
MooMooFarmHelperText:
	text "It gets tiring"
	line "working day in"
	cont "and day out..."
	
	para "But I wouldn't"
	line "trade it for"
	cont "anything!"
	done

MoomooFarmSignText:
	text "MOOMOO FARM"

	para "Enjoy Our Fresh"
	line "and Tasty Milk"
	done
	
MooMooFarmCautionText:
	text "CAUTION"
	
	para "Do not try to"
	line "ride the MILTANK."
	
	para "They will begin"
	line "to roll."
	done

MooMooFarm_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 21, ROUTE_39_BARN, 1
	warp_event 21, 23, ROUTE_39_FARMHOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 19, 25, BGEVENT_READ, MoomooFarmSign
	bg_event  6, 28, BGEVENT_READ, MooMooFarmCautionSign

	def_object_events
	object_event  5, 32, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MooMooFarmMiltank, -1
	object_event  8, 31, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MooMooFarmMiltank, -1
	object_event  7, 34, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MooMooFarmMiltank, -1
	object_event 10, 33, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MooMooFarmMiltank, -1
	object_event  5, 22, SPRITE_MAREEP, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MooMooFarmMareep, -1
	object_event  9, 21, SPRITE_MAREEP, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MooMooFarmMareep, -1
	object_event  6, 20, SPRITE_MAREEP, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MooMooFarmMareep, -1
	object_event 16, 34, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MooMooFarmFruitTree1, -1
	object_event  6, 13, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MooMooFarmFruitTree2, -1
	object_event 22, 31, SPRITE_PSYCHIC, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MooMooFarmHelperScript, -1
	