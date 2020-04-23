@echo OFF 

rem && chcp 65001


rem 2; 當前目錄
set "bd=%cd%"
rem 上一層目錄
cd..
set "bbd=%cd%"


rem set CDs=%1

rem if defined CDs (echo.%CDs%) else (echo.不存在)


rem pause>nul
call %~pdnx0 %%bd:%bbd%\=%%
rem pause>nul

