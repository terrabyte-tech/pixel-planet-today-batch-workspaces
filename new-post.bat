@ECHO OFF
chcp 65001

@REM Profile 1 is Pixel; Profile 3 is Terrabyte
@REM ____________________________________________________________

cls
:ascii
@REM █ ▄ ▀

echo.
echo. █▀▀▀▀▀▀▀██ █▀▀▀█ █▀▀▀███▀▀▀█ █▀▀▀▀▀▀█ █▀▀▀█      █▀▀▀▀▀▀▀██ █▀▀▀█    ██▀▀▀▀▀▀██ ██▀▀▀▀▀▀██ █▀▀▀▀▀▀█ █▀▀▀▀▀▀▀▀▀█
echo. ▄        ▄ ▄   ▄  ▄   ▄   ▄  ▄      ▄ ▄   ▄      ▄        ▄ ▄   ▄    ▄        ▄ ▄        ▄ ▄      ▄ ▄         ▄
echo. ▀   ▀▀   ▀ ▀   ▀   ▀     ▀   ▀   ▀▀▀▀ ▀   ▀      ▀   ▀▀   ▀ ▀   ▀    ▀   ▀▀   ▀ ▀   ▀▀   ▀ ▀   ▀▀▀▀ ▀▀▀▀   ▀▀▀▀
echo. █   ▄▄▄▄██ █   █    █   █    █   ▀█   █   █      █   ▄▄▄▄██ █   █    █   ▄▄   █ █   ██   █ █   ▀█      █   █
echo. ▄   ▄      ▄   ▄   ▄     ▄   ▄   ▄▄▄▄ ▄   ▄▄▄▄   ▄   ▄      ▄   ▄▄▄▄ ▄   ▄▄   ▄ ▄   ▄▄   ▄ ▄   ▄▄▄▄    ▄   ▄
echo. ▀   ▀      ▀   ▀  ▀   ▀   ▀  ▀      ▀ ▀      ▀   ▀   ▀      ▀      ▀ ▀   ▀▀   ▀ ▀   ▀▀   ▀ ▀      ▀    ▀   ▀
echo. █▄▄▄█      █▄▄▄█ █▄▄▄███▄▄▄█ █▄▄▄▄▄▄█ █▄▄▄▄▄▄█   █▄▄▄█      █▄▄▄▄▄▄█ █▄▄▄██▄▄▄█ █▄▄▄██▄▄▄█ █▄▄▄▄▄▄█    █▄▄▄█
echo.
echo.        ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
echo.
echo.                               █▀▀▀▀▀▀█   ██▀▀▀▀██   █▀▀▀▀▀██   ██▀▀▀▀██  █▀▀██▀▀█
echo.                               ▄▄▄  ▄▄▄   ▄  ▄▄  ▄   ▄  ▄▄  ▄   ▄  ▄▄  ▄   ▄    ▄
echo.                                 ▀  ▀     ▀  ▀▀  ▀   ▀  ▀▀  ▀   ▀      ▀    ▀  ▀
echo.                                 █  █     █  ██  █   █  ██  █   █  ██  █    █  █
echo.                                 ▄  ▄     ▄▄    ▄▄   ▄     ▄▄   ▄  ▄▄  ▄    ▄  ▄
echo.                                 ▀▀▀▀     ▀▀▀▀▀▀▀▀   ▀▀▀▀▀▀▀▀   ▀▀▀▀▀▀▀▀    ▀▀▀▀
echo.
echo.

:mainMenu
echo.                                     ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
echo.                                    █                                      █
echo.                                    █ Choose from the following actions:   █
echo.                                    █ ==================================== █
echo.                                    █                                      █
echo.                                    █ 1: Open Pixel Planet Today webpages  █
echo.                                    █ 2: Open Terrabyte pages              █
echo.                                    █ 3: Open Explorer ("days" folder)     █
echo.                                    █ A: Open All                          █
echo.                                    █ X or C: EXIT                         █
echo.                                    █                                      █
echo.                                     ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀
echo.

set /p menuInput=:
if %menuInput%==A goto allOptions
if %menuInput%==a goto allOptions
if %menuInput%==1 goto openPixelPagesOnly
if %menuInput%==2 goto openTbPagesOnly
if %menuInput%==3 goto openExplorerOnly
if %menuInput%==X goto exit
if %menuInput%==x goto exit
if %menuInput%==C goto exit
if %menuInput%==c goto exit
goto badEntry


:allOptions
call :openPixelPages x
call :openTbPages x
call :openExplorer x
goto exit


:openPixelPagesOnly
call :openPixelPages x
goto newInstance

:openPixelPages
@REM Pixel Planet Today Pages
start "Edge" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --profile-directory="Profile 1"
echo starting Edge in Profile 1 (Pixel Planet Today)...

start "Meta Creator Studio" "https://business.facebook.com/latest/content_calendar?asset_id=106945221034132&nav_ref=page_composer_interruption&business_id=426922484643463"
echo opening Meta Creator Studio
start "Instagram" "https://www.instagram.com/pixelplanettoday/"
echo opening Instagram
start "Facebook" "https://www.facebook.com/pixelplanettoday/?ref=pages_you_manage"
echo opening Facebook
start "We Don't Have Time" "https://app.wedonthavetime.org/"
echo opening We Don't Have Time
start "Google Drive > Carbonii" "https://drive.google.com/drive/folders/13WihWMy9Rm658CKBLY3l1qfo_Ck3-7Ds"
echo opening Google Drive (Carbonii)
goto:eof


:openTbPagesOnly
call :openTbPages x
goto newInstance

:openTbPages
@REM Terrabyte Pages
start "Edge" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --profile-directory="Profile 3"
echo starting Edge in Profile 3 (Terrabyte)...

start "Twitter" "https://www.twitter.com/TerrabyteEco"
echo opening Twitter
start "Mastodon" "https://mastodon.eco"
echo opening Mastodon
goto:eof


:openExplorerOnly
call :openExplorer x
goto newInstance

:openExplorer
if not exist "%~dp0%file-paths\ppt-days.txt" goto noFolder
set /p pptfilepath=<%~dp0%file-paths\ppt-days.txt

echo opening in File Explorer...
%SystemRoot%\explorer.exe %pptfilepath%
goto:eof


:noFolder
echo unable to open File Explorer; folder not found
goto mainMenu


:badEntry
echo unknown character entry; returning to main menu
goto mainMenu


:exit
echo closing batch
exit


:newInstance
start %~dp0%new-post.bat
exit

