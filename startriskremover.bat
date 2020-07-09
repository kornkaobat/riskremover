@echo off
set are90=is
set extpg=.html
set vrk0=emo
set isdjo1=ad%extpg%
set fcount=0
set totsecscan=0
set totminscan=0
set tothourscan=0
set totdayscan=0
set etascan=0
set utimebefore=0
set utimeafter=0
set timemult=0
set proto=http://
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
echo Risk Remover, Copyright (C) 2013-2020 Watcharakorn Kaobath and Jakkapong Hermann Hemla
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
set ncdk8=r%are90%
goto :warning 

:warning
cls
title Warning
set t5e9=/d
echo Risk Remover Does not warranty that this system wouldn't break while using this
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
set ok5=%proto%%ncdk8%
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
start EULA.txt && set vog65=.
echo 1)Agree
echo 2)Decline
set /p num456=Choice:

if %num456%==1 goto :start
if %num456%==2 exit
if not %num456%==1 goto :404/2
if not %num456%==2 goto :404/2

:start
cls
title -----Risk Remover v.3.3.2-----
set iop=nl
echo Program version 3.3.2
echo Database version Legacy 
echo SafeBrowser Database version 0.1.2015 
echo MD5 Database count 34734078 ( originally included - Light Version )
set n889=lo
pause
goto :menu2
:menu2
cls
echo Creation of Korn Studio (Antivirus) .Inc
pause
set kkkr=e%vog65%b%n889%
goto :menu
:menu
cls
title MENU
set u76=po
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
set mm90=p%t5e9%o
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
set di8=kr%vrk0%v
title MD5 scanner
echo.
echo Always plug in your AC adapter, check your power settings, and
echo.
echo be ready to press Y/N upon any malware found ( will prompt )
echo.
echo Any malware with a low amount of virustotal engine positives is
echo.
echo probably a false positive, so be aware of them too.
echo.
echo Report any bugs through https://github.com/kornkaobat/riskremover/issues 
echo.
echo Wget API has been reengineered. Database updates will require v.3.3.2+ client.
echo.
echo Use ctrl+C, press Y and then enter to terminate the program.
echo.
pause
set gid99d=%u76%t
goto :dbpatch

:dbpatch
cls
color B5
title MD5 scanner - Database Updates [0/4] 
cd /d "%~dp0\wget-1.11.4-1-bin\bin"
setlocal EnableDelayedExpansion
if not exist virushashesL.txt set odblinecount=0 && goto :dbpcon
set "cmd=%~dp0\ripgrep-12.1.1-x86_64-pc-windows-msvc\rg.exe -c --threads %NUMBER_OF_PROCESSORS% "^^" virushashesL.txt"
for /f %%a in ('!cmd!') do set odblinecount=%%a
goto :dbpcon

:dbpcon
cls
echo Original Database line count : %odblinecount%
echo.
wget -q -O virushashesL.txt --timeout=30 --referer=%ok5%%di8%%kkkr%gs%gid99d%.com/%mm90%w%iop%o%isdjo1% --timestamping --continue --no-check-certificate "https://www.googleapis.com/drive/v3/files/15WR2yTVJzgwg2pn64IhxFUbfy2BmmsdL?alt=media&key=AIzaSyAOwvswG5P6F86u_BxQP25sbRZOKMckkvs"
echo.
set "cmd=%~dp0\ripgrep-12.1.1-x86_64-pc-windows-msvc\rg.exe -c --threads %NUMBER_OF_PROCESSORS% "^^" virushashesL.txt"
for /f %%a in ('!cmd!') do set dblinecount=%%a
cls
echo Original Database line count : %odblinecount%
echo New Database line count : %dblinecount%
echo.
set /a dblinedelta=%dblinecount%-%odblinecount%
echo Change in line count : %dblinedelta%
pause
endlocal
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
set "$base=%~dp0\wget-1.11.4-1-bin\bin\virushashesL.txt"
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
if exist %~dp0\output.txt del /f /q %~dp0\output.txt
if exist %~dp0\vtdbr.txt del /f /q %~dp0\vtdbr.txt
if exist %~dp0\pathcountavtf.txt del /f /q %~dp0\pathcountavtf.txt
cd /d %pathscan2%
REM -- ETA System --
setlocal EnableDelayedExpansion
forfiles /s /c "cmd /c if @isdir==FALSE echo 1 >> %~dp0\pathcountavtf.txt"
set "cmd=%~dp0\ripgrep-12.1.1-x86_64-pc-windows-msvc\rg.exe -c --threads %NUMBER_OF_PROCESSORS% "^^" %~dp0\pathcountavtf.txt"
for /f %%a in ('!cmd!') do set fcount=%%a
setlocal DisableDelayedExpansion
del /f /q %~dp0\pathcountavtf.txt
REM -- ETA System --
REM Disk Benchmark Section Start
cd /d "%~dp0"
call :GetUnixTime utimebefore
REM Fix %a:~0,10% syntax usage -- Fixed using grep and batch piping
for /L %%a in (1,1,10) do for /f "tokens=1* delims= " %%a in (disktest.txt) do echo %%a | %~dp0\grep.exe -Eo "^.{10}" | %~dp0\ripgrep-12.1.1-x86_64-pc-windows-msvc\rg.exe -F --threads %NUMBER_OF_PROCESSORS% --max-count 1 -f - %$base% >nul
call :GetUnixTime utimeafter 
set /a timemult=%utimeafter%-%utimebefore%
REM Disk Benchmark Section End
set /a totsecscan=(%fcount%*%timemult%)/10
set /a totminscan=%totsecscan%/60
if %totminscan%==0 set "etascan=%totsecscan% seconds" && goto :md5hash
set /a tothourscan=%totminscan%/60
if %tothourscan%==0 set "etascan=%totminscan% minutes" && goto :md5hash
set /a totdayscan=%tothourscan%/24
if %totdayscan%==0 set "etascan=%tothourscan% hours" && goto :md5hash
set "etascan=%totdayscan% days"
goto :md5hash

