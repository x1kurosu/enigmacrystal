WadePhoneCalleeScript:
	gettrainername STRING_BUFFER_3, BUG_CATCHER, WADE1
	checkflag ENGINE_WADE_READY_FOR_REMATCH
	iftrue .WantsBattle
	farscall PhoneScript_AnswerPhone_Male
	checkflag ENGINE_WADE_TUESDAY_NIGHT
	iftrue .NotTuesday
	checkflag ENGINE_WADE_HAS_ITEM
	iftrue .HasItem
	readvar VAR_WEEKDAY
	ifnotequal TUESDAY, .NotTuesday
	checktime NITE
	iftrue WadeTuesdayNight

.NotTuesday:
	farscall PhoneScript_Random2
	ifequal 0, .NoContest
	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue .NoContest
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .ContestToday
	ifequal THURSDAY, .ContestToday
	ifequal SATURDAY, .ContestToday

.NoContest:
	farsjump WadeNoBerriesScript

.ContestToday:
	farsjump PhoneScript_BugCatchingContest

.WantsBattle:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_31
	farsjump WadeQuickBattleScript

.HasItem:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_31
	farsjump WadeComeQuickScript

WadePhoneCallerScript:
	gettrainername STRING_BUFFER_3, BUG_CATCHER, WADE1
	farscall PhoneScript_GreetPhone_Male
	farscall PhoneScript_Random2
	ifequal 0, .NoContest
	checkflag ENGINE_DAILY_BUG_CONTEST
	iftrue .NoContest
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .ContestToday
	ifequal THURSDAY, .ContestToday
	ifequal SATURDAY, .ContestToday

.NoContest:
	checkflag ENGINE_WADE_READY_FOR_REMATCH
	iftrue .next
	checkflag ENGINE_WADE_TUESDAY_NIGHT
	iftrue .next
	checkflag ENGINE_WADE_HAS_ITEM
	iftrue .next
	farscall PhoneScript_Random2
	ifequal 0, WadeHasItem2
	checkflag ENGINE_FLYPOINT_GOLDENROD
	iffalse .next
	farscall PhoneScript_Random2
	ifequal 0, WadeWantsBattle2

.next:
	farscall PhoneScript_Random3
	ifequal 0, WadeFoundRare
	farsjump Phone_GenericCall_Male

.ContestToday:
	farsjump PhoneScript_BugCatchingContest

WadeTuesdayNight:
	setflag ENGINE_WADE_TUESDAY_NIGHT

WadeWantsBattle2:
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_31
	setflag ENGINE_WADE_READY_FOR_REMATCH
	farsjump PhoneScript_WantsToBattle_Male

WadeFoundRare:
	farsjump Phone_CheckIfUnseenRare_Male

WadeHasItem2:
	setflag ENGINE_WADE_HAS_ITEM
	getlandmarkname STRING_BUFFER_5, LANDMARK_ROUTE_31
	clearevent EVENT_WADE_HAS_BERRY
	clearevent EVENT_WADE_HAS_SWEET_PEACH
	clearevent EVENT_WADE_HAS_STRAWBERRY
	clearevent EVENT_WADE_HAS_RIPE_BANANA
	random 4
	ifequal 0, .Berry
	ifequal 1, .SweetPeach
	ifequal 2, .Strawberry
	ifequal 3, .RipeBanana

.Berry:
	setevent EVENT_WADE_HAS_BERRY
	sjump .FoundBerry

.SweetPeach:
	setevent EVENT_WADE_HAS_SWEET_PEACH
	sjump .FoundBerry

.Strawberry:
	setevent EVENT_WADE_HAS_STRAWBERRY
	sjump .FoundBerry

.RipeBanana:
	setevent EVENT_WADE_HAS_RIPE_BANANA

.FoundBerry:
	farsjump PhoneScript_FoundItem_Male
