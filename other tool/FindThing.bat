REM Thisscript is developed by 深蓝之亘，主页链接 space_bilibili.com_435022639，欢迎支持，此脚本免费获得
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
echo 正在搜索...
for %%a in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist %%a:\ (
        pushd %%a:\
        echo %%a盘:
        dir "%1" /s/b
    )
 popd   
)
)
pause
exit /b 0


:help
echo 命令提示符版本帮助
echo 请输入搜索参数,如 Findthing 1.txt / Findthing.bat 1.txt
echo 也支持cmd的正则搜索，如Findthing *.jpg / Findthing.bat *.jpg
pause
exit /b 0


:DoubleClick

set "input="
set /p "input=请输入你想要搜索的参数:如*.ico  1.txt等:" 

if "%input%"=="" (
    echo 输入不正确,即将退出
    pause
    exit /b 0
    )

echo 正在搜索...
for %%a in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist %%a:\ (
        pushd %%a:\
        echo %%a盘:
        dir "%input%" /s/b
    )
 popd   
)

echo 是否退出?退出Y/否N
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

echo 输入不正确,即将退出
pause
exit
