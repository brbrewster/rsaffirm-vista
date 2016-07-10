cd "%homedrive%\rsaffirm\lib"

if exist "%homedrive%\rsaffirm\lib\affirmations.wav" (
	del "%homedrive%\rsaffirm\lib\affirmations.wav"
)

start soundrecorder /file "%homedrive%\rsaffirm\lib\affirmations.wav"