@echo off
Rem COLOR changes the color of the command prompt, it takes two hex digits, one for the background and one for the foreground. The chart is here: https://social.technet.microsoft.com/Forums/scriptcenter/en-US/863fd96a-16c5-466d-b864-516b049e4b5a/how-to-make-a-message-within-a-batch-file-be-shown-with-bigger-font-size-and-different-color-
title IU18-AFS (V0.0.1)
COLOR 04
type title.txt
	echo InvalidUser18 AFS
	echo AFS(Alpha Fun Stuff)
	echo **************************************************************************************************
	echo Welcome to my little library of useful things to help you procrastinate at school better!
	echo Right now the library only includes 1 thing, but I plan on extending it further.
	echo If you want you can look in the folder where all the files are and open them individually.
	echo or you can look at them here and use this to open them just to make it feel like you are hacking.
	echo List starts here:
	echo **************************************************************************************************
	echo Title                                    Extension                    File Type
	echo ==================================================================================================
	echo forcestartProgram.bat                    .bat                         Windows Batch File
	echo --------------------------------------------------------------------------------------------------
	echo **************************************************************************************************
	echo Warning: Only put the name of the file, don't include the extension or else it will error.
	set /p id="Enter File Name: "
	set startmsg=Starting %id%...
	echo %startmsg%
	call "%~dp0\Assets\%id%.bat"
	echo Fuck, error. Hold on lemme crash... I was too lazy to implement a retry function...
	timeout 5

	