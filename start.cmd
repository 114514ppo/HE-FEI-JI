@echo off
cd %~dp0
title HE FEI JI

rem ȷ������ļ��д���
mkdir bin\var 2>nul

:bat
set /P input=�Ƿ�ͬ���û�Э�飬����Yȷ�ϣ�����N�˳�������help�鿴�û�Э�飬������:
echo %input% > bin\var\input.txt

if /I "%input%"=="Y" (
    echo ͬ���û�Э��
    :io
    set /P io=�Ƿ���Ҫ�򿪿���̨������Yȷ�ϣ�����N������������:
    echo %io% > bin\var\io.txt

    if /I "%io%"=="Y" (
        echo �򿪿���̨
        start bin\Console.bat
    ) else if /I "%io%"=="N" (
        echo ��������̨
    ) else (
        echo �����������������
        goto io
    )

    rem ���� Java ����
    java -jar "artifacts/HE_FEI_JI_JAR/HE FEI JI.jar"
    pause

) else if /I "%input%"=="N" (
    echo �˳�����
    exit

) else if /I "%input%"=="help" (
    type "bin\�û�Э��.txt"
    set input=null
    goto bat
) else (
    echo �����������������
    goto bat
)