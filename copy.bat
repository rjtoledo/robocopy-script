@echo off
setlocal

REM Set the source folders you want to copy to each destination
set source_folder1=C:\Path\To\Local\Folder1
set source_folder2=C:\Path\To\Local\Folder2

REM Set the destination folders on the QNAP network drive
set destination_folder1=\\QNAP1\Path\To\Network\Folder1
set destination_folder2=\\QNAP2\Path\To\Network\Folder2

REM Use Robocopy to copy the folders and all their contents, with progress information
robocopy "%source_folder1%" "%destination_folder1%" /e /np /tee /log:copylog1.txt
robocopy "%source_folder2%" "%destination_folder2%" /e /np /tee /log:copylog2.txt

echo Folders copied successfully!
