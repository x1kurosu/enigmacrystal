	object_const_def

UnionCaveB4F_MapScripts:
	def_scene_scripts

	def_callbacks
	
UnionCaveB4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21, 17, UNION_CAVE_B3F, 4
	warp_event 21, 11, UNION_CAVE_B5F, 1
	warp_event 19, 27, UNION_CAVE_B4F_PATH, 1
	warp_event  5, 25, UNION_CAVE_B4F_PATH, 2

	def_coord_events

	def_bg_events

	def_object_events
