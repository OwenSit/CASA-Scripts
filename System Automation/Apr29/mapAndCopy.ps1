#*******************************************README*******************************************************
#this PS script is used for mapping a network drive and copy file from there to you local drive         *
#prerequisites: 1. the network path for the remote drive. 2. the absolute path for the destination path.*
#By: Songwen Xue                                                                                        *
#********************************************************************************************************

$Network_Path = "\\192.168.0.13\Share Folder"
Write-Host "your provided newwork path is $Network_Path" -ForegroundColor Red
New-SmbMapping -LocalPath * -RemotePath "$Network_Path" -Confirm | Select-String -Pattern 'LocalPath'
Remove-SmbMapping  z:, Y: -Confirm
Get-PSDrive | Select-Object Root |  {Select-String -Pattern}


