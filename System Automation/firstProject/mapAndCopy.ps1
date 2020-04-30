#*******************************************README*******************************************************
#this PS script is used for mapping a network drive and copy file from there to you local drive         *
#prerequisites: 1. the network path for the remote drive. 2. the absolute path for the destination path.*
#By: Songwen Xue                                                                                        *
#Ver 0.1                                                                                                *
#********************************************************************************************************

#Mapping procedure:
#take remote drive address from user:
$Network_Path = Read-Host -Prompt "Please input the path for the network drive"

#confirmation:
Write-Host "your provided newwork path is" -ForegroundColor Red; write-host "$Network_Path" -foregroundcolor Green;

#assign new address for the network drive:
$Path_Letter = $(New-SmbMapping -LocalPath * -RemotePath "$Network_Path").LocalPath

#confirmation:
Write-Host "The newly assigned address is:" -ForegroundColor Red; write-host "$Path_Letter" -foregroundcolor Green;

#Copying procedure
#take destination address from user:
$Destin_Address = Read-Host -Prompt "Where do you want to copy the file(s) to"

#Confirmation:
write-host "You want to copy file to" -ForegroundColor Red; write-host "$Destin_Address" -ForegroundColor Green;

#copying the files:
Copy-Item -Path $Network_Path -Destination $Destin_Address -Recurse -Verbose

#cleaning up:
Remove-SmbMapping  $Path_Letter