﻿#1
#Create a text file that contains the names of the files and folders in C:\Windows
#(don’t worry about including subdirectories—that would take too long). Name
#the text file MyDir.txt.
Get-ChildItem -Path C:\Windows > MyDir.txt

#2
#Display the contents of that text file.
#LabOutput.
Remove-Item C:\Users\Administrator\WindowsDir.txt

#7
#Display a list of running processes
Get-Process

#8
#Redirect a list of running processes into a file named Procs.txt
Get-Process > Procs.txt

#9
#Move Procs.txt into the LabOutput folder if it isn’t in there already
Move-Item -Path C:\Users\Administrator\Procs.txt -Destination C:\Users\Administrator\LabOutput

#10
#Display the contents of Procs.txt so that only one page displays at a time
#(remember the trick with | more).
Get-Content -Path C:\Users\Administrator\LabOutput\Procs.txt | more