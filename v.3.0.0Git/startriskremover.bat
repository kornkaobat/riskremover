@echo off
cls
color B5
mode con cols=999 lines=999
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------    
:osl
cls
title Copyright and Disclaimer (Read EULA)
echo Risk Remover, Copyright (C) 2013-2019 Watcharakorn Kaobath and Jakkapong Hermann Hemla
echo.
echo This program comes with ABSOLUTELY NO WARRANTY; for details view EULA after 1 slide.
echo.
echo This is free software, and you are welcome to redistribute it under GNU_GPL v.3.0 license.
echo.
echo All issues/development on https://github.com/kornkaobat/riskremover
echo.
echo All News/Updates/Downloads on https://riskremove.blogspot.com
echo.
pause
goto :warning 

:warning
cls
title Warning
echo Risk Remover Does not warranty that this system won't broke while using this
echo tool.
echo Use This tool AT YOUR OWN RISK!
echo Also, I can't warranty you that this tool would remove all the malware in the
echo system.
echo DON'T EVER EDIT THIS PROGRAM UNLESS YOU KNOW WHAT YOU ARE DOING!
echo.
pause
goto :pathprog
 
:pathprog
cls
title setting up...
set pathprog=%~dp0
cls
goto :checkfiles

:checkfiles
cls
title Verification
echo Due to the sheer size of the scanner, file authentication will be through 7z package SHA-256 number
echo on this website : https://riskremove.blogspot.com/p/sha256.html
echo.
pause
goto :Eula

:Eula
cls
title Eula
start EULA.txt
echo 1)Agree
echo 2)Decline
set /p num456=Choice:

if %num456%==1 goto :start
if %num456%==2 exit
if not %num456%==1 goto :404/2
if not %num456%==2 goto :404/2

:start
cls
title -----Risk Remover v.3.0.0-----
echo Program version 3.0.0 
echo Database version Legacy 
echo SafeBrowser Database version 0.1.2015 
echo MD5 Database count 33226744
pause
goto :menu2
:menu2
cls
echo Creation of Korn Studio (Antivirus) .Inc
pause
goto :menu
:menu
cls
title MENU
echo Risk Remover Main Menu
echo.
echo Computer's Date
date /T
echo.
echo Computer's Time
time /T
echo. 
echo 1)Filename scan (Legacy)
echo 2)MD5 Scan (*LTS)
echo 3)Upgrade
echo 4)Protection (Future program update)
echo 5)Release Notes
echo 6)exit
echo 7)Refresh Date and Time
echo 8)SafeBrowser
echo 9)Change computer date
echo 10)Change computer time
echo 11)Credits
echo.
echo *LTS stands for Long-Term Support for v.3.X.X
set /p number1=select:

