@echo off
title System Check

:: Color the screen
color 0a

:: Display opening message
echo Starting System Check...
echo Please wait while we perform critical system diagnostics.

:: Simulate a scan with a delay
ping 127.0.0.1 -n 2 > nul
echo Scanning for viruses... 0% complete
ping 127.0.0.1 -n 2 > nul
echo Scanning for viruses... 25% complete
ping 127.0.0.1 -n 2 > nul
echo Scanning for viruses... 50% complete
ping 127.0.0.1 -n 2 > nul
echo Scanning for viruses... 75% complete
ping 127.0.0.1 -n 2 > nul
echo Scanning for viruses... 100% complete

:: Fake virus found
ping 127.0.0.1 -n 2 > nul
echo WARNING: Potential threat detected!
ping 127.0.0.1 -n 2 > nul
echo Virus: "Troll.exe" located in system32
ping 127.0.0.1 -n 2 > nul

:: Show a fake response
echo Attempting to remove virus...
ping 127.0.0.1 -n 3 > nul
echo Virus removed successfully!

:: Display funny message
echo Congratulations! Your system is now 100% secure... from imaginary viruses.
echo Just kidding, there were never any viruses. Enjoy your day!

:: Pause the batch to allow the user to read the message
pause
