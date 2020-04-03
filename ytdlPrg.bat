@ECHO OFF
ECHO ----------------------------------------------------------------------------------------------------------------------
:selection
ECHO 1 Video Download
ECHO 2 Audio Download
ECHO 3 Video Download via Text File
ECHO 4 Audio Download via Text File
ECHO 5 Update
ECHO.
SET /P OPTION="[Enter option ] "
if %option% == 1 (goto videodownload)
if %option% == 2 (goto audiodownload)
if %option% == 3 (goto videodownloadtxt)
if %option% == 4 (goto audiodownloadtxt)
if %option% == 5 (goto update)
ECHO Unknown value 
goto selection

:videodownload
ECHO.
SET /P URL="[Enter URL] "
SET /P VIDRES="[Enter resolution(360,720, etc) ] "
youtube-dl -o "Downloads/%%(title)s.%%(ext)s" -f "bestvideo[height<=%VIDRES%][ext=mp4]+bestaudio[ext=m4a]/best[height<=%VIDRES%][ext=mp4]" %URL%
ECHO ----------------------------------------------------------------------------------------------------------------------
PAUSE
EXIT

:videodownload
ECHO.
SET /P URL="[Enter URL] "
SET /P VIDRES="[Enter resolution(360,720, etc) ] "
youtube-dl -o "Downloads/%%(title)s.%%(ext)s" -f "bestvideo[height<=%VIDRES%][ext=mp4]+bestaudio[ext=m4a]/best[height<=%VIDRES%][ext=mp4]" %URL%
ECHO ----------------------------------------------------------------------------------------------------------------------
PAUSE
EXIT