@echo off  &setlocal enabledelayedexpansion



set name=heroku.txt


rem  啟動一次...
IF EXIST %userprofile%\!name! (




rem 讀取
cd %userprofile%
FOR /F "tokens=1,2 delims==" %%i IN (Path.ini) DO (
set %%i=%%j
rem echo.%%i  = %%j


if exist %userprofile%\%%i.txt (
rem 儲存 Path 總共變數
if not defined AQQ (set  AQQ=%%j) else (set AQQ=!AQQ!%%j)
) 


) 


) ELSE (

rem 表次已經設定過..直接讀取..Path.ini就好
echo.yes>%userprofile%\!name!

rem 紀錄在 Path.ini..
rem 注意 npn..要和產生的 npm.txt 名字一樣
echo.heroku=%~dp0bin;>>%userprofile%\Path.ini

call %~dpnx0
exit
)

setx Path "!AQQ!"

exit
rem 使用說明書
rem 刪除 Path.ini ..必須要和 name 一起刪除
rem 設定產生檔

rem set name=npm.txt
rem 必須 echo.npm=%~dp0bin;>>%userprofile%\Path.ini
rem 必須 npn..要和產生的 npm.txt 名字一樣
rem 設定名稱