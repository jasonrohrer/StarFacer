echo off

echo.
echo Committing and pushing latest StarFacer data...
echo.


cd StarFacerData

..\PortableGit\cmd\git add -A overlays sprites objects categories animations transitions ground music sounds soundsRaw scenes faces tutorialMaps graphics otherSounds

echo.
echo.

echo Full diff:

echo.

..\PortableGit\cmd\git --no-pager diff --staged --stat overlays sprites objects categories animations transitions ground music sounds soundsRaw scenes faces tutorialMaps graphics otherSounds

echo.
echo.

echo Close window to cancel, or...
echo.

set /P commitMessage=Enter commit message:

..\PortableGit\cmd\git commit -m "%commitMessage%"

echo.
echo.


echo Commit done.  Pushing changes.

echo.
echo.


..\PortableGit\cmd\git push

echo.
echo.

pause