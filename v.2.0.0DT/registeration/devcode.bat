@echo off
cls
color B5
title Developers Registeration Code Applicance- - DRCA
:register
cls
echo Welcome to registeration to be a developers!
echo.
echo We will ask you some questions.
echo.
echo Please don't lie. Tell the truth.
echo.
pause
goto :questions
:questions
cls
echo 1) do you use risk remover often?
echo.
echo Y or N
echo.
set /p number1=select:

if %number1%==Y goto :2nd
if %number1%==N goto :end
if not %number1%==Y goto :err1
if not %number1%==N goto :err1

:2nd
cls
echo 2) do you know basic batch programming?
echo.
echo Y or N
echo.
set /p number2=select:

if %number2%==Y goto :suc
if %number2%==N goto :end
if not %number2%==Y goto :err2
if not %number2%==N goto :err2

:end
cls
echo Sorry, you doesn't seem to meet our requirments.
echo.
echo Thank you for spending time here!
echo.
echo :)
echo.
pause
exit

:err1
cls
echo please type only Y or N
pause
goto :questions

:err2
cls
echo please type only Y or N
pause
goto :2nd

:suc
cls
echo Sucess!
echo.
echo This is your code 
echo.
echo DEVFOW
echo.
echo Send this code to my email: kornkaobat@gmail.com
echo.
echo And you will recieve the developers
echo.
echo access to the devtest program!
echo.
echo Thank you!
echo.
pause
exit




