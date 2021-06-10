@echo off
	echo **************************************************************************************************
	echo Program started! 
	echo Force start 0.0.1
	echo Description:
	echo This simply bypasses all security and force starts any program you type in!
	echo Usage: Please type the directory to the executable and then type the file name.
	echo For Example: H:/Desktop/Halo/Halo.exe
:restart
	set /p id="Enter File Name: "
	set startmsg=Starting %id%...
	echo %startmsg%
	start %id%
:choice
	set /P c=Do you want to open another program[Y/N]?
		if /I "%c%" EQU "Y" goto :restart
		if /I "%c%" EQU "N" goto :end
goto :choice

	:end
		set end=Exiting...
		echo %end%
		timeout 3
		call "%~dp0\diropen.bat"
