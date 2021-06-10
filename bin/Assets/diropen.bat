@echo off
	echo **************************************************************************************************
	echo Title                                    Extension                    File Type
	echo ==================================================================================================
	echo forcestartProgram.bat                    .bat                         Windows Batch File
	echo --------------------------------------------------------------------------------------------------
	echo **************************************************************************************************
	echo Warning: Only put the name of the file, don't include the extension or else it will error.
	echo Tip:Type end to close this program!

		set /p id="Enter File Name: "
		if /I "%id%" EQU "end" goto :end
	set startmsg=Starting %id%...
	echo %startmsg%
	call %id%.bat

:end
echo Exiting program...
timeout 3
exit