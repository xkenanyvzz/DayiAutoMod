@echo off
title DayiAutoMod Build
echo ========================================
echo        DayiAutoMod - Maven Build
echo ========================================
echo.

where mvn >nul 2>nul
if errorlevel 1 (
    echo [HATA] Maven bulunamadi.
    echo IntelliJ IDEA icindeki Maven ile veya Maven'i PATH'e ekleyerek tekrar deneyin.
    pause
    exit /b 1
)

where java >nul 2>nul
if errorlevel 1 (
    echo [HATA] Java bulunamadi.
    echo Java 17 veya daha yeni bir JDK kurup PATH'e ekleyin.
    pause
    exit /b 1
)

echo [1/2] Proje derleniyor...
call mvn clean package
if errorlevel 1 (
    echo.
    echo [HATA] Derleme basarisiz.
    pause
    exit /b 1
)

echo.
echo [2/2] JAR hazir:
echo %CD%\target\DayiAutoMod-1.0.0.jar
echo.
pause