if %number1%==1 goto :TS
if %number1%==2 goto :MD5
if %number1%==3 goto :IU
if %number1%==4 goto :FMN
if %number1%==5 start Notes.txt&&goto :menu
if %number1%==6 exit
if %number1%==7 goto :menu
if %number1%==8 goto :SB
if %number1%==9 goto :CD
if %number1%==10 goto :CT
if %number1%==11 goto :CRE
if not %number1%==1 goto :404
if not %number1%==2 goto :404
if not %number1%==3 goto :404 
if not %number1%==4 goto :404
if not %number1%==5 goto :404
if not %number1%==6 goto :404
if not %number1%==7 goto :404
if not %number1%==8 goto :404
if not %number1%==9 goto :404
if not %number1%==10 goto :404
if not %number1%==11 goto :404
:QS
cls
title Scanner W0rking....
echo Scanning Risk...
if exist %pathscan%\ILOVEYOU.vbs goto :in1
if exist %pathscan%\brez251.exe goto :in1
if exist %pathscan%\net19.exe goto :in1
if exist %pathscan%\kl.exe goto :in1
if exist %pathscan%\ws.exe goto :in1
if exist %pathscan%\cpu.exe goto :in1
if exist %pathscan%\nvm.exe goto :in1
if exist %pathscan%\amd.exe goto :in1
if exist %pathscan%\qiji.exe goto :in1
if exist %pathscan%\RavMonE.exe goto :in1
if exist %pathscan%\ravmon.exe goto :in1
if exist %pathscan%\baidu.exe goto :in1
if exist %pathscan%\baiduav.exe goto :in1
if exist %pathscan%\baiduav2015.exe goto :in1
if exist %pathscan%\av2015.exe goto :in1
if exist %pathscan%\baiduupdate.exe goto :in1
if exist %pathscan%\baiducloudscan.exe goto :in1
if exist %pathscan%\xp2015av.exe goto :in1
if exist %pathscan%\pornxxx.avi.exe goto :in1
if exist %pathscan%\porn.avi.exe goto :in1
if exist %pathscan%\porn18.avi.exe goto :in1
if exist %pathscan%\7av.exe goto :in1
if exist %pathscan%\is2015.exe goto :in1 
if exist %pathscan%\fsav.exe goto :in1
if exist %pathscan%\fsav2015.exe goto :in1
REM //start not infect moldule here//
if not exist %pathscan%\ILOVEYOU.vbs goto :ni1
if not exist %pathscan%\brez251.exe goto :ni1
if not exist %pathscan%\net19.exe goto :ni1
if not exist %pathscan%\kl.exe goto :ni1
if not exist %pathscan%\ws.exe goto :ni1
if not exist %pathscan%\cpu.exe goto :ni1
if not exist %pathscan%\nvm.exe goto :ni1
if not exist %pathscan%\amd.exe goto :ni1
if not exist %pathscan%\qiji.exe goto :ni1
if not exist %pathscan%\RavMonE.exe goto :ni1
if not exist %pathscan%\ravmon.exe goto :ni1
if not exist %pathscan%\baidu.exe goto :ni1
if not exist %pathscan%\baiduav.exe goto :ni1
if not exist %pathscan%\baiduav2015.exe goto :ni1
if not exist %pathscan%\av2015.exe goto :ni1
if not exist %pathscan%\baiduupdate.exe goto :ni1
if not exist %pathscan%\baiducloudscan.exe goto :ni1
if not exist %pathscan%\xp2015av.exe goto :ni1
if not exist %pathscan%\pornxxx.avi.exe goto :ni1
if not exist %pathscan%\porn.avi.exe goto :ni1
if not exist %pathscan%\porn18.avi.exe goto :ni1
if not exist %pathscan%\7av.exe goto :ni1
if not exist %pathscan%\is2015.exe goto :ni1 
if not exist %pathscan%\fsav.exe goto :ni1
if not exist %pathscan%\fsav2015.exe goto :ni1
:in1
cls
title Infected!!!
echo Infected!!!Starting removal...
del %pathscan%\ILOVEYOU.vbs 
del %pathscan%\brez251.exe
del %pathscan%\net19.exe
del %pathscan%\kl.exe
del %pathscan%\ws.exe
del %pathscan%\cpu.exe
del %pathscan%\nvm.exe
del %pathscan%\amd.exe
del %pathscan%\qiji.exe
del %pathscan%\RavMonE.exe
del %pathscan%\ravmon.exe
del %pathscan%\baidu.exe 
del %pathscan%\baiduav.exe 
del %pathscan%\baiduav2015.exe 
del %pathscan%\av2015.exe 
del %pathscan%\baiduupdate.exe
del %pathscan%\baiducloudscan.exe 
del %pathscan%\xp2015av.exe 
del %pathscan%\pornxxx.avi.exe 
del %pathscan%\porn.avi.exe 
del %pathscan%\porn18.avi.exe 
del %pathscan%\7av.exe 
del %pathscan%\is2015.exe 
del %pathscan%\fsav.exe 
del %pathscan%\fsav2015.exe
cls
echo finshed!
shutdown -r -t 100 -c "It needs to be reboot for complete removal.Save and close all programs before rebooting."
exit

:ni1
cls
title clean
echo YAHOO!!!Your computer is not infected!!!
pause
goto :menu

:MD5
cls
title MD5 scanner
echo.
echo Report any bugs through https://github.com/kornkaobat/riskremover/issues 
echo.
pause
goto :dbpatch

