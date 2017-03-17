@echo off

color B5
REM Risk Remover Does not warranty that this system won't broke while using this tool.
REM Use This tool AT YOUR OWN RISK!
REM Also, I cant warranty you that this tool would remove all the malware in the system.
REM Please donate me a list of malwares names (EX:ILOVEYOU.vbs) to help me add all of this to the Risk Remover's Database.
REM Report bugs/issues to me at the riskremove.blogspot.com
REM Later on this year I will create a Bugs/Issues Report page in that blog.
REM But now report it to the comments zone below any page.
REM DON'T EVER EDIT THIS PROGRAM UNLESS YOU KNOW WHAT YOU ARE DOING! 
:pathprog

title Risk Remover Program Path
echo please specify path of this program down here
echo PLEASE ENTER THE REAL RISK REMOVER PROGRAM PATH 
echo TO AVOID THE PROGRAM'S CRASH
echo example C:\Users
set /p pathprog=path:

goto :checkfiles1

:checkfiles1

title Checking Files...
echo Checking Files...
REM //DONT MESS HERE//
if exist %pathprog%\EULA.txt goto :checkfiles2
if not exist %pathprog%\EULA.txt goto :404/3
REM //DONT MESS HERE//

:checkfiles2

echo Checking Files...
REM //DONT MESS HERE//
if exist %pathprog%\Notes.txt goto :Eula
if not exist %pathprog%\Notes.txt goto :404/3
REM //DONT MESS HERE//

:Eula

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

title -----Risk Remover v.2.0.0-----
echo Risk Remover:Program version 2.0.0 Database version 1.1.2014
pause
goto :menu2
:menu2

echo Creation of Korn Studio (Antivirus) .Inc
pause
goto:menu
:menu

title MENU
echo Risk Remover Main Menu
echo.
echo Computer's Date
date /T
echo.
echo Computer's Time
time /T
echo. 
echo 1)Quick scan
echo 2)Full Scan
echo 3)Upgrade
echo 4)Protection (Future program update)
echo 5)Release Notes
echo 6)exit
echo 7)Refresh Date and Time
set /p number1=select:

if %number1%==1 goto :TS
if %number1%==2 goto :FS
if %number1%==3 goto :IU
if %number1%==4 goto :FMN
if %number1%==5 start Notes.txt&&goto :menu
if %number1%==6 exit
if %number1%==7 goto :menu
if not %number1%==1 goto :404
if not %number1%==2 goto :404
if not %number1%==3 goto :404 
if not %number1%==4 goto :404
if not %number1%==5 goto :404
if not %number1%==6 goto :404
if not %number1%==7 goto :404
:QS

title Scanner W0rking....
echo Scanning Risk...
REM //Start Database Over Here//
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
:in1

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
  
echo finshed!
shutdown -r -t 100 -c "It needs to be reboot for complete removal.Save and close all programs before rebooting."
exit

:ni1

title clean.
echo YAHOO!!!Your computer is not infected!!!
pause
goto :menu

:FS

title not avalible.:(
echo Full scan is not in this version.But you can do Quick scan.
pause
goto :menu

:IU

title Upgrade site
start rrut.bat
exit 

:FMN

title Protection Info.
echo Protection : Enabled
echo Auto scan :NITH*
echo Auto Upgrade :NITH*
echo.
echo *Not avalible this version.
pause
goto :menu

:404

echo 404:Bad Command
pause
goto :menu 

:404/2

echo 404:Bad Command
pause
goto :Eula

:404/3

echo failed to load.File Missing.
pause

echo creating error log...
echo Failed to load Missing File Error >> error404.txt
echo Risk Remover v 2.0.0 >> error404.txt
echo Database version v 1.1.2014 >> error404.txt

echo Finshed!
pause
exit

:TS

REM Copyright 2014 BatchProg
echo please specify path to scan down here
echo example C:\Users
echo AND PLEASE DONT ENTER SOMETHING THAT ISNT A COMPUTER PATH
echo IF YOU ENTER SOMETHING THAT ISNT A COMPUTER PATH THE PROGRAM WILL CRASH
set /p pathscan=path:

goto :QS


