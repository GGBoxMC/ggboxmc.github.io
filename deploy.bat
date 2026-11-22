@echo off
chcp 65001 > nul
echo ========================================================
echo   GGBox Launcher Web Sitesi - GitHub'a Yukleniyor...
echo ========================================================
echo.

cd /d "%~dp0"
set "PATH=%LOCALAPPDATA%\Programs\MinGit\cmd;%PATH%"

echo [1/2] GitHub'a gonderiliyor (Push)...
echo Eger tarayici acilirsa lutfen GitHub girisinizi onaylayin.
echo.

git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================================
    echo   BASARILI! Site dosyalari GitHub'a yuklendi.
    echo ========================================================
    echo.
) else (
    echo.
    echo [HATA] Yukleme sirasinda bir sorun olustu.
    echo Lutfen GitHub oturumunuzu kontrol edin.
)

pause
