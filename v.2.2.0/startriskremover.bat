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
echo Risk Remover,Copyright (C) 2013-2015 Watcharakorn Kaobath and Jakkapong Hermann Hemla
echo.
echo This program comes with ABSOLUTELY NO WARRANTY; for details view EULA after 1 slide.
echo.
echo This is free software, and you are welcome to redistribute it under certain conditions,
echo.
echo 1. You are NOT COPYING AND MAKE A NEW SOFTWARE or MAKE A NEW SOFTWARE WITH YOUR NAME WITH IT.
echo 2. You agreed that if you violated 1. you will violate copyright laws for your country too.
echo 3 You must take the DMCA test in my blog page named devcenter: riskremove.blogspot.com
echo 3.1 Instructions in the blog page and the DMCA test.
echo 3.2 Hacking the DMCA test or lie in the test, You will be a no trustworthy person and shall not develop program with us.
echo 3.3 Already finished DMCA and do what the instruction says, wait an email from me that included the dev version of riskremover.
echo 3.4 Enjoy! Welcome to our team! Your work will be reviewed by me before releasing to the blog page!
echo.
pause
goto :warning 

:warning
cls
title
echo Risk Remover Does not warranty that this system won't broke while using this
echo tool.
echo Use This tool AT YOUR OWN RISK!
echo Also, I can't warranty you that this tool would remove all the malware in the
echo system.
echo Please donate me a list of malwares names (EX:ILOVEYOU.vbs) to help me add 
echo all of this to the Risk Remover's Database.
echo Report Bugs/Issues to me at the riskremove.blogspot.com
echo Go to Bugs/Issues Report page in that blog and report it in a comment 
echo section below.
echo DON'T EVER EDIT THIS PROGRAM UNLESS YOU KNOW WHAT YOU ARE DOING!
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
title Checking Files...
echo Checking Files...
REM //DONT MESS HERE//
if exist %pathprog%\EULA.txt goto :Eula
if exist %pathprog%\Notes.txt goto :Eula
if exist %pathprog%\HashBase.txt goto :Eula
if exist %pathprog%\index.html goto :Eula
if exist %pathprog%\main.c goto :Eula
if exist %pathprog%\md5.h goto :Eula
if exist %pathprog%\Makefile goto :Eula
if exist %pathprog%\md5.exe goto :Eula
if exist %pathprog%\md5.vcproj goto :Eula
if exist %pathprog%\rfc1321.html goto :Eula
if exist %pathprog%\md5s.png goto :Eula
if exist %pathprog%\md5.png goto :Eula
if exist %pathprog%\md5.c goto :Eula
if exist %pathprog%\md5.sin goto :Eula
if exist %pathprog%\rfc1321.txt goto :Eula
if not exist %pathprog%\EULA.txt goto :404/3
if not exist %pathprog%\Notes.txt goto :404/3
if not exist %pathprog%\HashBase.txt goto :404/3
if not exist %pathprog%\index.html goto :404/3
if not exist %pathprog%\main.c goto :404/3
if not exist %pathprog%\md5.h goto :404/3
if not exist %pathprog%\Makefile goto :404/3
if not exist %pathprog%\md5.exe goto :404/3
if not exist %pathprog%\md5.vcproj goto :404/3
if not exist %pathprog%\rfc1321.html goto :404/3
if not exist %pathprog%\md5s.png goto :404/3
if not exist %pathprog%\md5.png goto :404/3
if not exist %pathprog%\md5.c goto :404/3
if not exist %pathprog%\md5.sin goto :404/3
if not exist %pathprog%\rfc1321.txt goto :404/3
REM //DONT MESS HERE//

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
title -----Risk Remover v.2.2.0-----
echo Risk Remover:Program version 2.2.0 Database version 1.0.2015 SafeBrowser Database version 0.1.2015 MD5 Database count 786432
pause
goto :menu2
:menu2
cls
echo Creation of Korn Studio (Antivirus) .Inc
pause
goto:menu
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
echo 1)Filename scan
echo 2)MD5 Scan (Beta)
echo 3)Upgrade
echo 4)Protection (Future program update)
echo 5)Release Notes
echo 6)exit
echo 7)Refresh Date and Time
echo 8)SafeBrowser
echo 9)Change computer date
echo 10)Change computer time
echo 11)Credits
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
color 04
title MD5 scanner
echo.
echo Warning!
echo.
echo This feature is in beta phrase.
echo.
echo This moudule will auto remove malware when scanning.
echo.
echo This moldule could delete system or private files without any intent to do it.
echo.
echo We are not responsible for any damage to your computer by using this beta moldule.
echo.
echo You have been WARNED!
echo.
pause
cls
color B5
REM Copyright 2014 BatchProg
echo please specify path to scan down here
echo example C:\Users
echo AND PLEASE DONT ENTER SOMETHING THAT ISNT A COMPUTER PATH
echo IF YOU ENTER SOMETHING THAT ISNT A COMPUTER PATH THE PROGRAM WILL CRASH
set /p pathscan2=path:
cls
title MD5 scanner - Scan and Autodelete [1/4]
set "$base=%~dp0\HashBase.txt"
cd /d "%pathscan2%"
title MD5 scanner - Scan and Autodelete [2/4]
for /r %%f in (*) do %~dp0\md5.exe %%f >> %~dp0\output.txt
cd /d "%~dp0"
title MD5 scanner - Scan and Autodelete [3/4]
for /f "tokens=1* delims= " %%a in (output.txt) do find "%%a" "%$base%" >nul && del /f "%%b"
title MD5 scanner - Scan and Autodelete [4/4]
del /f %~dp0\output.txt
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
echo Auto scan :NITH*
echo Auto Upgrade :NITH*
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

:404/3
cls
echo failed to load.File Missing.
pause
cls
echo creating error log...
echo # Log for this session Started # >> error404.txt
echo Failed to load Missing File Error >> error404.txt
echo Risk Remover v 2.2.0 >> error404.txt
echo Database version v 1.0.2015 >> error404.txt
echo SafeBrowser Database version v 0.1.2015 >> error404.txt
echo MD5 Database count 786432 >> error404.txt 
date /T >> error404.txt
time /T >> error404.txt
echo # Log for this session Ended # >> error404.txt
cls
echo Finshed!
pause
exit

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
echo Jakkapong Hermann Hemla
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
pause
goto :menu 

  