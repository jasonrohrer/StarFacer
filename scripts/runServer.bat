echo off

echo Starting server...


echo.
echo.

cd server


mkdir categories
mkdir objects
mkdir transitions
mkdir tutorialMaps

xcopy /s /i ..\StarFacerData\categories categories\
xcopy /s /i ..\StarFacerData\objects objects\
xcopy /s /i ..\StarFacerData\transitions transitions\
xcopy /s /i ..\StarFacerData\tutorialMaps tutorialMaps\

copy ..\StarFacerData\dataVersionNumber.txt .\


OneLifeServer

echo.
echo.

echo Server process finished.

echo.
echo.


rmdir /Q /S categories

rmdir /Q /S objects

rmdir /Q /S transitions

rmdir /Q /S tutorialMaps

del dataVersionNumber.txt


cd ..