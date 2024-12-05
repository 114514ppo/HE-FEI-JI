@echo off
cd /d %~dp0
title Console

echo Welcome to Console!
echo Type "help" for help.
echo.
:loop
set /P command="Enter command: "  // 删除命令后面的多余空格
%command%
echo %command%>bin\var\command.txt  // 记录命令到文件中
pause
set command=
goto loop