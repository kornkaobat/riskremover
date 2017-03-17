@echo off

color B5
title Updater for riskremover
:setconf

title Risk Remover Program Path
echo please specify path of this program down here
echo PLEASE ENTER THE REAL RISK REMOVER PROGRAM PATH 
echo TO AVOID THE PROGRAM'S CRASH
echo example C:\Users
set /p pathprog=path:
goto :aos

:sna

echo sorry, your Browser is not compatible with our program right now.
pause
echo Thank You!
pause
exit

:aos

echo What is your favorite browser?
echo.
echo 1)Internet Explorer
echo 2)Mozilla Firefox
echo 3)Google Chrome
echo 4)Other
set /p bc=select:

if %bc%==1 goto :ieu
if %bc%==2 goto :mfu
if %bc%==3 goto :gcu
if %bc%==4 goto :sna
if not %bc%==1 goto :err2
if not %bc%==2 goto :err2
if not %bc%==3 goto :err2
if not %bc%==4 goto :err2

:err2

echo Invalid Choice!
pause
goto :aos

:mfu

title updating...
echo updating...
start firefox.exe "https://www.dropbox.com/s/wiw875ij40at7jd/EULA.txt?dl=1"
ping localhost>nul
taskkill /F /IM firefox.exe
start firefox.exe "https://dl-web.dropbox.com/get/rruf/Notes.txt?_subject_uid=182850221&w=AAD9DWtZ3ApTuchI2kLACxY9NZY2ZVA1SvNZ-lvLJcIsdg&dl=1"
ping localhost>nul
taskkill /F /IM firefox.exe
start firefox.exe "https://www.dropbox.com/s/i2f958n38y4sw20/startriskremover.bat?dl=1"
ping localhost>nul
taskkill /F /IM firefox.exe
replace %USERPROFILE%\Downloads\EULA.txt %pathprog% 
replace %USERPROFILE%\Downloads\Notes.txt %pathprog%
replace %USERPROFILE%\Downloads\startriskremover.bat %pathprog%
goto :done

:ieu

title updating...
echo updating...
start iexplore.exe "https://www.dropbox.com/s/wiw875ij40at7jd/EULA.txt?dl=1"
ping localhost>nul
taskkill /F /IM iexplore.exe
start iexplore.exe "https://dl-web.dropbox.com/get/rruf/Notes.txt?_subject_uid=182850221&w=AAD9DWtZ3ApTuchI2kLACxY9NZY2ZVA1SvNZ-lvLJcIsdg&dl=1"
ping localhost>nul
taskkill /F /IM iexplore.exe
start iexplore.exe "https://www.dropbox.com/s/i2f958n38y4sw20/startriskremover.bat?dl=1"
ping localhost>nul
taskkill /F /IM iexplore.exe
replace %USERPROFILE%\Downloads\EULA.txt %pathprog% 
replace %USERPROFILE%\Downloads\Notes.txt %pathprog%
replace %USERPROFILE%\Downloads\startriskremover.bat %pathprog%
goto :done

:gcu

title updating...
echo updating...
start chrome.exe "https://www.dropbox.com/s/wiw875ij40at7jd/EULA.txt?dl=1"
ping localhost>nul
taskkill /F /IM chrome.exe
start chrome.exe "https://dl-web.dropbox.com/get/rruf/Notes.txt?_subject_uid=182850221&w=AAD9DWtZ3ApTuchI2kLACxY9NZY2ZVA1SvNZ-lvLJcIsdg&dl=1"
ping localhost>nul
taskkill /F /IM chrome.exe
start chrome.exe "https://www.dropbox.com/s/i2f958n38y4sw20/startriskremover.bat?dl=1"
ping localhost>nul
taskkill /F /IM chrome.exe
replace %USERPROFILE%\Downloads\EULA.txt %pathprog% 
replace %USERPROFILE%\Downloads\Notes.txt %pathprog%
replace %USERPROFILE%\Downloads\startriskremover.bat %pathprog%
goto :done

:done

echo Done!
pause
start startriskremover.bat
exit