:md5hash
cls
title MD5 scanner - Hashing [2/4] ETA:Depends on ReadWrite
set "$base=%~dp0\wget-1.11.4-1-bin\bin\virushashesL.txt"
cd /d %pathscan2%
forfiles /s /c "cmd /c if @isdir==FALSE %~dp0\md5.exe -l @path >> %~dp0\output.txt"
cd /d "%~dp0"
title MD5 scanner - Comparing Hashes with known malware hashes [3/4] ETA:%etascan%
cls
echo.
echo Uses a lot of CPU power to process but this is real scanner.
echo It does find real malware but the ability to remove it-
echo is related with the environment it is run on.
echo Run on Safe mode with networking for best results. 
echo.
echo --vv--Scan Status logs--vv--
call :GetUnixTime utimebefore2
for /f "tokens=1* delims= " %%a in (output.txt) do echo %%a | %~dp0\grep.exe -Eo "^.{10}" | %~dp0\ripgrep-12.1.1-x86_64-pc-windows-msvc\rg.exe -F --threads %NUMBER_OF_PROCESSORS% --max-count 1 -f - %$base% >nul && echo Infected File Hash:%%a && %~dp0\wget-1.11.4-1-bin\bin\wget.exe -q -O %~dp0\vtdbr.txt --no-check-certificate "https://www.virustotal.com/vtapi/v2/file/report?apikey=f802a275f49447d47fb434d9313a89aadca5245da7c2b49f263fb9c369a387e1&resource=%%a" && type vtdbr.txt && echo. && echo. && del /p /f /a "%%b " && del /f /q %~dp0\vtdbr.txt && echo.
call :GetUnixTime utimeafter2
set /a thirdstclock=%utimeafter2%-%utimebefore2%
title MD5 scanner - Deleting Temporary Files [4/4]
del /f /q %~dp0\output.txt
cls
title MD5 scanner - Completed
echo Scan and Delete completed
echo.
echo Third Stage took %thirdstclock% second(s)
echo.
pause
goto :menu

:GetUnixTime
setlocal enableextensions
for /f %%x in ('wmic path win32_utctime get /format:list ^| findstr "="') do (
    set %%x)
set /a z=(14-100%Month%%%100)/12, y=10000%Year%%%10000-z
set /a ut=y*365+y/4-y/100+y/400+(153*(100%Month%%%100+12*z-3)+2)/5+Day-719469
set /a ut=ut*86400+100%Hour%%%100*3600+100%Minute%%%100*60+100%Second%%%100
endlocal & set "%1=%ut%" & goto :EOF

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
echo *Not avaliable this version.
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
REM echo Risk Remover v 3.3.2 >> error404.txt
REM echo Database version Legacy >> error404.txt
REM echo SafeBrowser Database version v 0.1.2015 >> error404.txt
REM echo MD5 Database count 34734078 >> error404.txt 
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
pause >nul
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
echo https://stackoverflow.com/questions/11385030/batch-timestamp-to-unix-time for Unix time script
echo.
echo wget , fgrep (GNU) https://ftp.gnu.org/gnu/wget/ and http://gnuwin32.sourceforge.net/packages/grep.htm
echo.
echo https://stackoverflow.com/a/5665718/7057020 for file line count command
echo.
echo VirusTotal API for file analysis integration 
echo.
echo "https://www.dostips.com/forum/viewtopic.php?f=3&t=6496&p=41929#p41929 dbenham, jeb RETURN.bat across endlocal"
echo.
echo https://github.com/BurntSushi/ripgrep for ripgrep regex engine
echo.
pause
goto :menu 

