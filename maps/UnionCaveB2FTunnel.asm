	object_const_def

UnionCaveB2FTunnel_MapScripts:
	def_scene_scripts

	def_callbacks

UnionCaveB2FTunnel_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  3, UNION_CAVE_B1F_TUNNEL, 2
	warp_event  9, 17, UNION_CAVE_B2F_SNAKE_ROOM, 1
	warp_event 11, 27, UNION_CAVE_B2F, 11

	def_coord_events

	def_bg_events

	def_object_events
