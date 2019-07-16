echo off

echo "Pulling changes from remote server..."

echo.
echo.

cd StarFacerData

..\PortableGit\cmd\git pull


echo.
echo.


..\PortableGit\bin\bash ..\clearCaches.sh


cd ..

echo.
echo.

echo Done.

echo.
echo.

pause
