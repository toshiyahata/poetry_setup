@echo off

chcp 65001 > nul

@REM このフォルダに移動
cd /d %~dp0


call poetry run python src\main.py 123 456

@REM run 引数1, 引数2　の場合
@REM call poetry run python src\main.py  "%1" "%2"


echo %ERRORLEVEL%

exit /b %ERRORLEVEL%
pause