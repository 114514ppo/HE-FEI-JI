@echo off
cd %~dp0
title HE FEI JI

rem 确保输出文件夹存在
mkdir bin\var 2>nul

:bat
set /P input=是否同意用户协议，输入Y确认，输入N退出，输入help查看用户协议，请输入:
echo %input% > bin\var\input.txt

if /I "%input%"=="Y" (
    echo 同意用户协议
    :io
    set /P io=是否需要打开控制台，输入Y确认，输入N跳过，请输入:
    echo %io% > bin\var\io.txt

    if /I "%io%"=="Y" (
        echo 打开控制台
        start bin\Console.bat
    ) else if /I "%io%"=="N" (
        echo 跳过控制台
    ) else (
        echo 输入错误，请重新输入
        goto io
    )

    rem 启动 Java 程序
    java -jar "artifacts/HE_FEI_JI_JAR/HE FEI JI.jar"
    pause

) else if /I "%input%"=="N" (
    echo 退出程序
    exit

) else if /I "%input%"=="help" (
    type "bin\用户协议.txt"
    set input=null
    goto bat
) else (
    echo 输入错误，请重新输入
    goto bat
)