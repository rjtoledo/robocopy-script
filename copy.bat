@echo off
setlocal

REM Set the source folder you want to copy
set source_folder=C:\Path\To\Local\Folder

REM Set the destination folder on the QNAP network drive
set destination_folder=\\QNAP\Path\To\Network\Folder

REM Use Robocopy to copy the folder and all its contents, with progress information
robocopy "%source_folder%" "%destination_folder%" /e /eta /tee /log:copylog.txt

echo Folder copied successfully!
