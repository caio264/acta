@echo off
cd /d "%~dp0"
echo Abra http://localhost:8000 no navegador.
echo Pressione Ctrl+C para encerrar.
py -m http.server 8000 --bind 127.0.0.1 --directory dist
pause