:dbpatch
cls
color B5
title MD5 scanner - Database Updates [0/4] 
cd /d "%~dp0\wget-1.11.4-1-bin\bin"
wget --timeout=30 --timestamping --continue --no-check-certificate https://media.githubusercontent.com/media/Richienb/virusshare-hashes/master/virushashes.txt
pause
goto :Asksect

:Asksect
cls
title MD5 scanner - Database Updates [0/4]
echo Do you want to retry the update?
echo.
echo Y/N
echo.
set /p chc45=
if %chc45%==y goto :dbpatch
if %chc45%==Y goto :dbpatch
if %chc45%==n goto :scan
if %chc45%==N goto :scan
goto :Asksect

:scan
cd /d "%~dp0" 
cls
title MD5 scanner - Database Updates [0/4]
echo Checked for Database Updates! Proceeding to Scan Engine...
echo.
pause 
cls
title MD5 scanner - Scan Path [0/4]
REM Copyright 2014 BatchProg
echo please specify path to scan down here
echo example C:\Users
echo AND PLEASE DONT ENTER SOMETHING THAT ISNT A COMPUTER PATH
echo IF YOU ENTER SOMETHING THAT ISNT A COMPUTER PATH THE PROGRAM WILL CRASH
set /p pathscan2=path:
cls
title MD5 scanner - Setting up necessary things [1/4]
del /f /q %~dp0\output.txt
REM for /r %%x in (*) do set /a fcount=%fcount%+1
REM set /a totsecscan=%fcount%*15
REM set /a totminscan=%totsecscan%/60
REM if %totminscan%==0 set /a etascan=%totsecscan% seconds && goto :md5hash
REM set /a tothourscan=%totminscan%/60
REM if %tothourscan%==0 set /a etascan=%totminscan% minutes && goto :md5hash
REM set /a totdayscan=%tothourscan%/24
REM if %totdayscan%==0 set /a etascan=%tothourscan% hours && goto :md5hash
REM set /a etascan=%totdayscan% days
goto :md5hash

:md5hash
cls
title MD5 scanner - Hashing [2/4]
set "$base=%~dp0\wget-1.11.4-1-bin\bin\virushashes.txt"
for /r %%f in (%pathscan2%) do %~dp0\md5.exe "%%f " >> %~dp0\output.txt
cd /d "%~dp0"
title MD5 scanner - Comparing Hashes with known malware hashes [3/4]
cls
echo.
echo Uses a lot of CPU power to process but this is real scanner.
echo It does find real malware but the ability to remove it-
echo is related with the environment it is run on.
echo Run on Safe mode with networking for best results. 
for /f "tokens=1* delims= " %%a in (output.txt) do find "%%a" "%$base%" >nul && del /p /f "%%b"
title MD5 scanner - Deleting Temporary Files [4/4]
del /f /q %~dp0\output.txt
cls
title MD5 scanner - Completed
echo Scan and Delete completed
echo.
pause
goto :menu

:IU
cls
title This feature is in fixing state
echo Fixing....
echo.
echo Sorry for any unincovienence,
echo.
echo DEVTEAM
echo.
pause 
goto :menu 

:FMN
cls
title Protection Info.
echo Protection : Enabled
echo Auto scan :NITV*
echo Auto Upgrade :NITV*
echo.
echo *Not avalible this version.
pause
goto :menu

:404
cls
echo 404:Bad Command
pause
goto :menu 

:404/2
cls
echo 404:Bad Command
pause
goto :Eula

REM :404/3
REM cls
REM echo Failed to load. File Missing.
REM pause
REM cls
REM echo Creating error log...
REM echo # Log for this session Started # >> error404.txt
REM echo Failed to load Missing File Error >> error404.txt
REM echo Risk Remover v 3.0.0 >> error404.txt
REM echo Database version Legacy >> error404.txt
REM echo SafeBrowser Database version v 0.1.2015 >> error404.txt
REM echo MD5 Database count 33226744 >> error404.txt 
REM date /T >> error404.txt
REM time /T >> error404.txt
REM echo # Log for this session Ended # >> error404.txt
REM cls
REM echo Finshed!
REM pause
REM exit

