@echo off
g++ "%1" -o output.exe
if exist "output.exe" (
    output.exe
    del output.exe
) else (
    echo ����ʧ�ܻ���û������ output.exe
)
