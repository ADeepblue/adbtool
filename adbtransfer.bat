@echo off
REM COUNT NUM
set "Count=0"
set "TargetPath=/sdcard/test"

for %%i in (%*) do (
    set /a Count+=1
)





echo %Count%

if %Count%==0 (
    
    REM input parameter equal to 0
    REM echo "Count%=0" 
    
    goto :help
) else (
    
    REM Input parameter is greater than 0
    
    for %%i in (%*) do (
        echo %%i %%~i
        for %%a in ("%%~i") do set "b=%%~aa"

    echo Line24 %b%

    if defined b (
    if "%b:~0,1%"=="d" (
        
        REM parameter is a directory.
        

        for %%f in ("%%~xni\*") do (
            
            echo adb push "%%~f" "%TargetPath%/%%~nxf"

        )

        ) else (

        REM echo %%~xni
        
        adb push "%%i" "%TargetPath%/%%~xni"

        REM parameter is a file.
        ) 
        )
        
)
)

adb shell find /sdcard/test/* -type f
REM only for test
REM adb shell rm -rf /sdcard/test


pause

exit /b 0

:help
echo �뽫Ҫ������ļ��Բ�������ʽ���ڽű��󷽣���adbtransfer.bat "file1" "file2"..."fileN"