:TS
cls
REM Copyright 2014 BatchProg
echo please specify path to scan down here
echo example C:\Users
echo AND PLEASE DONT ENTER SOMETHING THAT ISNT A COMPUTER PATH
echo IF YOU ENTER SOMETHING THAT ISNT A COMPUTER PATH THE PROGRAM WILL CRASH
set /p pathscan=path:
cls
goto :QS

:SB
cls
title SafeBrowser
echo Dont put http protocol or https protocol or ftp protocol in the front because SafeBrowser will not work if you put that protocol in the front of the url box.
echo.
echo To return to the menu type m or M in the url box.
echo.
echo Please do not enter something that is not a url in the box. If you enter something that is not a url in the box below, the program will crash.
echo.
set /p url=url:

if %url%==martuz.cn goto :mal
if %url%==www.martuz.cn goto :mal
if %url%==orgsite.info goto :mal
if %url%==www.orgsite.info goto :mal
if %url%==d99q.cn goto :mal
if %url%==www.d99q.cn goto :mal
if %url%==gumblar.cn goto :mal
if %url%==www.gumblar.cn goto :mal
if %url%==94.247.2.195 goto :mal
if %url%==googleadsence.biz goto :mal
if %url%==www.googleadsence.biz goto :mal
if %url%==fquerz.cn goto :mal
if %url%==www.fquerz.cn goto :mal
if %url%==Lousecn.cn goto :mal
if %url%==www.Lousecn.cn goto :mal
if %url%==lousecn.cn goto :mal
if %url%==www.lousecn.cn goto :mal
if %url%==Googleanalytics.net goto :mal
if %url%==www.Googleanalytics.net goto :mal
if %url%==googleanalytics.net goto :mal
if %url%==www.googleanalytics.net goto :mal
if %url%==38zu.cn goto :mal
if %url%==www.38zu.cn goto :mal 
if %url%==Hurr-Durr.com goto :mal
if %url%==www.Hurr-Durr.com goto :mal
if %url%==hurr-durr.com goto :mal
if %url%==www.hurr-durr.com goto :mal
if %url%==youareanidiot.org goto :mal
if %url%==www.youareanidiot.org goto :mal
if %url%==youareaidiot.org goto :mal
if %url%==www.youareaidiot.org goto :mal
if %url%==spysheriff.com goto :mal
if %url%==www.spysheriff.com goto :mal
if %url%==V-I-R-U-S.com goto :mal
if %url%==www.V-I-R-U-S.com goto :mal
if %url%==v-i-r-u-s.com goto :mal
if %url%==www.v-i-r-u-s.com goto :mal
if %url%==goggle.com goto :mal
if %url%==www.goggle.com goto :mal
if %url%==pageforsafty.com goto :mal
if %url%==www.pageforsafty.com goto :mal
if %url%==findthisall.com goto :mal
if %url%==www.findthisall.com goto :mal
if %url%==givemeavirus.net goto :mal
if %url%==www.givemeavirus.net goto :mal
if %url%==m goto :menu
if %url%==M goto :menu 
if not %url%==martuz.cn goto :safeurl
if not %url%==www.martuz.cn goto :safeurl
if not %url%==orgsite.info goto :safeurl
if not %url%==www.orgsite.info goto :safeurl
if not %url%==d99q.cn goto :safeurl
if not %url%==www.d99q.cn goto :safeurl
if not %url%==gumblar.cn goto :safeurl
if not %url%==www.gumblar.cn goto :safeurl
if not %url%==94.247.2.195 goto :safeurl
if not %url%==googleadsence.biz goto :safeurl
if not %url%==www.googleadsence.biz goto :safeurl
if not %url%==fquerz.cn goto :safeurl
if not %url%==www.fquerz.cn goto :safeurl
if not %url%==Lousecn.cn goto :safeurl
if not %url%==www.Lousecn.cn goto :safeurl
if not %url%==lousecn.cn goto :safeurl
if not %url%==www.lousecn.cn goto :safeurl
if not %url%==Googleanalytics.net goto :safeurl
if not %url%==www.Googleanalytics.net goto :safeurl
if not %url%==googleanalytics.net goto :safeurl
if not %url%==www.googleanalytics.net goto :safeurl
if not %url%==38zu.cn goto :safeurl
if not %url%==www.38zu.cn goto :safeurl 
if not %url%==Hurr-Durr.com goto :safeurl
if not %url%==www.Hurr-Durr.com goto :safeurl
if not %url%==hurr-durr.com goto :safeurl
if not %url%==www.hurr-durr.com goto :safeurl
if not %url%==youareanidiot.org goto :safeurl
if not %url%==www.youareanidiot.org goto :safeurl
if not %url%==youareaidiot.org goto :safeurl
if not %url%==www.youareaidiot.org goto :safeurl
if not %url%==spysheriff.com goto :safeurl
if not %url%==www.spysheriff.com goto :safeurl
if not %url%==V-I-R-U-S.com goto :safeurl
if not %url%==www.V-I-R-U-S.com goto :safeurl
if not %url%==v-i-r-u-s.com goto :safeurl
if not %url%==www.v-i-r-u-s.com goto :safeurl
if not %url%==goggle.com goto :safeurl
if not %url%==www.goggle.com goto :safeurl
if not %url%==pageforsafty.com goto :safeurl
if not %url%==www.pageforsafty.com goto :safeurl
if not %url%==findthisall.com goto :safeurl
if not %url%==www.findthisall.com goto :safeurl
if not %url%==givemeavirus.net goto :safeurl
if not %url%==www.givemeavirus.net goto :safeurl

