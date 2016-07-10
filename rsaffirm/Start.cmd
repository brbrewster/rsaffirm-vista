set hours=%time:~0,2%
set minutes=%time:~2,3%


if %hours% LSS 23 (
	set /a hours=%hours% + 1
	) ELSE (
	set hours=00
	)



at %hours%%minutes% /interactive "%homedrive%\rsaffirm\lib\RepeatAffirmations.exe" 



if not exist "%homedrive%\rsaffirm\lib\TimesScheduled" (

	"%homedrive%\rsaffirm\lib\wav" %homedrive%\rsaffirm\lib\affirmations.wav /q

)
