#*******************************************README*******************************************************
#this PS script is used for mapping a network drive and copy file from there to you local drive         *
#prerequisites: 1. the network path for the remote drive. 2. the absolute path for the destination path.*
#By: Songwen Xue                                                                                        *
#Ver 0.2                                                                                                *
#********************************************************************************************************

#Mapping procedure:
#take remote drive address from user:
Write-Host "Please provide the path for the network drive:" -ForegroundColor Cyan
$Network_Path = Read-Host 

#confirmation:
Write-Host "Your provided remote folder path is:`n$Network_Path`n`nAre you sure you want to proceed? :(Y/y)es, (N/n)o" -foregroundcolor cyan;
$confirmation = Read-Host #used to store the confirmation message
while(($confirmation -ne 'Y') -or ($confirmation -ne 'y')){
    if(($confirmation -ne 'N') -or ($confirmation -ne 'n')){
        Write-Host "Input not recoginized, please try again!`n" -ForegroundColor Red; Write-Host "Your provided remote folder path is:`n$Network_Path`n`nAre you sure you want to proceed? (Y/y)es, (N/n)o" -foregroundcolor cyan
        $confirmation = Read-Host
    }
    else{
        Write-Host "Please provide the path for the network drive:" -foregroundcolor cyan;
        $Network_Path = Read-Host
        Write-Host "Your provided remote folder path is:`n$Network_Path`n`nAre you sure you want to proceed? (Y/y)es, (N/n)o" -foregroundcolor cyan;
        $confirmation = Read-Host
    }
}


#assign new address for the network drive:
$Path_Letter = $(New-SmbMapping -LocalPath * -RemotePath "$Network_Path").LocalPath

#confirmation:
Write-Host "The newly assigned address is: $Path_Letter" -foregroundcolor cyan;

#Copying procedure
#ask for destination address from user:
Write-Host "Where do you want to copy the file(s) to:" -ForegroundColor Cyan
$Destin_Address = Read-Host 

#Confirmation:
write-host "You want to copy file to`n$Destin_Address`n`nAre you sure you want to proceed? :(Y/y)es, (N/n)o" -ForegroundColor cyan;
$confirmation = Read-Host #used to store the confirmation message
while(($confirmation -ne 'Y') -or ($confirmation -ne 'y')){
    if(($confirmation -ne 'N') -or ($confirmation -ne 'n')){
        Write-Host "Input not recoginized, please try again!`n" -ForegroundColor Red; Write-Host "You want to copy file to`n$Destin_Address`n`nAre you sure you want to proceed? :(Y/y)es, (N/n)o" -foregroundcolor cyan
        $confirmation = Read-Host
    }
    else{
        Write-Host "Where do you want to copy the file(s) to:" -foregroundcolor cyan;
        $Destin_Address = Read-Host
        Write-Host "You want to copy file to`n$Destin_Address`n`nAre you sure you want to proceed? :(Y/y)es, (N/n)o" -foregroundcolor cyan;
        $confirmation = Read-Host
    }
}

#copying the files:
Copy-Item -Path $Network_Path -Destination $Destin_Address -Recurse -Verbose

#notify for completion:
Write-Host "Process completed, please check destination file path for copied file(s), Thanks for using!" -ForegroundColor Green

#cleaning up:
Remove-SmbMapping  $Path_Letter