for /F "tokens=*" %%a in ('type %FileName%') do call :Foo %%a
goto End

:Foo
set z=%1
echo %z%
echo %1
goto :eof

:End