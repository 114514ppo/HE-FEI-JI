@echo off
cd /d %~dp0
title Console

echo Welcome to Console!
echo Type "help" for help.
echo.
:loop
set /P command="Enter command: "  // ɾ���������Ķ���ո�
%command%
echo %command%>bin\var\command.txt  // ��¼����ļ���
pause
set command=
goto loop