:mal
cls
title Blocked URL
echo The URL that you've typed in contains a malware or a malicious script so you were denied to access that URL.
pause
echo For your safety,
echo.
echo DEVTEAM
pause
goto :SB

:safeurl
cls
title Safe URL
echo This is a safe url. No malware or a malicious script were found based on our database.
echo.
echo Press any button to go and choose your favourite browser.
pause
goto :sufb

:sufb
cls
title Choose your favourite browser
echo Choose your favourite browser
echo.
echo 1) Internet explorer
echo 2) Mozilla Firefox
echo 3) Google Chrome
echo 4) Other
set /p sufb1=select:

if %sufb1%==1 goto :iefb
if %sufb1%==2 goto :mozfb
if %sufb1%==3 goto :gcfb
if %sufb1%==4 goto :oth
if not %sufb1%==1 goto :404/4
if not %sufb1%==2 goto :404/4
if not %sufb1%==3 goto :404/4
if not %sufb1%==4 goto :404/4

:404/4
cls
title Invalid Choice
echo Invalid Choice
pause
goto :sufb 

:iefb
cls
title Internet Explorer
start iexplore.exe "%url%" 
goto :SB

:mozfb
cls
title Mozilla Firefox 
start firefox.exe "%url%" 
goto :SB

:gcfb
cls
title Google Chrome 
start chrome.exe "%url%" 
goto :SB

:oth
cls
title Sorry
echo Sorry, your browser is incompatible with our program right now.
pause
echo We apologize,
echo.
echo DEVTEAM
pause
goto :sufb 

:CD
cls
title Change date menu
echo.
date
echo.
goto :menu

:CT
cls
title Change time menu
echo.
time
echo.
goto :menu

:CRE
cls
title Credits
echo --Development--
echo.
echo Watcharakorn Kaobath
echo.
echo --Testing--
echo.
echo Jakkapong Hermann Hemla ( Retired )
echo.
echo --Thanks--
echo.
echo ZombieCity (c) Angelis for inspiration about some codes
echo.
echo Batch Programming Tutorials ( Search in Youtube )
echo.
echo Farmer.bat ( Search in Youtube ) for inspiration about some codes
echo.
echo http://stackoverflow.com/questions/1894967/how-to-request-administrator-access-inside-a-batch-file for admin UAC codes
echo.
echo TheBatchies http://www.instructables.com/answers/how-can-a-batch-file-be-run-fullscreen/ for fullscreen 
echo.
echo SachaDee http://stackoverflow.com/questions/40192417/how-to-make-a-md5-batch-virus-scanner for md5 scanning codes
echo.
echo John Walker's Formilab MD5 Command Line Message Digest Utility http://www.fourmilab.ch/md5/ for md5 digester
echo.
echo https://virusshare.com/hashes.4n6 for md5 virus database
echo.
echo https://github.com/Richienb/virusshare-hashes for a collection of md5 weekly hash updates.
echo.
pause
goto :menu 

  