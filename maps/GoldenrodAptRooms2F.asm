	object_const_def

GoldenrodAptRooms2F_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodAptRooms2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 31, GOLDENROD_APT_HALL2F, 2 ; family room
	warp_event  3, 31, GOLDENROD_APT_HALL2F, 2
	warp_event  2, 19, GOLDENROD_APT_HALL2F, 3 ; vacant room
	warp_event  3, 19, GOLDENROD_APT_HALL2F, 3
	warp_event  2,  7, GOLDENROD_APT_HALL2F, 4 ; researcher room
	warp_event  3,  7, GOLDENROD_APT_HALL2F, 4

	def_coord_events

	def_bg_events

	def_object_events
