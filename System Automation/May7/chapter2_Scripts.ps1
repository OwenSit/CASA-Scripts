#scripts for chapter 2's practice, from book "Learn Windows PowerShell In A Month Of Lunches"

#1
#Create a text file that contains the names of the files and folders in C:\Windows
#(don’t worry about including subdirectories—that would take too long). Name
#the text file MyDir.txt.
Get-ChildItem -Path C:\Windows > MyDir.txt

#2
#Display the contents of that text file.Get-Content MyDir.txt#3 #Rename the file from MyDir.txt to WindowsDir.txtRename-Item Mydir.txt WindowsDir.txt#4#Create a new folder named LabOutput—you can either do this in your Documents folder, or in the root of your C: drive.New-Item -Path ~ -Name LabOutput -ItemType "directory"#5#Copy WindowsDir.txt into the LabOutput folderCopy-Item -Path C:\Users\Administrator\WindowsDir.txt -Destination C:\Users\Administrator\LabOutput#6 #Delete the original copy of WindowsDir.txt—not the copy that you just made in
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