	object_const_def

GoldenrodAptHall2F_MapScripts:
	def_scene_scripts

	def_callbacks
	
FamilyRoomSign:
	jumptext FamilyRoomSignText
	
VacantRoomSign: 
	jumptext VacantRoomSignText
	
ResearcherRoomSign:
	jumptext ResearcherRoomSignText
	
FamilyRoomSignText:
	text "Unit 201"
	done
	
VacantRoomSignText:
	text "Unit 202"
	done
	
ResearcherRoomSignText:
	text "Unit 203"
	done

GoldenrodAptHall2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14,  0, GOLDENROD_APT_RECEPTION, 3
	warp_event 11,  2, GOLDENROD_APT_ROOMS2F, 1 ; family room
	warp_event  7,  2, GOLDENROD_APT_ROOMS2F, 3 ; vacant room
	warp_event  3,  2, GOLDENROD_APT_ROOMS2F, 5 ; researcher room
	warp_event  0,  0, GOLDENROD_APT_HALL3F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  2, BGEVENT_READ, FamilyRoomSign
	bg_event  6,  2, BGEVENT_READ, VacantRoomSign
	bg_event  2,  2, BGEVENT_READ, ResearcherRoomSign

	def_object_events
