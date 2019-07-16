echo off

echo Killing server...


echo.
echo.

cd server\settings

(echo 1)> shutdownMode.ini
(echo 1)> forceShutdownMode.ini


echo Waiting 4 seconds for server to quit...

ping localhost -n 5 > nul


(echo 0)> shutdownMode.ini
(echo 0)> forceShutdownMode.ini


cd ..\..

