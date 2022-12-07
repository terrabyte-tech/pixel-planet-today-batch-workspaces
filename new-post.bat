@ECHO OFF

@REM Profile 1 is Pixel; Profile 2 is GHM; Profile 3 is Terrabyte
@REM ____________________________________________________________

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
echo opening Google Drive > Carbonii


@REM Terrabyte Pages
start "Edge" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --profile-directory="Profile 3"
echo starting Edge in Profile 3 (Terrabyte)...

start "Twitter" "https://www.twitter.com/TerrabyteEco"
echo opening Twitter
start "Mastodon" "https://mastodon.eco"
echo opening Mastodon

echo closing batch