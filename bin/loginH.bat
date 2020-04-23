@echo OFF 

set QQ=loginH-
if not defined QQ ( goto _qq )




rem  dir  |  clip
rem  clip   <  XXX.txt



dir /b  %~dp0\*%QQ%*  > %~dp0\list.txt
echo.
findstr /n  "." %~dp0\list.txt

echo.
echo.
set /p A= in Copy (ID) ?:  

set start=%A%
echo.
rem ##########set /p B=in (第一個參數) ?:  
rem cls
set "lines=1"
set/a i=-1,start-=1
set "ok=" 
for /f "delims=" %%a in ('more/e +%start% ^< %~dp0\list.txt') do (
set/a i+=1 & for /f %%z in ('echo/%%i%%') do (
if "%%z"=="%lines%" set ok=1
)

rem if not defined ok echo.%%a | clip
if not defined ok call %%a


rem  選擇的指令..重新值行
rem if not defined ok call  XXX
)





