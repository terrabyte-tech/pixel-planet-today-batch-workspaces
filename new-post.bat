@ECHO OFF
chcp 65001

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

echo opening Meta Creator Studio
if not exist "%~dp0%file-paths\secret_meta-studio_url.txt" goto badEntry
set /p metaurl=<%~dp0%file-paths\secret_meta-studio_url.txt
start "Meta Creator Studio" %metaurl%

echo opening Instagram
start "Instagram" "https://www.instagram.com/pixelplanettoday/"

echo opening Facebook
start "Facebook" "https://www.facebook.com/pixelplanettoday/?ref=pages_you_manage"

echo opening We Don't Have Time
start "We Don't Have Time" "https://app.wedonthavetime.org/"

echo opening Google Drive (Carbonii)
if not exist "%~dp0%file-paths\secret_carbonii_url.txt" goto badEntry
set /p carboniiurl=<%~dp0%file-paths\secret_carbonii_url.txt
start "Google Drive > Carbonii" %carboniiurl%
goto:eof


:openTbPagesOnly
call :openTbPages x
goto newInstance

:openTbPages
@REM Terrabyte Pages
start "Edge" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --profile-directory="Profile 3"
echo starting Edge in Profile 3 (Terrabyte)...

start "Mastodon" "https://mastodon.eco"
echo opening Mastodon
goto:eof


:openExplorerOnly
call :openExplorer x
goto newInstance

:openExplorer
if not exist "%~dp0%file-paths\secret_ppt-days_folder.txt" goto noFolder
set /p pptfilepath=<%~dp0%file-paths\secret_ppt-days_folder.txt

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

