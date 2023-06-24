	object_const_def

UnionCave1FTunnel_MapScripts:
	def_scene_scripts

	def_callbacks

UnionCave1FTunnel_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  5, ROUTE_32, 5
	warp_event  4,  3, UNION_CAVE_B1F_TUNNEL, 1

	def_coord_events

	def_bg_events

	def_object_events
