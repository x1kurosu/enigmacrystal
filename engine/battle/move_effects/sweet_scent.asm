BattleCommand_StartSweetScent:
; startsweetscent

	ld a, [wBattleWeather]
	cp WEATHER_SWEET_SCENT
	jr z, .failed
	
	ld a, WEATHER_SWEET_SCENT
	ld [wBattleWeather], a
	ld a, 5
	ld [wWeatherCount], a
	call AnimateCurrentMove
	ld hl, SweetScentText
	jp StdBattleTextbox
	
.failed
	call AnimateFailedMove
	jp PrintButItFailed
	