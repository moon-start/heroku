@echo OFF & chcp 65001

set CDs=%1
set CDss=%2

rem 只有..............%1..才會移動目錄
if not defined CDs ( 
rem 當前目錄
set "bd=%cd%"
rem echo.%bd%

rem 上一層目錄
cd..
set "bbd=%cd%"
rem echo.%bbd%

) else ( cd heroku )



rem 只有..............%2..才會移動目錄
if not defined CDss ( 
rem 當前目錄
set "bd=%cd%"
rem echo.%bd%

rem 上一層目錄
cd..
set "bbd=%cd%"
rem echo.%bbd%

) else ( cd heroku )



rem 如果是第一次..才會不存在
rem ..
if defined CDs (   

if not defined CDss ( call %~pdnx0 XXX %%bd:%bbd%\=%% ) else ( echo.%CDss% )   

) else ( call %~pdnx0 %%bd:%bbd%\=%% %cd% )








