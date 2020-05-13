#chapter 6

#1
#Identify a cmdlet that will produce a random number
Get-Command "*random*" #look for command that contain the character random
Get-Random #then I found this command

#2
#Identify a cmdlet that will display the current date and time.
Get-Command "*date*"
Get-Date

#3
#What type of object does the cmdlet from task #2 produce? (What is the type
#name of the object produced by the cmdlet?)
Get-Date | Get-Member
#answer: It is a System.DateTime type object

#4
#Using the cmdlet from task #2 and Select-Object, display only the current day
#of the week in a table
Get-Date | Select-Object DayOfWeek

#5
#Identify a cmdlet that will display information about installed hotfixes
Get-Command "*hotfix*"
Get-HotFix

#6
#Using the cmdlet from task #5, display a list of installed hotfixes. Sort the list by
#the installation date, and display only the installation date, the user who
#installed the hotfix, and the hotfix ID.
Get-HotFix | Select-Object HotFixID, InstalledOn, InstalledBy | Sort-Object -Descending InstalledOn

#7
#Repeat task #6, but this time sort the results by the hotfix description, and
#include the description, the hotfix ID, and the installation date. Put the results
#into an HTML file.
Get-HotFix | Select-Object HotFixID, InstalledOn, Description | Sort-Object Description

#8
#Display a list of the 50 newest entries from the Security event log (you can use a
#different log, such as System or Application, if your Security log is empty). Sort
#the list so that the oldest entries appear first, and so that entries made at the
#same time are sorted by their index. Display the index, time, and source for
#each entry. Put this information into a text file (not an HTML file, just a plain
#text file).
Get-EventLog Security -Newest 50 | Select-Object index, TimeWritten, source | Sort-Object TimeWritten, index | Out-File -FilePath C:\Users\Administrator\Desktop\output.txt
