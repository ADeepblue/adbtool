@echo off
REM COUNT NUM
set "Count=0"
set "TargetPath=/sdcard/test"

for %%i in (%*) do (
    set /a Count+=1
)





echo %Count%

if %Count%==0 (
    REM echo "Count%=0" 
    goto :help
) else (

    echo Line19

    for %%i in (%*) do (
        echo %%i %%~i
        for %%a in ("%%~i") do set "b=%%~aa"

    echo Line24 %b%

    if defined b (
    if "%b:~0,1%"==d (
        
        REM parameter is a directory.
        

        for %%f in ("%%~xni\*") do (
            
            adb push "%%~f" "%TargetPath%/%%~nxf"

        )

        ) else (

        echo %%~xni
        
        echo adb push "%%i" "%TargetPath%/%%~xni"

        REM parameter is a file.
        ) 
        )
        
)
)






pause

exit /b 0

:help
echo 请将要传输的文件以参数的形式附在脚本后方，如adbtransfer.bat "file1" "file2"..."fileN"
