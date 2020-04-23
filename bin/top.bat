@echo OFF


rem 2; 當前目錄
set "bd=%cd%"
rem 上一層目錄
rem if no defined top (cd..)
cd ..
set "bbd=%cd%"
set top=%1
set top2=%2



rem 回到當前路徑
if defined top2 (cd %2\%top%)


if defined top (echo.%top%) else (call %~pdnx0 %%bd:%bbd%\=%%  %cd%)

