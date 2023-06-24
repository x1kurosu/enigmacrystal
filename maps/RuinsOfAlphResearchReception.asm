	object_const_def

RuinsOfAlphResearchReception_MapScripts:
	def_scene_scripts

	def_callbacks
	
RuinsOfAlphResearchReceptionCenterSign:
	jumptext RuinsOfAlphResearchReceptionCenterSignText
	
RuinsOfAlphResearchReceptionExperimentalSign:
	jumptext RuinsOfAlphResearchReceptionExperimentalSignText

RuinsOfAlphResearchReceptionCenterSignText:
	text "Research Lab"
	done

RuinsOfAlphResearchReceptionExperimentalSignText:
	text "Experimental Lab"
	done

RuinsOfAlphResearchReception_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, RUINS_OF_ALPH_OUTSIDE, 6
	warp_event  3,  7, RUINS_OF_ALPH_OUTSIDE, 6
	warp_event  9,  4, RUINS_OF_ALPH_RESEARCH_CENTER, 1
	warp_event 13,  4, RUINS_OF_ALPH_RESEARCH_EXPERIMENTAL, 1

	def_coord_events

	def_bg_events
	bg_event  8,  4, BGEVENT_READ, RuinsOfAlphResearchReceptionCenterSign
	bg_event 12,  4, BGEVENT_READ, RuinsOfAlphResearchReceptionExperimentalSign

	def_object_events
