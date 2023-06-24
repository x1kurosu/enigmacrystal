	object_const_def

GoldenrodAptHall3F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, GoldenrodAptWhitneyRoomCallback
	
GoldenrodAptWhitneyRoomCallback:
	checkflag ENGINE_PLAINBADGE
	iffalse .LockWhitneyDoor
	endcallback

.LockWhitneyDoor:
	changeblock  3,  2, $52 ; locked door
	endcallback

WhitneyDoorScript:
	checkflag ENGINE_PLAINBADGE
	iffalse .Locked
	end

.Locked:
	jumptext GoldenrodAptWhitneyDoorLockedText
	
WhitneyRoomSign:
	jumptext WhitneyRoomSignText
	
RocketRoomSign:
	jumptext RocketRoomSignText
	
OldManRoomSign:
	jumptext OldManRoomSignText
	
WhitneyRoomSignText:
	text "Unit 301"
	done

RocketRoomSignText:
	text "Unit 302"
	done
	
OldManRoomSignText:
	text "Unit 303"
	done
	
GoldenrodAptWhitneyDoorLockedText:
	text "It's locked."
	done

GoldenrodAptHall3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  0, GOLDENROD_APT_HALL2F, 5
	warp_event  3,  2, GOLDENROD_APT_ROOMS3F, 1 ; whitney's room
	warp_event  7,  2, GOLDENROD_APT_ROOMS3F, 3 ; rocket room
	warp_event 11,  2, GOLDENROD_APT_ROOMS3F, 5 ; old man's room
	warp_event 14,  0, GOLDENROD_APT_ROOF, 1


	def_coord_events

	def_bg_events
	bg_event  3,  2, BGEVENT_READ, WhitneyDoorScript
	bg_event  2,  2, BGEVENT_READ, WhitneyRoomSign
	bg_event  6,  2, BGEVENT_READ, RocketRoomSign
	bg_event 10,  2, BGEVENT_READ, OldManRoomSign

	def_object_events
