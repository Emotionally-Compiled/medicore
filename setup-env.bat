@echo off
echo =======================================================
echo 🚀 Sincronizando el entorno local de Emotionally-Compiled
echo =======================================================

cd ..

:: 1. Llama a la funcion por cada repositorio que tengas
call :SyncRepo medicore-eureka-server
call :SyncRepo medicore-api-gateway
call :SyncRepo medicore-config-server
call :SyncRepo medicore-config-repo
call :SyncRepo medicore-web-app

echo =======================================================
echo ✅ Entorno sincronizado y listo para codear!
echo =======================================================
pause
exit /b

:: ---------------------------------------------------------
:: 2. La "Inteligencia" del script (Subrutina)
:SyncRepo
echo -------------------------------------------------------
IF EXIST "%~1" (
    echo 🔄 El repositorio %~1 ya existe. Buscando actualizaciones...
    cd "%~1"
    git pull origin develop
    cd ..
) ELSE (
    echo 📦 Clonando nuevo microservicio: %~1...
    git clone "https://github.com/Emotionally-Compiled/%~1.git"
)
exit /b 0