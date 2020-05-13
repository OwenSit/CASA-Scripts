#chapter 4

#1
#Create a CliXML reference file for the services on your computer. Then, change
#the status of some non-essential service like BITS (stop it if it’s already started;
#start it if it’s stopped on your computer). Finally, use Diff to compare the reference CliXML file to the current state of your computer’s services. You’ll need to
#specify more than the Name property for the comparison—does the -property
#parameter of Diff accept multiple values? How would you specify those multiple values?
Import-Clixml C:\Users\Administrator\Desktop\service # place the clixml file of the services on desktop
Get-Service "*BITS*" #search for command named BITS
Start-Service -Name "BITS" # start it if it's stopped
#compare differce of service status after starting BITS, store output in the DiffService file
diff -ReferenceObject (Import-Clixml C:\Users\Administrator\Desktop\service) -DifferenceObject (Get-Service) -Property Name, Status > C:\Users\Administrator\Desktop\DiffServices


#2
#Create two similar, but different, text files. Try comparing them using Diff. To
#do so, run something like this: Diff -reference (Get-Content File1.txt)
#-difference (Get-Content File2.txt). If the files have only one line of text
#that’s different, the command should work. If you add a bunch of lines to one
#file, the command may stop working. Try experimenting with the Diff command’s -syncWindow parameter to see if you can get the command working
#again.

#example for short difference
diff -ReferenceObject (Get-Content C:\Users\Administrator\Desktop\shortDiff1.txt) -DifferenceObject (Get-Content C:\Users\Administrator\Desktop\shortDiff2.txt) > C:\Users\Administrator\Desktop\shortDiffResult.txt

#example for long difference (which is still working lol)
diff -ReferenceObject (Get-Content C:\Users\Administrator\Desktop\longDiff1.txt) -DifferenceObject (Get-Content C:\Users\Administrator\Desktop\longDiff2.txt) > C:\Users\Administrator\Desktop\longDiffResult.txt


#3
#What happens if you run Get-Service | Export-CSV services.csv | Out-File
#from the console? Why does that happen?

#answer: a services.csv file will be generated and no object will flow into the Out-File command

#4
#Apart from getting one or more services and piping them to Stop-Service,
#what other means does Stop-Service provide for you to specify the service or
#services you want to stop? Is it possible to stop a service without using GetService at all?

#answer: we can also use the -name parameter to specify the name of the service that we want to stop


#5
#What if you wanted to create a pipe-delimited file instead of a comma-separated
#file? You would still use the Export-CSV command, but what parameters would
#you specify?

#answer: we can use the -Delimiter parameter in the Export-CSV command

#6
#Is there a way to eliminate the # comment line from the top of an exported CSV
#file? That line normally contains type information, but what if you wanted to
#omit that from a particular file?

#answer: we can use the -NoTypeInformation parameter in the Export-CSV command

#7
#Export-CliXML and Export-CSV both modify the system, because they can create and overwrite files. What parameter would prevent them from overwriting
#an existing file? What parameter would ask you if you were sure before proceeding to write the output file?

#answer: we can use the -Append parameter to prevent both Export-CliXml and Export-CSV command from overwriting the output files
#        the -Confirm parameter will prompt us to confirm the procedures

#8
#Windows maintains several regional settings, which include a default list separator. On U.S. systems, that separator is a comma. How can you tell Export-CSV to
#use the system’s default separator, rather than a comma?
(Get-Culture).TextInfo.ListSeparator # this command is used to check out what is the system's default separator

#answer: we can use the -UseCulture parameter to separate the data with the system's default separator 







