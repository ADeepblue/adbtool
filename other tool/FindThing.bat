REM Thisscript is developed by ����֮ب����ҳ���� space_bilibili.com_435022639����ӭ֧�֣��˽ű���ѻ��
@echo off

set "ParameterNotIn="
set "ParameterHelp="


if "%*" == "" (
    set "ParameterNotIn=1"
)
if "%*" == "--help" (
    set "ParameterNotIn=1"
    set "ParameterHelp=1"
)
if "%*" == "-h" (
    set "ParameterNotIn=1"
    set "ParameterHelp=1"
)


if  defined ParameterNotIn (
    REM echo "Count%=0" 
    set "ParameterNotIn="
    if defined ParameterHelp (
        set "ParameterHelp="
        goto :help

    ) else (
        goto:DoubleClick
    )

) else (
echo ��������...
for %%a in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist %%a:\ (
        pushd %%a:\
        echo %%a��:
        dir "%1" /s/b
    )
 popd   
)
)
pause
exit /b 0


:help
echo ������ʾ���汾����
echo ��������������,�� Findthing 1.txt / Findthing.bat 1.txt
echo Ҳ֧��cmd��������������Findthing *.jpg / Findthing.bat *.jpg
pause
exit /b 0


:DoubleClick

set "input="
set /p "input=����������Ҫ�����Ĳ���:��*.ico  1.txt��:" 

if "%input%"=="" (
    echo ���벻��ȷ,�����˳�
    pause
    exit /b 0
    )

echo ��������...
for %%a in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist %%a:\ (
        pushd %%a:\
        echo %%a��:
        dir "%input%" /s/b
    )
 popd   
)

echo �Ƿ��˳�?�˳�Y/��N
set /p "input="

set "intput=%input: =%"
if "%input%"=="Y" (
    exit /b 0
    )
if "%input%"=="y" (
    exit /b 0
    )    
if "%input%"=="N" (
    goto:DoubleClick
)
if "%input%"=="n" (
    goto:DoubleClick
)

echo ���벻��ȷ,�����˳�
pause
exit
