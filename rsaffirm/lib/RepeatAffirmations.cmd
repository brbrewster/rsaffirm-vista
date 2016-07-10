set counter=0
set timesrun=0

if not exist "%homedrive%\rsaffirm\lib\TimesScheduled" (
	echo 0 > "%homedrive%\rsaffirm\lib\TimesScheduled"
)


:loop
if %counter% lss 22 (
	"%homedrive%\rsaffirm\lib\wav" %homedrive%\rsaffirm\lib\affirmations.wav /q
	set /a counter=%counter% + 1
	goto loop
)


set /p timesrun=<"%homedrive%\rsaffirm\lib\TimesScheduled"
set /a timesrun=%timesrun% + 1

::Because of Vista's User Account Control, I had to have the Start program twice. 
::Once with UAC, and once without. This causes the program to run Start2.exe 
::instead of Start.exe

if %timesrun% lss 6 (

	echo %timesrun% > "%homedrive%\rsaffirm\lib\TimesScheduled"
	"%homedrive%\rsaffirm\Start2.exe"
	
	 
) ELSE (

	del "%homedrive%\rsaffirm\lib\TimesScheduled"

)



