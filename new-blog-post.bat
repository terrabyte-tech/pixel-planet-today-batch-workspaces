@ECHO OFF

@REM Profile 1 is Pixel; Profile 2 is GHM; Profile 3 is Terrabyte
@REM ____________________________________________________________

@REM Pixel Planet Today Pages
start "Edge" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --profile-directory="Profile 1"
echo starting Edge in Profile 1 (Pixel Planet Today)...

start "Pixel Planet Today Blog: Admin" "https://blog.pixelplanettoday.com/wp-admin"
echo opening Pixel Planet Today Blog: Admin
start "Pixel Planet Today Blog" "https://blog.pixelplanettoday.com"
echo opening Pixel Planet Today Blog

echo closing batch