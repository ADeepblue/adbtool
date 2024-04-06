

@echo off

::Define text as string
set str=This is a testabdc - because it can be

::Remove string
set str=%str: - because it can be=%

::Echo result
echo %str%

pause