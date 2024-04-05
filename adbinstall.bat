@echo off
if "%#"=="0" (
echo 未提供参数
goto : END
)

for %%i in (%*) do (
adb install %%i
)
pause


:END
echo 使用帮助
echo 用法: adbinstall [<apkfile>](安装包若干)
echo 请在执行时输入安装包路径，或者拖动安装包至此bat处显示用adbinstall.bat打开