@echo off
if "%#"=="0" (
echo δ�ṩ����
goto : END
)

for %%i in (%*) do (
adb install %%i
)
pause


:END
echo ʹ�ð���
echo �÷�: adbinstall [<apkfile>](��װ������)
echo ����ִ��ʱ���밲װ��·���������϶���װ������bat����ʾ��adbinstall.bat��