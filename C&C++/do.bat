@echo off
g++ "%1" -o output.exe
if exist "output.exe" (
    output.exe
    del output.exe
) else (
    echo 编译失败或者没有生成 output.exe
)
