	object_const_def
	const UNIONCAVEB3F_BOULDER
	const UNIONCAVEB3F_POKE_BALL1

UnionCaveB3F_MapScripts:
	def_scene_scripts

	def_callbacks
	
UnionCaveB3FBoulder:
	jumpstd StrengthBoulderScript
	
UnionCaveB3FIceBerry:
	itemball ICE_BERRY

UnionCaveB3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 19, UNION_CAVE_B2F, 6
	warp_event 11, 18, UNION_CAVE_B2F, 7
	warp_event  3, 19, UNION_CAVE_B2F, 8
	warp_event 21, 15, UNION_CAVE_B4F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, UnionCaveB3FBoulder, -1
	object_event  9, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCaveB3FIceBerry, EVENT_UNION_CAVE_B3F_ICE_BERRY
