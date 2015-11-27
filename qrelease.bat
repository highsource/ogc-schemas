setlocal
echo Setting JAVA_HOME to %JAVA6_HOME%.
set JAVA_HOME=%JAVA6_HOME%

echo Setting new version to %2.
rem pause
call mvn versions:set -Pall -DnewVersion=%2
echo Version was set to %2.
rem pause
call mvn versions:commit -Pall
echo Version %2 was committed.
rem pause

echo Performing a full clean build.
rem pause
call mvn clean install -DperformRelease -Pall
echo Full clean build completed.
rem pause


echo Checking in version %2.
rem pause
git commit -a -m "Version %2"
echo Version %2 was checked in.
rem pause

echo Pushing version %2.
rem pause
git push origin master
git push --tags origin master
echo Version %2 was pushed.
rem pause

endlocal