@echo off && chcp 65001

echo.
rem #############################################  set /p A="輸入專案 : "
if not  defined top (call top)
echo.
set    A=%top%

rem set /p B="分支 : "
set B=%1

echo.


cd %userprofile%\Desktop\
rem git clone git@github.com:moon-start/%A%.git


cd %A%
rem 加快
git config --global https.proxy 'socks5://127.0.0.1:1080' 
git config --global http.proxy  'socks5://127.0.0.1:1080'



rem  建立一個空的...(清空歷史)
git checkout --orphan %B%
git add .
rem  comm時...會切換至 分支
git commit -m  %B%


rem 建立本端的分支節點(沒上傳)
rem git branch -f HHH01  b47672e
rem 新增...恢復
git checkout master

rem 注意 %A% 如果有$...會失敗
rem 本端分支:遠端分支
git push %A% %B%:%B%

rem 切回原本的
git checkout master
git branch -D %B%



rem 停止
git config --global --unset https.proxy
git config --global --unset http.proxy


echo.
echo.完成!!
rem pause>nul