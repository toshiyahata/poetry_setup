@echo off

chcp 65001 > nul

@REM pythonバージョン指定
call pyenv local 3.11

@REM 仮想環境構築
call poetry install

@REM 仮想環境の場所を表示
call poetry env info

echo %ERRORLEVEL%

exit /b %ERRORLEVEL%
pause