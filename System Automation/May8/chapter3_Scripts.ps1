#chapter 3 practice 

#1 Can you find any cmdlets capable of converting other cmdlets’ output into HTML?
ConvertTo-Html

#2 Are there any cmdlets that can redirect output into a file, or to a printer
Out-File #output into a file
Out-Printer #output to a priter

#3 How many cmdlets are available for working with processes? (Hint: Remember that cmdlets all use a singular noun.)
$gcmObj = gcm -Noun "*process*"
$gcmObj.Length

#4 What cmdlet might you use to write to an event log?
gcm "*eventlog*"
New-EventLog # <- this is the one

#5 You’ve learned that aliases are nicknames for cmdlets; what cmdlets are available to create, modify, export, or import aliases?
gcm "*alias*"
New-Alias
Set-Alias
Export-Alias
Import-Alias

#6 Is there a way to keep a transcript of everything you type in the shell, and save that transcript to a text file?
gcm "*transcript*"
Start-Transcript
Stop-Transcript

#7 It can take a long time to retrieve all of the entries from the Security event log. How can you get just the 100 most recent entries?
Get-EventLog system -Newest 100

#8 Is there a way to retrieve a list of the services that are installed on a remote computer?
Get-Service -Name ServiceControllerName

#9 Is there a way to see what processes are running on a remote computer?
Get-Process -Name computerName

#10 Examine the help file for the Out-File cmdlet. The files created by this cmdlet default to a width of how many characters? 
#Is there a parameter that would enable you to change that width?
#default width is 80 characters
out-file -FilePath filePath -width newWidth

#11 By default, Out-File will overwrite any existing file that has the same filename
#as what you specify. Is there a parameter that would prevent the cmdlet from
#overwriting an existing file?
out-file FilePathName -Append

#12 How could you see a list of all aliases defined in PowerShell?
Get-Alias

#13 Using both an alias and abbreviated parameter names, what is the shortest command line you could type to retrieve a list of running processes from a computer named Server1?
Get-Alias -Definition Get-Process
ps -c Server1

#14 How many cmdlets are available that can deal with generic objects? (Hint:
#Remember to use a singular noun like “object” rather than a plural one like
#“objects”).
get-command -noun object

#15 This chapter briefly mentioned arrays. What help topic could tell you more about them?
help *array* 



