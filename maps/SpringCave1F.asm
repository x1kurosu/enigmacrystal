	object_const_def

SpringCave1F_MapScripts:
	def_scene_scripts

	def_callbacks

SpringCave1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25, 25, ROUTE_39, 2
	warp_event  3, 25, ROUTE_39, 3
	warp_event 15, 13, SPRING_CAVE_1F, 4
	warp_event 11,  7, SPRING_CAVE_1F, 3
	warp_event  5,  3, SPRING_CAVE_B1F, 1
	warp_event  5, 15, SPRING_CAVE_B1F, 2

	def_coord_events

	def_bg_events

	def_object_events
