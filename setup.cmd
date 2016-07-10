if not exist "%homedrive%\rsaffirm" (
	mkdir %homedrive%\rsaffirm
)

xcopy /y /s rsaffirm "%homedrive%\rsaffirm"

if not exist "%userprofile%\Start Menu\Programs\Restful Sleeping Affirmations" (
	mkdir "%userprofile%\Start Menu\Programs\Restful Sleeping Affirmations"
)

copy /y "%homedrive%\rsaffirm\lib\Start.lnk" "%userprofile%\Start Menu\Programs\Restful Sleeping Affirmations"

copy /y "%homedrive%\rsaffirm\lib\Stop.lnk" "%userprofile%\Start Menu\Programs\Restful Sleeping Affirmations"

copy /y "%homedrive%\rsaffirm\lib\Record.lnk" "%userprofile%\Start Menu\Programs\Restful Sleeping Affirmations"

copy /y "%homedrive%\rsaffirm\lib\Test.lnk" "%userprofile%\Start Menu\Programs\Restful Sleeping Affirmations"

copy /y "%homedrive%\rsaffirm\lib\Uninstall.lnk" "%userprofile%\Start Menu\Programs\Restful Sleeping Affirmations"

copy /y "%homedrive%\rsaffirm\lib\Readme.txt.lnk" "%userprofile%\Start Menu\Programs\Restful Sleeping Affirmations"

start notepad.exe "%homedrive%\rsaffirm\Readme.txt"