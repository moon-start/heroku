@echo OFF && chcp 65001



set QQ=%1
set AA=%2


if     defined AA ( 

echo.
echo.
echo.開始上傳..!!
git add .
git commit -m "add heroku"
git push -f  heroku master

echo.已經完成!
pause
goto _end
)

if not defined QQ ( heroku login && pause>nul &&  %~dpnx0  OK ) else  ( 

git init

echo.
echo.
echo.設定節點..!!
heroku git:remote -a moon5566 && %~dpnx0  OK OK  )


:_end
chcp 950
start https://moon5566.herokuapp.com/