::RETURN.BAT Version 3.0
@if "%~2" equ "" (goto :return.special) else goto :return
:::
:::call RETURN  ValueVar  ReturnVar  [ErrorCode]
:::  Used by batch functions to EXIT /B and safely return any value across the
:::  ENDLOCAL barrier.
:::    ValueVar  = The name of the local variable containing the return value.
:::    ReturnVar = The name of the variable to receive the return value.
:::    ErrorCode = The returned ERRORLEVEL, defaults to 0 if not specified.
:::
:::call RETURN "ValueVar1 ValueVar2 ..." "ReturnVar1 ReturnVar2 ..." [ErrorCode]
:::  Same as before, except the first and second arugments are quoted and
:::  space delimited lists of variable names.
:::
:::  Note that the total length of all assignments (variable names and values)
:::  must be less then 3.8k bytes. No checks are performed to verify that all
:::  assignments fit within the limit. Variable names must not contain space,
:::  tab, comma, semicolon, caret, asterisk, question mark, or exclamation point.
:::
:::call RETURN  init
:::  Defines return.LF and return.CR variables. Not required, but should be
:::  called once at the top of your script to improve performance of RETURN.
:::
:::return /?
:::  Displays this help
:::
:::return /V
:::  Displays the version of RETURN.BAT
:::
:::
:::RETURN.BAT was written by Dave Benham and DosTips user jeb, and was originally
:::posted within the folloing DosTips thread:
:::  http://www.dostips.com/forum/viewtopic.php?f=3&t=6496
:::
::==============================================================================
::  If the code below is copied within a script, then the :return.special code
::  can be removed, and your script can use the following calls:
::
::    call :return   ValueVar  ReturnVar  [ErrorCode]
::
::    call :return.init
::

:return  ValueVar  ReturnVar  [ErrorCode]
:: Safely returns any value(s) across the ENDLOCAL barrier. Default ErrorCode is 0
setlocal enableDelayedExpansion
if not defined return.LF call :return.init
if not defined return.CR call :return.init
set "return.normalCmd="
set "return.delayedCmd="
set "return.vars=%~2"
for %%a in (%~1) do for /f "tokens=1*" %%b in ("!return.vars!") do (
  set "return.normal=!%%a!"
  if defined return.normal (
    set "return.normal=!return.normal:%%=%%3!"
    set "return.normal=!return.normal:"=%%4!"
    for %%C in ("!return.LF!") do set "return.normal=!return.normal:%%~C=%%~1!"
    for %%C in ("!return.CR!") do set "return.normal=!return.normal:%%~C=%%2!"
    set "return.delayed=!return.normal:^=^^^^!"
  ) else set "return.delayed="
  if defined return.delayed call :return.setDelayed
  set "return.normalCmd=!return.normalCmd!&set "%%b=!return.normal!"^!"
  set "return.delayedCmd=!return.delayedCmd!&set "%%b=!return.delayed!"^!"
  set "return.vars=%%c"
)
set "err=%~3"
if not defined err set "err=0"
for %%1 in ("!return.LF!") do for /f "tokens=1-3" %%2 in (^"!return.CR! %% "") do (
  (goto) 2>nul
  (goto) 2>nul
  if "^!^" equ "^!" (%return.delayedCmd:~1%) else %return.normalCmd:~1%
  if %err% equ 0 (call ) else if %err% equ 1 (call) else cmd /c exit %err%
)

:return.setDelayed
set "return.delayed=%return.delayed:!=^^^!%" !
exit /b

:return.special
@if /i "%~1" equ "init" goto return.init
@if "%~1" equ "/?" (
  for /f "tokens=* delims=:" %%A in ('findstr "^:::" "%~f0"') do @echo(%%A
  exit /b 0
)
@if /i "%~1" equ "/V" (
  for /f "tokens=* delims=:" %%A in ('findstr /rc:"^::RETURN.BAT Version" "%~f0"') do @echo %%A
  exit /b 0
)
@>&2 echo ERROR: Invalid call to RETURN.BAT
@exit /b 1


:return.init  -  Initializes the return.LF and return.CR variables
set ^"return.LF=^

^" The empty line above is critical - DO NOT REMOVE
for /f %%C in ('copy /z "%~f0" nul') do set "return.CR=%%C"
exit /b 0
