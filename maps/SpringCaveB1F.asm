	object_const_def

SpringCaveB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
SpringCaveB1FTerminal:
	jumptext SpringCaveB1FTerminalText
	
SpringCaveB1FMineCart:
	jumptext SpringCaveB1FMineCartText

SpringCaveB1FTerminalText:
	text "This terminal"
	line "still functions."
	
	para "It needs a key,"
	line "though..."
	done
	
SpringCaveB1FMineCartText:
	text "It's an old mine"
	line "cart."
	
	para "It won't move wi-"
	line "thout input from"
	cont "the terminal."
	done

SpringCaveB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 27,  3, SPRING_CAVE_1F, 5
	warp_event 27, 15, SPRING_CAVE_1F, 6
	warp_event  9, 17, SPRING_CAVE_SNAKE_ROOM, 1

	def_coord_events

	def_bg_events
	bg_event 38, 11, BGEVENT_READ, SpringCaveB1FTerminal
	bg_event 39, 11, BGEVENT_READ, SpringCaveB1FMineCart

	def_object_events
